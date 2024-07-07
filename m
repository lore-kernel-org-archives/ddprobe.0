Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5341E14A84
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720346184; cv=none; b=upSAkmwCgWjD9fyayurJjdo6tufcAy0LuttAGzaoTvQwMkczrISoMv/4pqqasrK0A6yT3XGgR8fBqOLIqGqBJqbm9YAZVzASXXdKJ3LY+k2DSQHoW401lAOE/AVProFCGLYBt/9pY1hAnVyOvXLXFjNmddldczkUsjT5dalsHvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720346184; c=relaxed/simple;
	bh=6ae+UxxlQE1HXlT0jGN6W7TUvNm3i4yHaQJGWgWKrG0=;
	h=To:Subject:From:Message-Id:Date; b=f6iCPWZuzq9nFLvYKn18Ibk/Uz1+I04figaUeMi1Caz1Z9/veTQrn82oUSQj5dyvspkySzZTUS5yO8nI92jSJ3nkg2wCar9s5R3ARPD4uQUBHgN/xa9w5dDtWTdmMZ/z+yaOyJJ4UrbdFs8jNawdxVTwdl4eyXYi7lYqCh3GtFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGw9hoWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGw9hoWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4ACBC32781
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720346183;
	bh=6ae+UxxlQE1HXlT0jGN6W7TUvNm3i4yHaQJGWgWKrG0=;
	h=To:Subject:From:Date:From;
	b=KGw9hoWvZExF6YAQzOkncrAU0yrLnpS2o0cNWz80WXDRWF6WwOTUmeaHsKDZWGghA
	 ABAe3kJ09YpXaZgx8C29CoU4HEyIJ/e9sNZ1nxwtq0xaU3cwceTUH/V/WIS9pos83V
	 gFMqOJpWQAK7wqnbzkax+P0iKB29ypP95RM0HSBFKlonKKxN+ZzEf40Xh+aJjp5d7U
	 1Ejh2iswSTJwk68peaKkNb+Z4LjQhH7J3s6542y58LhA7zQPLpUhpWn8doaflNR4df
	 7sHZeAt55Q40oX9hRUlfgSPIJrBnOszE0ZUa6I5395PQmGNTSu35oITHd2ysJTzJv6
	 HHh8tGLYXcfKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2669C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 09:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034618276.1921.2277599850612483207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1fd52dfd30cb7e443f88db0cba46fad3562dececefbf330b89ccc487e441d4
Date: Sun, 07 Jul 2024 09:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720346182
