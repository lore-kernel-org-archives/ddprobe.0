Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4467F243376
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747151394; cv=none; b=UKRyf1rSNScShVyNOaOE/wu2DUijCJhWRnj0cXfbUZOa/JnLi/xNWUIWpOJy93hgnTJg7Z/ojrGzqC3B1Y1FZAbldFtOx6FVcqg0trrcxUMoIwRcbqU7q/pF8FOOwl5fp6KUqUfok+1rT4GcIXxzndSRxvVBp6p7ff5L+siE8eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747151394; c=relaxed/simple;
	bh=z0t8hN9ltsNzriPBlnJvQ5tjGKbiWFAS/pxZ+JOgXaU=;
	h=To:Subject:From:Message-Id:Date; b=UI++u0ALUFDl4fMLE9eOiMx3aWmqkZHKBG5RSfL8HOAgr8ksXaJpJ5WsCoXOASALv+d70bv0pBFYUv1HHdXUg30zT3ocDXrMc3c6+8oGZlSSpJZj7uRDxVLULSzKzpGyrBzOKwOMeMkfqZ99yac3dhtl3TRt9AlktxJdrAkxVSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3jdgZ8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3jdgZ8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82F7C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747151393;
	bh=z0t8hN9ltsNzriPBlnJvQ5tjGKbiWFAS/pxZ+JOgXaU=;
	h=To:Subject:From:Date:From;
	b=m3jdgZ8t5SH30vCtwoHN+2hW2WzLC4WK/mcRFm6Rb5c9AzPGhfm43JM/wfzRyPsN8
	 sZ/WZSxoskv+ASr21F4lMYgofqpMpGe/NsDfvnMSvG36H6kJ5W04pzFdg+wC8AKd3A
	 jUNoe1B9Vj4u3MdqQHrfCewCVijwFKcL8bgkDQznL+rb1OWRxS/iHPt/hYyHXTFf7/
	 PKJzX27dCPGTEg7mgNk1pxEpHair85oDsx18HMWmReSunFAUCgPa4noDfBtzI+N8hX
	 sYz+njqYjdqoE2je3AZkRHHO+zJOkxRNFwHB8jBQUO5xklNVMArJ7VGTk7HGWgnBxL
	 7olnXj5e8dfTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EDBC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174715139358.4060.14696163784884730325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97e0e8726129dddbf084c68d593305a72bd7badc88b65c7ffb6eae3a38b1e43
Date: Tue, 13 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747151393
