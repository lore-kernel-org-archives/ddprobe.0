Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B92128E56D
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748457594; cv=none; b=umJxR69NqtaoYNWcaPp/bNQ1MwaIKXh19H+p8r/MbgkdtdUd6Wlp0VVrSNeHQTvTeUHtJWUthWpkqtiVBYC051vfaUao3694pu7vHktvhZs7oXt2O7Ckty+62I7VcTCBNPCTzDT+IluK88TgA2zhsU13b+2bTP+cvKs/oYx5/vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748457594; c=relaxed/simple;
	bh=CaCMVBvUKDFDuPTpF5cOFaTQc4gWhpa8MQJGcQzHwE8=;
	h=To:Subject:From:Message-Id:Date; b=Ck1mEpMCu4JJ1criQK7BU0YLw4lRNftHCvMrDiI8RDCymcwZPjjofjbnXNsbzlxww2dsXVTgK5pvdS8p5unQmTym4nZ1S/NAnnRM7RIVlqV/8R8Rs/0JVLlZYfj2qgsfHVZiLcsGespxpXaMVSbEBxkYpvCEchZRR9V9eOw+yME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oau/LQ4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oau/LQ4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4596C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748457593;
	bh=CaCMVBvUKDFDuPTpF5cOFaTQc4gWhpa8MQJGcQzHwE8=;
	h=To:Subject:From:Date:From;
	b=oau/LQ4gqvdhsz0vAEMCPjodb0SLDPhoZVLKp+x/q04Da82F+nk1coTHA1KoB7pQ8
	 nP8mW2WW2E6oHb5V7TBU2J7xmsuilllPvoHdFrirY54a7ucLPArzFX2wToV3lEU1T4
	 fEij2iD3cDd1AoqMnYnT65wkLJD7gFFbLWD/24ZNf1/bC8xdph/t45DAHJl749i+sr
	 4zRP0lOvGmfH0kX29+HTLe6KMFOIPWhKVkVU+Heo4DUGLf8vZVPcWbbCFfOej+/cRv
	 jxjtFynXJutBUHSim+F9o29mpP4nFC5JZ1RmuNrSNwxb3nVlOKhAM0g8RO0l3ZKSpb
	 DYOVM6IelmFxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC11C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845759358.15211.16025383866179802071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50500b2031055a92dc7077e1fce910639eae63f64ae842888909b49cb5034ce
Date: Wed, 28 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748457593
