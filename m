Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3015E19994F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748801394; cv=none; b=eSPdCWLLP8Kk37/oZrvY8wz2idI5M4Dm/Br0nAa6B6VvE62ZvXq//NOSLAvn4qjQQQN5pA4rzVzBT/RUK5M1NVHDG/ciMa1AMxr+3e9sjMsIBLYLg3NbZp84732FbBuGecoBMszv+kfcjk+wA95yqPcqDSVusfoFKl/yG8Tysbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748801394; c=relaxed/simple;
	bh=C7XUQa2p3pdas65YOfgZNgQTW0oAIE4dE3KPQV5cnDY=;
	h=To:Subject:From:Message-Id:Date; b=oNW/FQb545wZmx4DqcEOS6+ItlT0JGrL3bjOCSLtIm+uuXt56wAyK3kv4z3lEBJjmaGUca22FjSyRBk8bwLyTIFeZfzHCmctdL74yWxuVmY95PgtFNlrNeeBaeC8uPW+iWL53Bc8NA3iFMnixw8di/QyEEMC3tszeDG+IsekCGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gm0TqbMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gm0TqbMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32A3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748801393;
	bh=C7XUQa2p3pdas65YOfgZNgQTW0oAIE4dE3KPQV5cnDY=;
	h=To:Subject:From:Date:From;
	b=Gm0TqbMeuZNMkeDPslgnWZ+1cfvjGO2kvvaEFoQjk2l8xN0JZtuQ5SN+q+B/fBG3N
	 etfjTTe6AOdq0AdJnpw2TEPhaOfHoqBGkNiA9+rARBl3yk8+K21btSo870RQB9hBWJ
	 D72d4ZuCCK9q0gl3aYOrqTopWMWvZClndYREqOlo54TEEwsYyEtrbC7DiGHEjZlFs6
	 rr61Zre8Uu+AV+F3yvzONNxQhVvdaK/K7rUDEWE97sWGrmNdKaO/XIq4lT9T+Ig1Pg
	 kKkqytWoHLGUkttQNv98lhwEgkN7EDypX1XyCSVP5kbs6CW1gMN7t4nDBmseOY4BmU
	 NcA3iHaYROpKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7EDC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880139357.8342.18189388722310370731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 127fdd4152b2a1090978801549e1973ecd8a73d0c53f6879b56f4040243923ce
Date: Sun, 01 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748801393
