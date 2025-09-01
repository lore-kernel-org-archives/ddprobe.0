Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F09D21019C
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756706994; cv=none; b=oFJwGwyK0PlONFDEjbr/n0/UXZP0mZxr3R89gb2jHBqtYaTAO+MaWXnYNPHF8OxXM1f2W0oQzOYYwFyvES63ZD2ihAVirRclWxMRfht/H8vvJXpJDD1zE2v0zGmpOTg51PdPUXIQ6RIFZ+BEjAWulgDpDXJwX1kCIbNjL0WJ4FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756706994; c=relaxed/simple;
	bh=xw5jnivlE6SwrDoxMY+zqoiESNBwWMMwbNTac+MBUM8=;
	h=To:Subject:From:Message-Id:Date; b=df/mOAsqwqK9Zsfp+YVoKHM4c7d5ucS2sawbTUcYSdX7xuv9WzNOWDVUHwmCjAWc6fsVxl0QfvVA3k2t1WNECrbVU19UDEKomCf5OwrIq2VXCZmMn3enkUbouDxHXqN7taskoQMorebzpBSyRdS8EV1+wKOTyRPmlmdT6wzp9d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egGSLCJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egGSLCJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1294C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756706993;
	bh=xw5jnivlE6SwrDoxMY+zqoiESNBwWMMwbNTac+MBUM8=;
	h=To:Subject:From:Date:From;
	b=egGSLCJLV+UdFNj/JUfPqU0WcTDXOOug5kQc2pk6UFpDEFaaXPHFxtzO2JGF8h6ah
	 jxQJfNFukJEVp2kIKKOF5gtZQljK6uLz/uFxOZanHRQ1i2Nf72bqM3qE2q3r6evHMN
	 fXo+cpTK5dzkjy3r5x9JFWheljeUO0ZRVLN3rlTnhi4EDJnodJoof9+QTnwIle7hKG
	 xbYinQx/ekbrKm8a1jrBOJXhlA8JTkmLfp1WaL5oUP1vP1/vXilFUaKzLoVWEmFXDk
	 PwchRCSoKOf8LSd9HLeoDsomRREGYK9wPk5NLVQky6Rn+tMOsp7YOShAo8iLFrpRQ/
	 +qxB+reFy08vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5CCA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670699357.8496.13765313899255045337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ca881dafc4114656f6c21b9841bda136411d0cfe3736107d524ddaf31e289b
Date: Mon, 01 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756706993
