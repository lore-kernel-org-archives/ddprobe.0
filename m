Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519C0331EAE
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792403434; cv=none; b=R19V79+yGvxqRAgjxLsq9M+hlt7z0VjvX4+9kVw+UtrOLPSr66t95qu8uoycFU6lTJ6H2Bp+oAcIW46zjMIEPwmW8vz685fnegRwcQ/HyvlKGfhQljU1zeBZLEZEyA8XbwnmiBjCNEZiIrA2HliWtCx5V2yU7Dlb/rVQmX1e9tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792403434; c=relaxed/simple;
	bh=xMbFWU3+FlpNLtCUiKbPY7twdLNyn6/owujkNhZuIlY=;
	h=To:Subject:From:Message-Id:Date; b=W1lDctSjZy/mwUd9g/zpD3u69kybg1KXJIGKxVa/u8uBBEJMxjiRz6X9euHkTSdyX0v3BjoByyxc/D/Rdbu7GWkcbYQMSs1VanFRj1z7M1Oa2MbBTCub+a4d6dKLtUV/XrQAy/5ybqkt1Evs/H4MPTtcFdyddWF+kIVkgCEOqyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ4ILk1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ4ILk1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D675FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792403433;
	bh=xMbFWU3+FlpNLtCUiKbPY7twdLNyn6/owujkNhZuIlY=;
	h=To:Subject:From:Date:From;
	b=YQ4ILk1R2iHhxr/uJypS9MqvJfQebLffyLPMKC6XKo194mx5nCl/SlLP4QYD+X5i5
	 QGQfjBOEOFhNfZvViEKwy0OQWdGVJOSPiduE27yuuoPkxDLcKwgoVSHmSd5nhYR2TA
	 g/VhAQh4z18vpbzXC8OV0EFqdx92NyRSCXMc21+btjag4tgj2sPavkNH5gP0eCjD6s
	 LsRaIC2W2APfGOb8E51FCeINgmyLpxz9DrhTwT3ENmcv7am3AiC3VY3SFI2YEvbzH9
	 8AoIP51ALBs++2dm/Kv8lcP8ZL5xX8xlZCKvuSus2MtLzF/kH1No1K0FsYJihiUT3W
	 FzITQvxbkJ/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA69ECCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240343375.26522.17773804049755038384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbff5a1b7a77d19066bb6134362a29cdad4d7ad681d2266cdfc9e5744736bfbd
Date: Mon, 19 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792403433
