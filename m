Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EABF2E62B
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718329703; cv=none; b=PsX3Oe7wJQp60shQFNDroFjxrZcDDQljOEpsWMHqO9tAjKXA2qLKBtImFUx7eyJQmWLVvUYJE00Nd0Flq92ol8ShlbexCe9zXQ72mDYXQvMx3u386NuMhF1070icwsmvUFu1uND0U5BGqsf0D7oxQkpeh0mwYPD1nlXpYJUXT0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718329703; c=relaxed/simple;
	bh=MMb/kOoWAgaG9x6tUB5HsA9yiuxCiYrq+itnW09CnCw=;
	h=To:Subject:From:Message-Id:Date; b=uxfDr45Zd1e1HwacFG3WOkZmmv9CiTwzCHJdf+zt8waHII9DCPgIR1UHDDD8pODA1Dmno5VmnVXvX240JPuq+Q//QmvWTpwYMUfiHmX+fuHu6y0e3r01GzUAtkLTydMfXJyYl15TADRK4KrHOT1IyxUQ3AUUj8+Nc8T+IlUuK1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H56fwUyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H56fwUyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61A6C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718329702;
	bh=MMb/kOoWAgaG9x6tUB5HsA9yiuxCiYrq+itnW09CnCw=;
	h=To:Subject:From:Date:From;
	b=H56fwUyNj5yr5CeDVQJkgBF0GFQOWWyr2IocumtZTpigWZhP8GERDQDghOXEGT24I
	 MdB0IcvME0K5igitYZDfMOy9EMLPm5NTpNBs/EBhxrMxxh+POhqv/XEbRsxB3w8ER2
	 4PjsTgejbhaBtY3u8LYv2XQokn/UQkZHPW2/dcSxgWoyJWrR0S3wrq5Ysr4i/z11da
	 EAzxy+JK/DxpJoSIri/2ME/AGWaSTZodd8Uib6882kAAdZ6l678Pd1/vNBpcYC4ab/
	 Iv8mryExr9KqHgNQ0P698Drs0v5CdlSWZSOWv/HBdolRrMVf1xE53dimz7vt+huzGv
	 3lx9/Wzd6nJNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBB1C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 01:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171832970277.16309.18424626920140628955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a865f569366755cb5296fa94776cc44d44631d58a92324a3503ff0d7d68b70
Date: Fri, 14 Jun 2024 01:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718329702
