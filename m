Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5956538D41A
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788095434; cv=none; b=R3E4BodWtPnnUZL3QSPfiszklfAQ+6iFscNW/ajyZZ4SizUFFaxVxPtgkN1IDxLWdPcImkSRwZHVgYKAI+ctm8TFaiYA63ojbR3XpExxqgyyXceU6L0eY0c+WV4ndWs9G+tZ8q4arVyfFijylLzLQMzQ+YaImqMRU34me3xVtEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788095434; c=relaxed/simple;
	bh=8JcbhYaSCgm+1gPfX/+CqNalDv/t/2CWeLM1SwgHgWQ=;
	h=To:Subject:From:Message-Id:Date; b=eqbFbj8PT+T7AgyUsAVS9OrLFhqqfK/mFTs9zI/VbAFu029pCKzVp2QdM0bTwPQJZW/Ofk2f0Tgp35tIRUsqjpS83CmVfJdBdpGXk5b1aNWh8l57NE2t/zT4yMctFkXEUvzV4bfZwGjVpMzgdiOHKYYdLf5/4mOcqsMp8P6bCK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osG0Lr46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osG0Lr46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D60C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788095433;
	bh=8JcbhYaSCgm+1gPfX/+CqNalDv/t/2CWeLM1SwgHgWQ=;
	h=To:Subject:From:Date:From;
	b=osG0Lr46CtAyEEbcGc0Xf33UcwN/TEBWf67uDd0x+gDM/t3SDXQO5iUg62++FfAu2
	 Sy7ZqF2IswjbHzg7k2WchVqBpZjvZBeKW0q8EgLUwf63W8K4gU3KSpVwUuZk/vWPhN
	 0oyahe+JElt2ijD5kldcfc8uwK8t3FSeOQ52Obap6LgeF2UmkUbDyiJPuKFjDQGtis
	 htk53l9HTUFVXUd7ABF4XOqkeqGy84lBobwTMOi29JlMCi0HCV3axts0E0tJAg5IXT
	 YCrQT92ZeNqDoOSkzbr357IVgOZLZ9880UAGgNUywRGftukyzlgzDEMVoFbU2DgSUP
	 4P+UBX/q1IIdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EEAC61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809543368.17766.17865894481115975014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d03767b695094fc5d5eff3e4daf6d484021e89f046a05730ef2949710710e57
Date: Sun, 30 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788095433
