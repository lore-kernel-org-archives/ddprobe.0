Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2D94417
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 03:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708314497; cv=none; b=KALGH5Ig4ZuPpaVAvz00lhFfgbjurI3wm2+Hi0GKheh6RgoOVjuloYJLB85Vh/cSF6EnqyHW93gctWQ3W3NcgDPeHBlUIlRTid7nRct/QDWUnq8ueGa4tMcWwGiZfPYwmv86xSk60eNPq7K8aJ9sOVpNAt5X0bPa6dU3rOGYQn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708314497; c=relaxed/simple;
	bh=IGC3RhXWjPybOhdhHt46LWOvBk3RY05eJVcXJ8mo2lM=;
	h=To:Subject:From:Message-Id:Date; b=X/Us5iBW/SSQZ6UCSMfTehwPOJAFx7BFTZeOD/23xue8MotanpMiw/tobRlS9dQ9/GX1ZerzjPZbfu0iDE/o2s6LychZHFXfZFlEhUMb9/eN5mPVL/toG1e5u1LMEx2GgSIU8R5u2IjVRCDWDMMS4rS4X/FK4QcbTZVHngB6M/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwXzaFLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwXzaFLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90C6BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 03:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708314496;
	bh=IGC3RhXWjPybOhdhHt46LWOvBk3RY05eJVcXJ8mo2lM=;
	h=To:Subject:From:Date:From;
	b=EwXzaFLrDOyxcNq/g1MWlEvVBOurYKC43TZLGl5U8taaw0/20pa+am0ECRLXDmt01
	 KOz98qQzzvvjxrNxB3rImj5wOgH0ULW2t/z3U3/YJnSMu6/Hdf3NOs+D8xjY9B9Ae6
	 fwKYZUzKCDNeEEIXDqDfDltVvJ177jdzWVkArrjoBeIfXnLfdkCoqa9N570YmlN5rF
	 a5n5VBO6FlxDolQqr3zHwy7shRL8Ods1m0COYAiaSoAZWTs0iFxyIkJpJkA2tjGDAw
	 AcZqfle0DX6rmJ361yu113f1VnrrDUeGKulDZLtbky1axPyvttgBtB+8VGriONWVp2
	 Epw4V8JskWUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78484C48260
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 03:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170831449646.20868.11221698549685602942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5067d4a194ad23342f0bc39ef21c1db2beeb25ad5e995a1ac36bf5beb4abdd6
Date: Mon, 19 Feb 2024 03:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708314496
