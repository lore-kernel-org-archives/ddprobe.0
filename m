Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA46287510
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752230994; cv=none; b=I4KNAKjZdOr2RFVr2mqhEKY2690Zkn91Yu+YGW5Ik0bnwfs5M/2Of0nTU49wrv1sV+5AvQNJTOURpiLhicIux9v8T+69jzmfy/jW3RnPiLW6H73G4lfaIC5riBmi6WnoLDTfNPTWw+JrDXzesSZy/LNP+y6h5nVSQ7mVfWUjvPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752230994; c=relaxed/simple;
	bh=w8klqSwMIRUtGYpBNpdyuGbp3dDqdITihB34/ULQIXw=;
	h=To:Subject:From:Message-Id:Date; b=njFu8My+HNkdMNhqVqyN9k1Dz+bN7w6MCHwH/DWFaG8DQior0CaN2Z8RJmIVTVyS4X0MLYhOSh1ZGxgvOAQgdvI7AqSG/v59cjA7jZlwaefVlaW1UflpS/GHcwSjDXTGljlacImEgErYG4BvD1cjQqqsolSPr12yDPtNaHubxBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rlc4zTCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rlc4zTCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF41C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752230993;
	bh=w8klqSwMIRUtGYpBNpdyuGbp3dDqdITihB34/ULQIXw=;
	h=To:Subject:From:Date:From;
	b=Rlc4zTCKM6xPOPRWOpuAUtGqPOKpLekrrHZn07Ix8r0SsnAhTSRc8j2c1PsLFP3LM
	 gKKjJ3MxVHswqQX5eUqbJtxtsyHAYrMTTY4UrHeo5a3AKGKFzzyFvZoE5iCyHZ4o90
	 m7kol+hMOM6oHTQNGk0kXDlaqnRxikt7Fs9yt9GD19H+MgmvpChVaR+WbpFelvzBdn
	 4E3hWKYH7fl5NdQrCS1zicoJ8TC9TbOoAOkK26jvfW2HEcxB8grq3ZLHVygVlUWLJf
	 lj57Jzw84Cedg+OLJcNaOtAEZ/HjAeL0flN5NooZh2zawJ0D17qxpRpyEDU9FjQMof
	 gNDRgkSAhbMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DDC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223099357.7387.3834957545971655131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9b288b9c5aa9f13333d0366c330bf0c3665f23c15609259d63e7cae9a3e795
Date: Fri, 11 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752230993
