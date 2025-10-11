Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093E2195808
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760220594; cv=none; b=BXvo4yhjMy4JsCeBnE6K2Ig3X1N9FSgUQmmsDkOGEqSKWVt/1qCFJ475LMEF/e4zf7g5pGKFZZLp8IYIOnlGLv/mLK6yKZWlL01jwqBwmlCM5KufhetPjamHWKTVvm2T7v7Swttc8rmnFBd/ArJW8mrwJrIgLsw4t9DJzWMHE/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760220594; c=relaxed/simple;
	bh=i0+DS5HtB3PrQZi9eZML/1I4eby2ZILtXhSZXbUzG/0=;
	h=To:Subject:From:Message-Id:Date; b=H5ZVnSOPFDrAiIEZKV2gOhNQXr0G5S6113xwlBxreFP+2iLwOWDQlLaAsm3V2L+YfdlErEdd2bLzDVR8j+X4zVZ6xqxlZG/5kWaPaC8ss9VxAA+0Z+AvQm1e+ZSR/+7V5nuM+tNLUDQSjynOVsUGN8cLBKpKFDTdd5oh5X1LAH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r82ErELL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r82ErELL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B922CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760220593;
	bh=i0+DS5HtB3PrQZi9eZML/1I4eby2ZILtXhSZXbUzG/0=;
	h=To:Subject:From:Date:From;
	b=r82ErELLpNIloJQgwvi7Rwffm9OLnqNOMSZKBeQJdY2RKT2fNFzvLSqViz6QG8w4e
	 g0aHyccNLUqbN8LqvxoYm+XxrwiKW/Z5b1hyZAAI033fIWkkkUJnI/zWzZ4Uglg0qJ
	 aEUpvKUYDuA1j4pJ6xoYPrKERLAffCpLzqELCqUoCctfB7q8lYo4HEs5ODzZlfMwKi
	 o7YBrAZkowdQPspfu2lbOCkxV+iv0ckAnV8TM1vojVqjmSUzqoQwdUR6wMTOaWLyk7
	 xDJEzqmsMl4HcFm8l0q4zcLlMKb6XFKFkLm/yDp7RYQcSRK7XilyvIEqMOtaYSQDYZ
	 69aDMkHPwEv3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A01CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022059358.16232.14082867006277390765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be20ac2a970542141b55ab5d22f25e70a7ea21a8f7891c831837a37fbbabe1d
Date: Sat, 11 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760220593
