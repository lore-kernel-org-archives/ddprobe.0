Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3689B2F28
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726788954; cv=none; b=dagp5eDHwxaqpKFZzVI6csOf8ASAR7D3Oa0fLJrNStDCUZcZFD0rnD3KaaXagK+6LaPnATDSbrQYk2FsGNxOed1mghtMTx/xaoUuM5N2qIDvLKN3KOkcRxMbTLjsnXSQywt/6yia5xYiw4paTAuicxnqLSDcoqm5RtemNjXRoV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726788954; c=relaxed/simple;
	bh=COtAqS7atDgRrTE5hv+FIvaveMtPNopCIaKxAahmjYo=;
	h=To:Subject:From:Message-Id:Date; b=Bs886TABFReRQJ9gYwagT1RIa6ufI5CwxGAuWyJfGsY2mYjlRAg/UJoiV1fNBgHguQkeTXuT1h2D4oW3kIEOhgXffiS983+YR8M/91rQ5Eg8gKEGu25XhsCBWSh6DlcTIXkZr4bAxt1Tk91eBu6UQD8bPHXQWH1BDDk2vH57rpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7yOJ/Fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7yOJ/Fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E85C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726788953;
	bh=COtAqS7atDgRrTE5hv+FIvaveMtPNopCIaKxAahmjYo=;
	h=To:Subject:From:Date:From;
	b=e7yOJ/Fb7Cu0bPyHTgYMP2Cb2J8yO6uxqeXxxwMmxuLCqxMcQReREled0R4RRdMCK
	 QQHMz4cPCx4K173epo6cWO3r8PAal7c2QS4ZoN6UN8i9p6Qb+a2guHQK+qgR2Y6CS7
	 w+FGQ42ifU0PlhyFEfHHjEYd2smbP66WE/zvaOr8mqVo8JpxPGkwfFnwh1DPIuD7RV
	 mIfDAWhbAV7G+mh5BmG0DIIa3le1833myudcfI9gRrZPLIzgEV2N6yM2nUAAh7dhl7
	 d77o3ZWG5swD+uiyrVdd5+v/tT3qAmrWkscuoiBKP/EKw0/laEq57mZ7f5V3hl1ahg
	 Kt/cn5WmNzDDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A08FFCF3973
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678895363.4191.6881719765230106104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71300ff40eb3e8053b90d23d3efd2d8d964e7fdac6a976821a26bbc77288ec9f
Date: Thu, 19 Sep 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726788953
