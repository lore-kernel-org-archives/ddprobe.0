Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE03144CF37
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772301293; cv=none; b=WlLlcSIsCR+kn6FNp7syYW5qxrX8t/AKTlcPgnL3gGmPP+4cyn1Exsrdg/61K0qCL2Wgy6exh3lG3r8gMDWkv6inLP6ln+FnyHoVgJuusAIqqe77ZmgbJxmj/8otWCuWJJbEVhVZdAIQJrcKljaWM0Y74Rw9pPESwDngLXT6krk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772301293; c=relaxed/simple;
	bh=irBoj2EQctiorkaV20K1IXXjrWA0pJ0c6vg1fRYsqws=;
	h=To:Subject:From:Message-Id:Date; b=rJUuyelPVkAMv/3yQOvND8Io5chBmjUZclS3ljmdvKtRQCnVeFpwHp+tu8fJqGWzeZXR+rozswbcHh0iccis8foP1FCocjLiDH26h1kAoqpjc/uFcftA/17WfQVHP1+Pw2VUAX9OqS3irNnqF0Zc8sTc5GS8CVew3TEofNmDabs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzLZNpb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzLZNpb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C0EC19425
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772301293;
	bh=irBoj2EQctiorkaV20K1IXXjrWA0pJ0c6vg1fRYsqws=;
	h=To:Subject:From:Date:From;
	b=MzLZNpb9rBt+F16B2v80DL2TS+y+/c7MOeFRvHD0uo0a5EXBWl6uepYjSWHYHSjLX
	 2EjI9X16eHObUaBkiWiAUh3cORs39HybSNaDQf+xzzqOV+8zwyddNZIp1nt0P4sxJY
	 jbtwJOCtDFDVX2sA2QeAT5id1aab1hf4fMxwE7XIi0TE9gk8fvX++cNfRCocLYR2D0
	 +vN9kSeyNGArIVrUJj6EB0RAGnPpSrcU9/g/jf1oP4CUxtx379OY2dGMTxw3SEGywb
	 z4QECupYSrR6q9Mu8nHeQxYJmXVXmyM3NLKycQqK76E0qF3gD9tPN05/DxxmVdD6DX
	 Z7Wqnsm5nmEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91174FEE4EE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230129358.6271.6653480653549858512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c531615890057017cd82afbc10bdd66cc91aeaf19f658e8a640b0895772f8d
Date: Sat, 28 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772301293
