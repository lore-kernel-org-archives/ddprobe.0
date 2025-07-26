Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2336441A8F
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753536594; cv=none; b=ir7h6KxyQobkmET68d1AscMYi9chOWKDPJvJwo38uhcMIwHPEdpusqOb+IO6XtqmKLtWK9LqOXaMhOnTOVFejZmjAYHYY2yYYcbvSPGPBXgjus52G5su/QRVUdUIhxGubU5gK1VbdeRA9m+AC354MbIQTWYpsahEVZ1MCQFmuQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753536594; c=relaxed/simple;
	bh=aHikZDiL9nGCt0+Y5FSXLG05YwxRkWD3pwWobqTkP24=;
	h=To:Subject:From:Message-Id:Date; b=qZNfXiJpAmKkoTQiRgOm1UbwPltN8GhxJinDEUhTZo1emtCoVK4OuvWYyHq9XWfCqhPRyHRAngZaDRdjnxMCwSj3GlncYkLDsiEfoZBr1EO+meb0Mc5ulUnDb91IxO/djO0uERVVb/wrzV9Fg1hPyFFG9QNLGfA8ei4vBecFfvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3X9zx7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3X9zx7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF24C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753536593;
	bh=aHikZDiL9nGCt0+Y5FSXLG05YwxRkWD3pwWobqTkP24=;
	h=To:Subject:From:Date:From;
	b=P3X9zx7vd1+dcsTViRx0Yir5rAVmoARRhvB4fycV29rxkXHw2qKtdIj9VG+UFsM6i
	 EG8f2DZICx7uSV5kj7zvQYI/xZwAEZT5KLAm92cIXuaTJfgZ/OD0PjRnnJkWp1lmMm
	 rou2gXgKv+nNOtwCHQPz8U1WF2qrFlr4MtBUaUhNLaC3q6+lkLthWX/RBrDchzciPS
	 J7WqVpf9Z8b2nclu9eOERXkBJUuN1i2rhDtgVMr3PkQCH7acmvErqNFAmFRfAriuhJ
	 5IN5EHDnNcljsZypF5lI1Aih0kDngWAwNPGWi7pA24E/qreFGFtxJCcm3iHKVTWc9t
	 eU0nPfsCQO3gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C27FC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353659360.8781.4158207901431619737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7732ad5f8138c978977d5248357f6698580050628c0d884cdc2beca2e7cec6a
Date: Sat, 26 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753536593
