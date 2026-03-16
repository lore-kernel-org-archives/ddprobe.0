Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95F3175A72
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773663294; cv=none; b=k2yNckRj5gzW0x9TVj5ybxP/wtN5jPMRoA3SkyufBTAtyQU2a3CbIX7b8cnVbG/+8tW4XbDlhCVsoBf8Km1HOZFL6uC9cdHAOlN5JZh3QW1hf6um57X0ibfwyye5sq8KfjfMXuM1AIMuFohOuI2/TyezY7hxswjZArEj4Jx//mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773663294; c=relaxed/simple;
	bh=2q3CtsB+qd6CP++aPkMGCk0XCDRbN99UxKi1YBTIkB4=;
	h=To:Subject:From:Message-Id:Date; b=Jkat6C0BcAzQFzMxQkUlil9K0GMc9hL8uraYTLj4wd9d1MsPO7UwoGsLx2l3qMQdubCYTOg1yduGGH4F3Q2z0awNL3NBrfT9KmtU68YaoZEk0kq229vwBwy7bMtO+fHSIbvFLBUA/EevcKLlt9BMUB/uiRJEbpntmkCleVNvLuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuH0PFI4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuH0PFI4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A7C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773663293;
	bh=2q3CtsB+qd6CP++aPkMGCk0XCDRbN99UxKi1YBTIkB4=;
	h=To:Subject:From:Date:From;
	b=GuH0PFI44akr5JeJ/JCnxJHBjwcSaWFsqMn0MIe9ZUmXuFKmuv7ByCOkGcJRW7eZQ
	 tdR87ckQitnzrdA50uzpabiR/dERNsC71g6EaAYbkLGLL/hampdBpotoeB6bOeij11
	 rOos6TGpsxNSrqYFe7amtvGben0fk7HA3wh3aUQt1C0JjjVE+u0aVsUwN1/INQhV/Y
	 /p/7w8gm4F7FfvJHVFj6jEZlR5YQtG67wWUdpjIXtrunGHfZhZsk6JTzwV943LITcw
	 J3NaiAVimcx169AYqn/6DIl+B8lXa4bH+uEGkvfF/WM09QhMruKJededSShqHQKw5/
	 cekfq3k2Wn2gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90064F4645E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177366329358.517.2575037300636268254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a146407e578f154c3150a889745e71e8695668d27de099477f11dea3ceaa23cf
Date: Mon, 16 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773663293
