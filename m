Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5FA513AA5D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737484554; cv=none; b=AxcGRGDknSJOfUd1Si1pfqpYSIwPIN5ddGjY0fHvqw8WoRuU5PzCsKIjsSyb8gngs+/rLLVTOAa3DR6gdTTHlh31P2QwVkppV7GvjF0YCBgbO840MazVDKoE5eUY3EfLKdRbu0Ebt0bLIRa8LFR+InBeAzB5EA9xw0o4kvXur2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737484554; c=relaxed/simple;
	bh=ejlCQcGZLby6Z+zOy+LVo9K7E1FR8jOubVqiLxQ9VsI=;
	h=To:Subject:From:Message-Id:Date; b=fu6/HATUQiFDOKp9eBQOzwa4SeKXGtyJCrtKmbkxAlrNybOxZ8hur/ZMe1gSqy0UZmrE8SLO+0cm7UtXbJsGskkFPMYSBE2tPrFJv+Zx6haPTrMUF2EbTuI5sT8CkgclmnyE7e+8iYTaU4oi9/wL/8sFmNPi5E5zhOhIxkYLZhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQUFFSZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQUFFSZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B833EC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737484553;
	bh=ejlCQcGZLby6Z+zOy+LVo9K7E1FR8jOubVqiLxQ9VsI=;
	h=To:Subject:From:Date:From;
	b=TQUFFSZzf3tAQUYVBLxSZYV9Iyc4iC95q8Dzw24YNSewBdWr8fxf7ajpLGoA01spF
	 IIlAQ+i4nKZ9sUZU0yY1H9civ22yyQa/PRu/BKjUHCeyX78sxI5wTBtp9cl92kipOq
	 Bn2e9klZdsZqdkpg/fMU6iVrncstIYERX4l7tVWsu1sHxXu0Uc7op5jZD8ervFM65G
	 NIhPe3ythUmZ5mx+IZQvkxuxIr2mHcE6DF9l+hVzmC3uc+SrjFNJxZb7faHeHAzM+K
	 Y4QJKuBoMleW8QWhnOAdWZiswoS5odGcMjY3YhtL4ZNURUr9SbyhfwmQ304EeYMPGi
	 UgGJbqXrCNRYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8B5C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748455364.2987.13821871260952037634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e0866d45dfa2413c282b5f384e24622e906ddf2e20420001bb32a9718e7b8a
Date: Tue, 21 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737484553
