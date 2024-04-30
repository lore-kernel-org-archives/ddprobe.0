Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813121272AB
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714470743; cv=none; b=a1uncblthN3uudrX+2eb9YEAzgjcw7lxttq0G73NxNeBX4EgyFlkkWoBLK9vSfevQVkygVDRF+92A2kM9HgV5QVoJyMz5YWGjpNA2pobu/LimnnGDQrtbboUFOzwBoA6MEecdx6Io+yQ84xYgQJaO97ctxJjSM0u1uR5a1bOlvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714470743; c=relaxed/simple;
	bh=jCEMh0TR23XHlqMTMJDZsAZ1IpELsNCWIrrEDNmb/Zc=;
	h=To:Subject:From:Message-Id:Date; b=oG231UzywDD94uA2FoSOkZaUvCL/2W63JWbLmqlFkuSTYj9283yYf0T09CoG7GlP/rjA0BpYutAAkP/cCKWUywW6p3Exyqq53pNT0DE0DEbWz6iISeIkHtVx67FyA4eomaq3meQSctyXv24Lcjg1gNTUCzO0YbUY86ITL1T8j2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XM6qJllc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XM6qJllc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE48EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714470742;
	bh=jCEMh0TR23XHlqMTMJDZsAZ1IpELsNCWIrrEDNmb/Zc=;
	h=To:Subject:From:Date:From;
	b=XM6qJllcaRSA1kaxbzWrn3G/8siWbUpWIU1QRbpnS0OynwnUWTYbg02Be4l1d2wvP
	 t3bPL+Xp62qdGZr5pCY45WDI4jo9cf1Or4UD8BnEYrfQUSoK/pdm5sQIbKufCjm8kp
	 QjUDSHeEoo7QRsAxg35GM0T2dRPSvIf5ndf97p/WAa3qp3qHNZ90dZjvII6yIrTlkc
	 pR935EpASe6qd/Cj090jZQTppa6K138eqHgPcDcnOLe8Xy6334KLZq7JV7i1anCHs3
	 Art3i55wjKag05CAX4AG82onebmbZeLlO7fV2Tlui54kwpJ0OV5S7lNxQbasifekJG
	 99EiMbAddD8zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB681C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171447074280.30255.10269482455958029140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995060a12932c88dfab886793edcef71822595fdabea2edf06ef59c9bf1c5da9
Date: Tue, 30 Apr 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714470742
