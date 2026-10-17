Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B37D391E50
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792251034; cv=none; b=lwboHDrvxlGmlIzw+8xU7m/8D3GRBW3wZ0+UfFmEYMCqcv5a9FBjhPXmf/rgcPHdI+s4e8vLZ54NsFGNz1KCo8ns4Hy/onv92SnvP8rUesa2cz9a0RwaILhbYWZY9AGBP/C0ywZKGrLDaz+c7XaYsN1GDrwvswPrw1HTen+nGTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792251034; c=relaxed/simple;
	bh=+Y0jc4WwwwXkCRX3lZbW7kNpUPx/u8hqne656kwQ6VM=;
	h=To:Subject:From:Message-Id:Date; b=e3dcQbrmx+96AhbOKz5zt43bWenAxPvhMRYF04TpEhjQoJ2hIVn78SiNOUkbH2XJz7ZVRPV4rt1aTUCwAFHOVy+sgG8io9My3sNfqbHfxx03/XZ1nh3bQA1eEHbkTGV/T/iJkXZ9GCYC0aLmfXvMagIR37ZsHdAE8tRI1U6E3KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0gbQmrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0gbQmrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E9CC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792251033;
	bh=+Y0jc4WwwwXkCRX3lZbW7kNpUPx/u8hqne656kwQ6VM=;
	h=To:Subject:From:Date:From;
	b=s0gbQmrrReJUAaTsMBHRBPmQ6zHu/DCuNnQkFPrEd6CXQSfrauGGQgjzl0sxdKhNg
	 5mmbTA+O3I6Y/I2YyEuAgUsbFLdF1qQxx2/PqbA9aTRYB7ZBd45PqZTkdm6KkB06l2
	 0xlogdiTfjvUxtHKP2kd2J+gs2vWcUErMC+VjfuzixAPNI6sQMKyFSq1WydXI7DVx1
	 lHllzQTuagyGN9JrOfXDzilY+ZJzNiw4vD3BC9jpIj01xujEAQUdlYZAkamGbmiNei
	 jDtkhgVBSJLZhQ2RRdt5FVHEomnGcCBWPv9eHTKZiZUWAfHMYJoniCxfFasdtmZLX9
	 UySEfXkG8Drhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0346CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225103369.6026.13006611027316862239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35d0f0df49d33ca54407d58c0730b50eca87b98cf79f5916419d17a8afa1ff9c
Date: Sat, 17 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792251033
