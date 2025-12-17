Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112811E0B86
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766012034; cv=none; b=JbQXtkwn5lhk7Cyl9Q3yAvA0dcqUzGVRgKu+V3FZod8sYuAGEcLlT+QEO9FNfGL9nL/BLsUmoMT3SzNVX4vz/eI43qq8wMd2Eupk1REIHCesk3MBMp1qppc6ZEsVpyRkZOozyM9B06BReqSVobpJ9An9v5c0QYxug5/tyaZgSQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766012034; c=relaxed/simple;
	bh=J7Yf+5HnetZmq6ufu247kf3HF1RPw3iGT+Zh0e9MxyE=;
	h=To:Subject:From:Message-Id:Date; b=jv/zW+gT9wQq/kX2k+b7bTR+vfxb5l+VABA2RudQ2qWQnJpyigWe8q9GqE9QlBRJIBcV/NcDqaZ4nMH7t8eKGwmzugqtnm0u2TfYmWbGG6P/tl7fmx1WkdbgukI6kYTZSl2OpXxQydKleLuTXUwKCkNNZ9Hnm+80+6eZ4HFh3lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ih85TyLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ih85TyLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A201AC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766012033;
	bh=J7Yf+5HnetZmq6ufu247kf3HF1RPw3iGT+Zh0e9MxyE=;
	h=To:Subject:From:Date:From;
	b=ih85TyLTSrccnv2DyGIex1toOJnZMC6tMecfg/6bFqBDUfeJuRIxTeOxJfVXjHIPI
	 uVucvkeqkb22jKcdNwzwBCDVbnsj6u2ps6uWhWBLwUVvcMG4xGLxW291AEnlZmZ1wd
	 iE1J7vdn6KkonyC1Emve5ZnkX9kFzd9ILYqTgeIy3DX2OIa223BabA2PeLYsC3FikC
	 WV0F/TbFVg3VbpVZdU1AGA7qPvVd8aZxK9od9uWGXiTBsMhdmgUqULR1MkeluXHhL7
	 DBoRBIPC1kkKQPsSEWPGAeJ0vbKPAm2m8XlwmgW2P5F+SxkiRyuIPGpK3srnFhrAlB
	 f66Eeg1/W55dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BB1D65C63
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601203358.23734.726193021896358752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0cfa2eb57130895af64f02c7f5f974ca2b8b55589f48a52a3d41018b561db5c
Date: Wed, 17 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766012033
