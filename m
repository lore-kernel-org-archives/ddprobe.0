Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331FF174EF0
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742975395; cv=none; b=gd31V9BnhzGIRg2SWQ9fezWPmVzdYKJjnNH73RG0vGB87RL3A3Qr7E+LcQeGB5z8baRaiLoIp6VyejdefBkbIXMj5vquPML/sytxZMKJnwgdSFiFmd6JX93+NC/AHSpsqbQgWcI9rwQrIF3syQPN/MOU1y4yKKOD/OQk6L/QUbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742975395; c=relaxed/simple;
	bh=A/AluJGjAPfXMpkEF1/Noc0E7pNLGCTsS6O9YJoT3q0=;
	h=To:Subject:From:Message-Id:Date; b=lf5w+a/kthgwUz+ab5BTZJ635hAi03vZ4HsofNHg0elqQBZMZQaMwNY91pLU785d+3Q/NccJjtAlTpEvM0Z1zsBKLe9kakZKS3JRjqKg3mx9M8p5c1NkI0sgHumNMsL/MaFeoAE9Wa+kNSCN4x7j6jF1BtV/0XGs70wvDUOhwLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P6/N1XiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P6/N1XiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D4EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742975393;
	bh=A/AluJGjAPfXMpkEF1/Noc0E7pNLGCTsS6O9YJoT3q0=;
	h=To:Subject:From:Date:From;
	b=P6/N1XiM1DOSlqWP1VTT2yFdOnACSbpgt7rwS5Sqql6AE2ZcgcB6XucUV7USVkLyV
	 S4JcE+GnOUAuSeovr6TPd/69TasjofKDgyS3XdOHdrXffaW/4nvmAUxa2zD8AkCcfG
	 AWjzMsCWk+8qAJ55KhxIKv7GjPkxEoYMubvbW4acMASDmbOs9vW1+uCcsD3V1ATkjW
	 9dDB7uENJsqPk84F5nZZeqiRQMA8pnpm9BnjaPKishBDsdumPq+vcyvyNyesao4Oci
	 tF0uJ8K2dvMg5dBOJDYnIss968EhcIsA5ADJwxiEOPIBE57kENgIY9vuR22Q9d21zI
	 /Co15bf8TrfjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E5C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297539359.2670.1115422342778806030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7026f47d9a47de89312fa86627ee3aad71957f9ec2d7094497d56dc1cac20511
Date: Wed, 26 Mar 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742975393
