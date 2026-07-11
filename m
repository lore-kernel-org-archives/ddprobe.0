Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC8A28F949
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783741714; cv=none; b=QRQyw04c1Er+s0hQAnMPh5DfPjkqJGd8XxFGcFJ0atr2BG9ucX2K2IHXp9i4mrGUGonrxNKqkWvVPJxY6PlTuw1WXLtfTP3PiNrFeL/cnxUwZzzTlw4lEkDATQZM1Mq+4GDq3PSff9CenUkiVWIvHoaMfvt7z/D9ISErrGAK5cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783741714; c=relaxed/simple;
	bh=zAy4xld5HtwyCCmyHtpZ6waP+kU/TG2nuMz2YeaaNow=;
	h=To:Subject:From:Message-Id:Date; b=W3Tq4HQCfyw3OxAjXeO0UcmAng8UrtObDEhHscvRYJ3IjROE4kW019INZ7vkptjqTyfpOEeO323f0OCrUJj2cqk5AT6UekNtQn6hReuS9qkzG22ua5Q477b0mLmcXRDBBivsra6fZD/XXZvew9v0+jHJsWv3NgdPzC/f2WHWhsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiHhLJyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiHhLJyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD5AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783741713;
	bh=zAy4xld5HtwyCCmyHtpZ6waP+kU/TG2nuMz2YeaaNow=;
	h=To:Subject:From:Date:From;
	b=LiHhLJyQj4vllwDyh6d7XS0OimTZuRZ0M50fFX8Zkh2FjbsXGChfJnYrir3uGCH0s
	 +CCI8I5CrAjtau2gSffISW5mjb7qALbM2gvNmkwDuMdyJVLXP0+CakLa41n735m9Mi
	 eABmH1v/PS2J4Us4fibzY5rNpHH2X/a6kXxvH3RPNegoBuHxlaFgRvfWNR6vatUMzS
	 nGsVDf6wiH5tJwOuhSKN3Cl4fqZs1yMta3rYDZXjKl4HF8VSvHRwLMaEGzD/rFFJPe
	 e7s3s218e+AiZPvZ37etALgnU82xbISqaRpdYxyM3GiBLcHSXAe2IkfLQYGuF9V9bw
	 L3rnoGJ2muVMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A2C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374171367.4004.13142190722098711953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66663708aecf97cd6b923b03134d2febad0b172ba9688fff21114726a335dbe4
Date: Sat, 11 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783741713
