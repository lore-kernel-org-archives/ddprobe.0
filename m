Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ACD29A1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762396194; cv=none; b=rt8IDXn5eyCKQkGu/DiniMkyeOB0IlEfvDc6tuigUPJnuOpNBhPIeRbU3Sh+6p2e/QtObCrzXtifomdTnCHl7+K44PxegWSacrYVABut/ADkYoVT4Yesi6cN5iv/+bmw+fbMvGg5HwI6yrFWH81rYZbhJrlewKCyhfBYekHS0Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762396194; c=relaxed/simple;
	bh=1Z00HHN1h1bDOCRuekPiVxGoqaRYfsCdcHsZUJwwcno=;
	h=To:Subject:From:Message-Id:Date; b=BQUV7zmsQIfiH5qtkLjwL7u1CHh5MmXEGPfSgP6bQNVsA5fOhsk2vihKkJYdz3L2cFbEsxaNp+j/PI8yr2p1uQwRRSa6QbTMVSZdqJbQg/ZtyluxTW//yK2mzjQeed3hZhloUiU09zQcIRkil5UPdTi4N0FevIqwvp2EWm2WnPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmO5VG6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmO5VG6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB86C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762396193;
	bh=1Z00HHN1h1bDOCRuekPiVxGoqaRYfsCdcHsZUJwwcno=;
	h=To:Subject:From:Date:From;
	b=dmO5VG6+MgYWWsmByn6qveu+rYQzRB0xjQy5ut+278jUF+ewonCexwkfnQqsi+iL+
	 jrK5pba7xKPo7sPeBsdcPlB15ZAGsQwoVMPQrE+BXKWgsC0XsU+QIza0/MbEShBXSj
	 pRPPpg7iLa4aGc866fQrsf3u/QdhC/WBbKn1quk1BeUARyhfAJMlH8gaLE0DRi40Kl
	 sbT0mCB29zaw1QOdmkSt+pqtIhpjVMqIuRCUBI7cgeLetSC+MBiw3DK3+X9hP4cDw9
	 6GgPSWVs5Ag15Hr4szYP9jynKrct3zmgaB0JMApxNOfxRyI18fF7OtLfAoBoHTFLwJ
	 dTQMqiPrlve6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FECCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239619358.14387.2593235195533652936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8bd3b781cbfc55c4c47b7bf02b4855e9591993eae6e15b9e7cda9210439bc9c
Date: Thu, 06 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762396193
