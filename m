Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D963A1E7A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766820234; cv=none; b=RaRCenpg2epUk4gbhPSkkyUd51Ice8sJ9QkDF1paa+MPquWsdtrXfvwoosedZ2G/bITWb5jwjc4R2l2NVKhIgI0V/6kGut9d5pBn6FwDj4nRTn1Z6FZK5xLgU8UC6/0qwgMYbYIbHfPWQu6GviODmYMUjy+VMyWS/pLxZRQhpEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766820234; c=relaxed/simple;
	bh=HzglzCxfJegbqkTlmVJLOQdokB+buHnXTQQjloPpgtk=;
	h=To:Subject:From:Message-Id:Date; b=eRwdPK0+/9ANVdMI38CNfZm2oUi0jhNeRuF2sEzWjR/6SgoDoLJdNyvqzER7+P2jIKJQtaZtvAzMQwVb/Cu6Lfbu9f5sSTzqqbaF1GTJZGR2PwrekYnVMzQrrpKTM6qOYQmY27opfwV/aBe3RM009ljLPzE7AtziNHSWYllkyxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNWTLCpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNWTLCpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3376C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766820233;
	bh=HzglzCxfJegbqkTlmVJLOQdokB+buHnXTQQjloPpgtk=;
	h=To:Subject:From:Date:From;
	b=FNWTLCpCD5XkNd/GWLnaIsScQZLuXMyqhfkmeGp2Z2t1uPeZaxGxxlh+ziQDn9vWS
	 fAh00OO2Z38mEbbiXyzZwzB32VCfTsNwsf5RlGYl/ft/gMZjVvaNRuyNrLpML/08gi
	 z0AkyEHyuK3foYNvO6czMdqV20DiGDMr+0zZQvHwpJDgPN3ego3Q0tBEofzjD2C7Xw
	 /ZQu6vV5UnV0M9s4BpC3y7xZCeKlktqfkp2m6havf7MZZKm32+aalQUQV5XQdmJUjX
	 +7/yPswSsTDGi1dDxkkYObsuYPNzB7964+gQdh2jjJIEwvfgk1ShMCnGwkfVSu46zN
	 g2eS3V08DVVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2DE8FDD0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682023358.17346.16970204292089286871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ebc8a95df4100ec0fbae015ba9cc26344e2275d5808e0cd70e75e41de83a50
Date: Sat, 27 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766820233
