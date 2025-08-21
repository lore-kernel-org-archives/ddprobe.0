Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B932E62A7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755770394; cv=none; b=TuFynoHygl9Ccvtty5D35MkH1Rh/bHlwGwTEQEeGaRbGEjinE1Dw7V/UNZQ2cATy7UEwF5tF79623SqqqKXFqlBEEZPB9PiBKayUTeH+5xCzCRD145D3afVK+3eUzurBKbRshvHSfof3x4ibXmwfFeib517mtMv3Ohq5Y3AX5c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755770394; c=relaxed/simple;
	bh=32t04MCUQizksrx7NlsAaJtT6C/Ajxemjc2OSVMJv60=;
	h=To:Subject:From:Message-Id:Date; b=DzZjqePXvRfWU51cqwxDMCsN21VuZ4nIP0fMRgaq3EKNEYYdnoZGmXh7VOBzEGmRujgyzjTlmOZiy67rQpIgbD4KWAUnJmEcyW9YsF2P5UZizW3VnxI9C+9DJBJOmdRlalF9F4VF30ogAapIpt/hvp9CD0HwzetnyrTwxqce9t0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekjlhSzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekjlhSzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E57EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755770393;
	bh=32t04MCUQizksrx7NlsAaJtT6C/Ajxemjc2OSVMJv60=;
	h=To:Subject:From:Date:From;
	b=ekjlhSzIS3BNNgAS38wNOqxQKwvqKiXuxTqks5RXXOVi8AR5OTRl7PqAOUs6w1TAW
	 DaMQeFChecfp/DjrDkC9qlMXIHmdzzJbVntLgD2p3Lji+Wj9bKQF3m6fZiADL2VG+E
	 GF39BIb4QPsqq/CfvBOYj7ex7vwvS7PglWveV+arLE8Ay3UtqWb703dM3ybB0a7VTd
	 Fc37Ex6v3L2eMmSbb1QPv6eLXQqPF06neejt+gb6QHEP+nUFjLIrgE1qglUsguq+uD
	 TP7Zk/pv/ASQ6KUfs5IDN0/mlosz4jpiW2O990Y9Mqb+k8G2AAHV4feTYjhAids3kf
	 dDVsBHhVfFcUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFC1CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175577039357.16335.14648611422267073532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6783ec902b7da5a361bb0419df2b7d8b48c051d9ef59037c6b5e8735e7c329de
Date: Thu, 21 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755770393
