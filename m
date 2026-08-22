Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631672248AF
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787370634; cv=none; b=u5f7uYWoBBoXwhamP/d7OJBilWVGILAmJzmtjUoL9FtCwZ0g7uaFQyljSxPiOVk5EkisY2zpZcZAHWofW+qHERDMLUOtD4wnfxuUbFBmE/K6JbT4Jv84I+Lfzgck6qzcPdlX3J8WjJmuYgLgrPWeHJ7FvLlWymtb54Vx32H3EBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787370634; c=relaxed/simple;
	bh=UnyDTeQRFNB+JfhIM7MQhSJuJ0M+uxit1xPXbvTIRaU=;
	h=To:Subject:From:Message-Id:Date; b=Adsv/Ob7g/5kkG6R6WD8+yrJ7xFOhJZ+gMfFHxBeS/ScfPK56IS113kr5dxSeIBPSiEcolAYJu+iwsoGCT4bF7mybrl5gd+D7cwWm5OtHNzeFy/63m8rcA3oQ337lpgn4zbY8Ytb0wzXgNMOLQlUdwxmZHNJVwbzG7RRrJPIk/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdNXxohR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdNXxohR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A55C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787370633;
	bh=UnyDTeQRFNB+JfhIM7MQhSJuJ0M+uxit1xPXbvTIRaU=;
	h=To:Subject:From:Date:From;
	b=jdNXxohRFq1glyh/dnH/ixi8EaxzSW7aKMtF87A40+RMVUu+L/mEgybj9/m2xWnhI
	 iqTMBgUhFcB7Em2AGqM0RUlFnm31/QXjQfshK8REnYr4Om3mijG/+v/UymA+edvgxt
	 buFqriWynpKCBq/Uzy5OsLncjGWZ2L28LUl0RPQXCtYSxzp339KorAd+hpKGBUMn4h
	 eanlq9JZ1l6MuySsVMz22B0OXvleAz1krQtuVSVfC+syN7ikDTCtLPIvC4K3eV1+fV
	 xZedECPOmOy2sXcUb2uJVYZGJLFMeMkKsgeLOjl0BE0f506kHMl6/JEjVTCTL+sx20
	 ltUhGJ6FK35LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C1C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737063368.10889.17012638488290204037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ce27fb6cdb10b595820936ed949d4cfd849c0a6218002484fff395187934270
Date: Sat, 22 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787370633
