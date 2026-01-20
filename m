Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C893843637B
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768919633; cv=none; b=GAPSPsjQiJNdN05qixr7FDxv8VLUMay5+ztyzYFAy7u5mEZiyIf8lazGCB+4cYJBmoPj66x3TNdb1AMVLQzwtA7Hf8BygVYPS9MSBEF1UJJs0NkMfimOJ5GNaPZo4SU/1wSWFKR5/AYR/Jvm0WcZhr2u9KGhi/q/mM5pmP1RLpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768919633; c=relaxed/simple;
	bh=hzi1i4/C3qUa3N3ISnc9J6NQeb9RClQbp5W2sk8kAio=;
	h=To:Subject:From:Message-Id:Date; b=nQqVQYVWULWl+qrFWDXNIZxizhKxX/2sCv7pv524b7cnLkAKkCry9DoFPHCJYZWHpaNXf4w4YTfe4Oenk0IrG0rra1PzQW449roegdXHI3GOhyixyaE/E7nyPqiS1ssj+lNGp3lyfoUN4AH5LzKgbzE1QVNpYDG1oiUZcyHD5fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Db4VCqyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Db4VCqyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E5C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768919633;
	bh=hzi1i4/C3qUa3N3ISnc9J6NQeb9RClQbp5W2sk8kAio=;
	h=To:Subject:From:Date:From;
	b=Db4VCqycvYyopoG4gtlYMMWevqJLFwx68tzsFvc5NoLKMlSREUl4nQr9hYE5qf6t3
	 uynmXYjE8ABRmZdyiIFpK87clsA6tFkwwQrdvZSL6CvZw0aAJlz1mG039qpSDnWxB/
	 HaakU07R5JYxfxMZQQ0yHgQFzaMo9xCjN9lqSPW7qw5DIJHSrcmjGQWHrlESkV95ks
	 eeCpGRGoQh39AOt/tiXt38ZqVEChAtvZH9AC9zZkovplmNmbJOkpw6oNTVNZML6bz8
	 ynAszlnKIN+dva9g6oNLhU0xtWoWbeoI8fMtQm9zFLHdJ2e8WD3lHkeEywEJmP2Mkt
	 NSsKTMOeFR9Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E3D2ECE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891963358.5388.5061616378706758440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710dbb15f5beb839f20ec78cbf501e552d96985d58a1bdf47ca764956a44cd17
Date: Tue, 20 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768919633
