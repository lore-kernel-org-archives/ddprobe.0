Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD1D2820C3
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745350794; cv=none; b=GjM62gytkyx7SAUj792bvo6pdwrjAMNLGqqhAAq00UOydaJue5hVq/WOLukdBuYmPRhS/G4AVJ4wRQD+Q+wBZcJ32k8Pt0FU3DhseEj2zo9NmkJ6+XytqaVIsP4+oK19+Je0Acmw82bB8//2RnaelFF5LFZ4mxNs0Lm2moKogWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745350794; c=relaxed/simple;
	bh=SuKq7ua9tieifpDKQVvQ13cT3OzCbIz16ULLeMmjbaQ=;
	h=To:Subject:From:Message-Id:Date; b=HIzE6Ph31yzfRV+6Rio6hEW9cX1X2BhFm3uyQTK56L56nE4GHBEa45CyIWmlp4+p09PyYRToct3Xjt7Z0TuCz+Pz0CJt4YWPpwh2pbdoDwltk8bsiqaU5jCS3fbhCrN22DpG5CZ/Aw8/xfQhdvPFT4mIV550bfJhqczL+jH1758=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFlW2JGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFlW2JGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC620C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745350793;
	bh=SuKq7ua9tieifpDKQVvQ13cT3OzCbIz16ULLeMmjbaQ=;
	h=To:Subject:From:Date:From;
	b=dFlW2JGf+Hc5Rsb2oPK47xpkKZ4RPKbBVbTE/oxvD2v9j1Ho8I3MSJM+X4pZaj8oc
	 go8DRuwA+gdi8V9c4oY5b2PyS2eezPMmZ5AQP3sRATmX97IEvEmY0jfElc+iHD8vYZ
	 nZ5wJSD30eBoeKhA/CUGb3zMLNXIaw6NAZFgrnRdjhtLeYGBM3+0yhg9jOKSAYMTI6
	 TYusCRpuAiWRA7nDrlZ52UrBg5n4p4zdf4u0GFJz4E++uAdCw/tZ8wyC9N9TF8CkWL
	 36Nrb+IItWETA1AFcAqzKTW1pEXJEipm5KfyHlSelHTmB3weVkUrEoi8WJ96YcN6OU
	 zVjN9Z+xYb1YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8F3C369D1
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535079363.22485.1103907154641338325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07dfd0b1f05e65a0f77bfdc22a3be61a582e5995d8c5ba78e5becc5ebf007017
Date: Tue, 22 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745350793
