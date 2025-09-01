Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211031C6FE5
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756698594; cv=none; b=Hq35LnvquF79cJuygDyyE7zIKv9yrdBx1EoWuV4p875dNe1/QqUooyT6CqiNZ4RJ0Dk3cuMcFdNNcNaFONkj66me2TaQCkAt7OIuDRbxnLUmI1xtPKrFhwAjpkrRMyezadPRk1UyAs9na3tdl2zIJUxjUTikkYielLTNWJYjw0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756698594; c=relaxed/simple;
	bh=A/mvEGBUjSeOSNAaazwqzDXnb/8qXTTljECjry0g5+4=;
	h=To:Subject:From:Message-Id:Date; b=hjXRj/glzAGbXdb6zGHJwxJmq97xc5fkqWKxPo8Z72yj3+Hwvx6jHmb0j1OoCpOfrsAjFcw9jMuAxgBF7kV/0YIdW45DvschjQxNm+yZNl7B3ONEOSbbmXaoJNgYtFXO2DMMNMxugJaZDRySeAM1q7E7MXgtbhNDUUr1wVxWHFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A99+7/BT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A99+7/BT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C361C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756698593;
	bh=A/mvEGBUjSeOSNAaazwqzDXnb/8qXTTljECjry0g5+4=;
	h=To:Subject:From:Date:From;
	b=A99+7/BTJ3NLxZ6KUeAFSvJNsDQfJ6cxX62gSEGOWwfR1KWuMVG041Gzr+H7tmA4G
	 ffgC+RGLjgeaTUjRM/B3iGPsJa/kpiQvMrrH/S+xQ7CeAgRzN1CPSqLRDjFugz1yvC
	 JNqrLEoAViOv2Aah2KLhixfvbt6fTp0MeZKQfuP/EFThkOGCeK4Yww/4exrUtgkxOy
	 edvUK8Tt2oUJeMLTRR0x1lJrlPtjKn5I4DBmQgar+IEXgTXeqfYsHiGGnukvwuSpze
	 HsmNhyjljX/x8B0Jmk3hjl1ufLY0XHAEJONjvB7nrviwrudcgVakMbnlylhvzamf3l
	 D6/kfY4QlLVZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E285CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669859357.13294.14060989885939339239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf3f98b36f9ada79618a27660e14e662e20e4529c1c9c90850052d37e59ea0e
Date: Mon, 01 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756698593
