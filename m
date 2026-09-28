Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED3D384CE5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790619634; cv=none; b=huALHvpMRsjad58NCOACtZLW06Ih+kIsfJJhagWqa6FOPOsA/iEFqC8SMw624juHS3cn9sF82k46U2oO3vVTGRHra625JK1B/vq8gmey/1sl6diz6NsSuY+0dNPTkQVz90ZqEY36974qZ/A6bQTPLKOhrLeFgxSXy+A7YwCbNEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790619634; c=relaxed/simple;
	bh=jVMXqVcsDJDpvXjK1gkmezLPzEzzh/sSa/N7QZDloLc=;
	h=To:Subject:From:Message-Id:Date; b=Evx4BHz7X669BraiWjmG+TPWPSNi8bQoJ52ClgwwRkKLlYu/36GJzwtq2QniuCeD6s2VKFq/bK3TVh5qmr1I24kj1reR3mqxkfjy8ju/yfeBPDMnoO4hIfTVdquT74bxqh3Fvwll8Q/FPhuboFXtaNZAjJuqQcN7ZrQbO9GAmGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkhX5YRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkhX5YRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D215CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790619633;
	bh=jVMXqVcsDJDpvXjK1gkmezLPzEzzh/sSa/N7QZDloLc=;
	h=To:Subject:From:Date:From;
	b=WkhX5YRBWR4DI4rHi3p9yZvrkVY0H+JgIAwoww/M4EkeJNZ8SfvUdfYe8/PiQt0TJ
	 dvLlj6btOFqVy1yoF1Qyd1NJzGInLOyRpDV5KHxI3CmizKs5IUDAMJA1Yw0M6E/cxg
	 7Vw4SN3t77mL78nvhhTSbM2wA9W/Ii/07szqUSPWavdLFqv21tChm5/X+69xPUg6dR
	 YA23nE21qEyNkEU7rLsU55KtVMf7bPgnqKvvCpYU/jxs5Nisv7tahAr8bRdVIErUs8
	 Y9gkQkdRFlIu6g6Xcs8FdvvY3x9m5u1rtcR/B3CIBpNcAgIeYcBm3R3A7K2CeKkX2V
	 on3yziEakHogQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA763CA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061963368.18222.13392674900298668676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753ab02daae021d5aad8b22eefb57d95d0acacbc110f7ea307ab0e93e14fc3e1
Date: Mon, 28 Sep 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790619633
