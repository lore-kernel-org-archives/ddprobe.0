Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6988A43ADA
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716070943; cv=none; b=DLhF9LO76I01GmZx/8MVQYN4EMWBfSdEW8woMo5xObrkROp4M3ZXW2OSm6z8F0HdSgJE60013seCKoAg3Lq0yNox5KRBl35jBHQ/ivfNFCH5ozY1C58Xz5QwaQ3H62SizNQsULp8KDqRskYqGQzUH3b7Wu/dg7W6P8nYLj1LY1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716070943; c=relaxed/simple;
	bh=KVqRLc1Kr/AdqksM4yKTtVYZGS/2nsoo5BKylo18Fr0=;
	h=To:Subject:From:Message-Id:Date; b=ZTz/mm27pdPBESgK8M81tKqQnhL3xpyBPyUE17mfJc8NEW8tlnKNur5oboaCdYxDOpVjJFDir05qa0Gj1coha6BeNQAtE6CQ36zyzFX796r1Hqpqwb2eIGzhHCJ7qxDm88nXl0l14chY/baqxr7xVVPyNvMGmcH1ycbiAUfons8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qssUP4We; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qssUP4We"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E245DC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716070942;
	bh=KVqRLc1Kr/AdqksM4yKTtVYZGS/2nsoo5BKylo18Fr0=;
	h=To:Subject:From:Date:From;
	b=qssUP4WeeuRBvSMOlWWL4op1TB71bR/A7OtlFs/VlH2CUJlrIE/UeBNpfWYcIWTZO
	 0xq6Pi1kjJQ0g3+fWH6o/WGlLOrrOXEwgmZ9ZH9rzQUAuahhBHvRrgbONFpActKX47
	 /YERALP8/tSi/Ay3KRUOvsEbRMQ3+LsKdTCoiL4V6WL01U10nVVEtgz27dPyrmB4/1
	 z9QFaxnSi1ij5xgwnu9jSo2X2OkZLHqhkjUsMmmtgrKdtyE793ysi5vjSDXkeeSNkD
	 eSFJ4Rgwrd/8oJFWV8NpRfGZAa9hcOx5HUCVhvd013LrWBJ55UJgIFxcMrXA75NANL
	 wikcmfXPxV84A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6388C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171607094277.30711.715359997152652076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b9665a94d1f26f356a63014cd82598b1b78b4d64c7314085159b6803ee368b
Date: Sat, 18 May 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716070942
