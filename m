Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DD914278
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705794497; cv=none; b=U141sHCGEANcP6WW//AaprAMDKZSAu27X0WvJiW/pSo8oZnGY04pS8PPPGSnJ4lui4mlXVryIYJEABddikW8HwVvMa/38KRLn4JVWVKpERdP1+kV3NV0X7EeEA6cFuJH/F/f8RbKQygbROZ5f4wngicTquIgqgTqfVDAwMGorPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705794497; c=relaxed/simple;
	bh=Ro0ACs8wPGpeMql9owZ8FYFiuQHHHDm2RODeHCzrJwE=;
	h=To:Subject:From:Message-Id:Date; b=BQhVU1gfFmFR5x43b811wFfVkdwpKoFlFl7ongy44LdUojy7aGvPzyAQqq0JoZrz62XC3E7t8OWflQVGLd+mIxGjqiX+9/oippC8WuAIfQHrKossh4Fh/NHWyI0LDD1SIc9LfioM/uR2hzw2Z0tkDYjfjAQXLI3YPpmpd9K7GBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTW2cjIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTW2cjIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D5BC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705794496;
	bh=Ro0ACs8wPGpeMql9owZ8FYFiuQHHHDm2RODeHCzrJwE=;
	h=To:Subject:From:Date:From;
	b=dTW2cjIWcmIGlt5Ft+Ko2SZD4iaYQBHfwm9QMiJgN4xji+EvBE1Re4d+nsQ6WhA91
	 S/rTI4VxcpjdWjnhaMFpJt06nm0XEZ1yxYwEbN//u66FrZ6zcYjbDckKfYn6f/mbei
	 P8fV2p7YJ5UoS37hPxvaHU6tM7mTZryhJ0hbh0ttyIo/vXpH/NDnbPBGrhErjIdPW+
	 O6rW3R7vthxjXpXYfg3xfedBfnTOcMmkzHbaPPG1oGmtnIANwTZQD76PHtT7OzXhpp
	 /jyWa7XCoGAIiXtoB8hcGRlxcEBpmfON1v/Q/NETVC9dswXI8CMhMTaYMH/EjJpL3d
	 whZdkU1kvRkOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BEFC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170579449637.26599.16517052686511107891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103b6e1c9ab4f7cace73eb2c8dcf41812248fb953992572cf2a682f432bac8e7
Date: Sat, 20 Jan 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705794496
