Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC7B1A2545
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776217654; cv=none; b=mmOm0s47zBgSosOuFYBioNfu153tHq0mpAkhke+/FE09u9MlG0NBsEbleoTqXY0ZdQYKfXHNrTOrLtBe7zeBDkjtqycDd5adXDxhy4xaGbjus/S7TYiawgNyGgpdjWtsw7EgdyvpvI5JildESnnF7XafwVXYIOLQWO2kaL/Iy3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776217654; c=relaxed/simple;
	bh=BmtHis68SA6KAVUlJ339yogi6N6MWLGkVzab24eJiVI=;
	h=To:Subject:From:Message-Id:Date; b=FozBbZR+nlazDbYDf2IM7zpMmGr/IOhzip6CMPPWsHpaCEndw5InkvZueHsrgqFJSAIMIGEbGu6U+qtyJWmgBng0UxveZ4F9+B/Z+frnLbP1tR+uCkXEiWdcSbfTOjiPpaYpH6d9ulOqY+OC7mltyRkm8YkdE9Hj6m/oTQ+D6vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaUXrNRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaUXrNRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB240C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776217653;
	bh=BmtHis68SA6KAVUlJ339yogi6N6MWLGkVzab24eJiVI=;
	h=To:Subject:From:Date:From;
	b=YaUXrNRoeWNGrw22pt1gJwQSdlMdrvT2LESManmZs9W+yGb9Jdh9Dx8MurRJyABFU
	 TdJcgDREuU1GifB4RBL3GQxBdfIyUpfMDO86eL3vigfockCp8fxMVVnaua+DJJtRUu
	 JXsOHclnfkMUzB+/WJfj2RsJ7UwkrKo/aqF0oYR7MYLKBBDjtEGItvLzBgl1OiBJas
	 iJIOeXggcp92g0tFg1x6BOUOa2hYly909gr0INH6fV0mD3K5v2k7xtoXctPPBpkqN9
	 h2aZSoGCp1SwAf8/6JEjYoXHke7C2zDTJOUnyNPJxki5gjJ0RYDvuHcrGRdbQBsefT
	 zHYjjoDCpu+mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEBAF9D0F6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621765369.6422.6639624611455204404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d293b503247ac214487ede4053e0287161e8fbf052ae7728b113e475d4e63c
Date: Wed, 15 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776217653
