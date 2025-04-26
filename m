Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B49C1E0DE8
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745636394; cv=none; b=fzwJIiA1eIR+u3Jl3ko02lXt/cBAdQ4ntRDR4muzrSgmD9pFqw4rbEhmRwtPTzNZG/ALHmYdGnlzfj0LOFE092Vz2WhNEWQ3JBFTw8lvv4iof+LT1d/W/en5Kg2IFxaEtElGbwxU89FoJJNnFPaZI92QkUWDSOrNf8H9ULCd/ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745636394; c=relaxed/simple;
	bh=n+YWFy+cdYgQGPYVfTGulmmTYBOb6yh9zVb1mJWD2lY=;
	h=To:Subject:From:Message-Id:Date; b=hX+0FhO2ZrYUOD+TVCOVUUmAmkQ4+6/x0cWJJax1vBW5fedH70kF7wm0LLunVk7cjv2ARuqK81WfSByYeaHR5YuX2l1G8T5M0i/UOkyUjIw4LT9oS4gAcVysAm/jIVqFUbOpRyYhnzUqcOI8JayG3Fjv+aCvz8nrZh4sP8ezR98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYuJgD5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYuJgD5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C12C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745636393;
	bh=n+YWFy+cdYgQGPYVfTGulmmTYBOb6yh9zVb1mJWD2lY=;
	h=To:Subject:From:Date:From;
	b=QYuJgD5Ku1hrCuZkCkuDKk6qCHPkmXQqPlTG9nCWP3OsUZEmdNpa1qULxrOJ+ioIF
	 Gzf//G/uZivaSFkYLagMGiphHixzmm7oxSTPZ3DwVlTgngTER25WUTWDk6jeuuIUI5
	 olRIOeoyuIpqCJBua38BS8KN9gY44110fY1PnLkqD7MvGFoW2C64Zg2Pebcu6asBdY
	 r+LUTkmxBDJWOmAhtAUcGueVcCfT4OGxA/i65cv4qZuQ7RtWtduobWCzeCizlK1oxA
	 ugkUGnWWwzHoaIZwQs8Hkiz32XPWaj958pz5a/jFGYcLX/LE/eM30vllR7dES9i4E5
	 vi+H2EdcsISKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94879C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563639357.14176.13505447147667614248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba41c314df31bb5b55d43cd4bb13995b0dc6f7bbb2e2df57c81d237810523ed
Date: Sat, 26 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745636393
