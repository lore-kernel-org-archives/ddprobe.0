Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B1B4369A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763842914; cv=none; b=HWT50Fps2tQAxqtinySPMym91y7ZPOdZH6tfLtwJigCIqyMvzLI2OVfYRzYyeZBgTswzx496BLyqWW3CY17g6D8hsIPoolAsOh5yUoZ67k3gJIJl97QaGMlfSV1FLXTioV0ece3MJNCI8p2LbR6vfxthic5HdSEgCr+EtlSWqX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763842914; c=relaxed/simple;
	bh=66HN+43NM67v4DQdZM8p/EpVMRr9EjdHq27fujWAF1k=;
	h=To:Subject:From:Message-Id:Date; b=urUzveDyYM6lR8NAC+o9Y6xDhNnObpoABUZZVMH2we8xoC5irYCd1QkKa3YhLIFKrI721HrX8ogFVCB+nOaZ8xXvzTfCgfv70SAlV6P240UCnUoXRqlwjsh6+R7/0/+ITVCoKwIk5eKLp7P1QY93At8l1XRTh401DTSxkec2P4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzA/ar+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzA/ar+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CE8C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763842913;
	bh=66HN+43NM67v4DQdZM8p/EpVMRr9EjdHq27fujWAF1k=;
	h=To:Subject:From:Date:From;
	b=BzA/ar+0SI/EU6PUo0KQEeEXNh4v9VfZGF8JBEjSkymaw1ooKssIC2wHMMef0aCFt
	 8i0y9eeyLffbPKyRMagWmeZJPFLs7BvF3x0r4ji7DjTG+XkpQSR5omiVEmWOGbv5Pn
	 AkOBhbTgYfHlBueXYC6pQWqyvt3pcpcPGOiI8jHi71LCi32AJ0BbpKiZcn8WjWfEpW
	 Bqzllvh5eX3QQCE18CsfDmSnfEzF20Fkkc//L5OCMvgryP/a9ehlRQiym6XN3l0j9y
	 dMzili76D4CGSkVugAC/ZHOAdam2Lvhz/D9OcrMYP/xGn3d/IBnhc7CnrWzaic6tCU
	 yH+tbbaV30RAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D7BCFD2F3
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 20:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176384291358.7445.10076490804019128722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d2b9b5ad51cf4f412c613607c97a4d46e05873691f348830b789d032204f9e
Date: Sat, 22 Nov 2025 20:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763842913
