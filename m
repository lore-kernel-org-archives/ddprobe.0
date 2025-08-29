Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD7B20B7F4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756499395; cv=none; b=bPxsOhNva+rOhQxarUhX6Jk2HM0FCYe1ZDbegNf0wT8ojBElXffu+50Ywz7nbPGYSlq7zPHKe0q36tW4/xwIkGb7LWbUtieTjaPtZiz7gVyxJdTb2Wyz8Es3fmm/GofWpyr62PLtGUoAWHEqH/mb8MEvf47FXoS/nDMC5oPLpkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756499395; c=relaxed/simple;
	bh=+K8M3zrLeasMiogxxmqhDAjNCuPdRQtMGO9X2LqC0uY=;
	h=To:Subject:From:Message-Id:Date; b=XQWj0wAso6UjF7Un4T2T+Dz1ukAcdt4HrgjM+Pn6iAkZkAtOV4oOrf1HuoXUhTXDK/rmYJmCRJZvLZ1n0kT/ZTEQoIWimuxSeg9SHHLw6RAV15pxDcmR1VUDNXEgFHcggWOHV0bsVN7baS8Rso3nwz28mkhO6niVq3I/obDTp38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bua0FZ0u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bua0FZ0u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00F4C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756499393;
	bh=+K8M3zrLeasMiogxxmqhDAjNCuPdRQtMGO9X2LqC0uY=;
	h=To:Subject:From:Date:From;
	b=Bua0FZ0uLMUna+Cn1pwAq1VPA2IFYD+ZYdbYMUI2ug78GP+MeyoZ3vgCDay+6gqd0
	 avWqRZjBSbVx7EI0cs+Vvg1NLAzrHkvqli04wgcghQASlG0X68pWrNQdrIafZ5nD5n
	 ENKFuCIeaebA7RAgjfYFVfQD7l0vPkwamYXzKC2+0LOcCAWs8ZHdkgGWYeLDzot8cJ
	 MnVe/ETfSY9uabzo18kDtK7sVLvOxW7OjG/bY3VhOePRkk5yJNliaZv7ECsgb93PWu
	 zB/DA+i0LT+LhlFQTMaj95FcyKJYMNaRVNAyXNi/O4c3jZzwpFr4SMfx5C5dUn6bqD
	 DxxtgDPs42eDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F43BCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649939357.21079.715378088437853024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc1be00fef770f9af359e24a82da39941b576e07a55af9cd0b9c4e00816e883
Date: Fri, 29 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756499393
