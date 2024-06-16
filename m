Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C6719D89B
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718502503; cv=none; b=HuO9BnU9BV7aQA6tHJ7FFWSMVpQiayWUEB1w+CbmNiVF3AOollS6M6YwDSWJMpOwmu5NwnTHd2D2fzdbyVHMa1ogsURKz1R9Zok7Ac1RZT8gWvbBVIiFf2MAx/UJaPEFcEmo5idr27JXVdXCs+T8NrTjjfrBcWTICjdnBYUrALQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718502503; c=relaxed/simple;
	bh=gJsi2HKlEX93AcMkZbeqPXOpWT3FqUJV6RPPYZMpHkw=;
	h=To:Subject:From:Message-Id:Date; b=HQaDBnsvq/D+VrYoK8IQ4sStX59AZPbsJ5qkt0SxFfO2HxNQhgrqYnBJLIpLql/1xvATC4BBuKrwfVaej59fVOPpZIeX3JeVDhBGsxFdF5bT5o7SXcYhqFLrDZhil+JhyhfMWwbPYtH3IYMM5EzJZGhUdfR2UfHXKdD+6p10Q7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIPKzN2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIPKzN2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D7DC116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718502502;
	bh=gJsi2HKlEX93AcMkZbeqPXOpWT3FqUJV6RPPYZMpHkw=;
	h=To:Subject:From:Date:From;
	b=XIPKzN2MLVInt4SLDM36Q29zDT1dIBzA7Yh8onANHDsaXR5mJCxPgxmjkaxH9tboq
	 +poEDir9QRg8oSYORsDCmUcShSfATNi0zQly7hAIbw5eJ11oqeJy5oONiWWMcQNozK
	 m0sBDb1JS14TCXpUa1D4kA1C9OJA8SJ+NnHX15aJH5Ddq5etUUbTd+3qY3Ff7Flkx9
	 WBCCTtMbmfOzwZEHMizrkKqLjt254vD1CKqI3RoH1QyA09cBJCitTjGxl1ffdatAOz
	 YgYkzezCDPgOIFLAkjJ1YfTHPwa1qWdPZihkJKEFQM/mhDq9b8BX9+SZ8nloXJJwkk
	 +SkMbyetDVH+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F7EC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850250279.5605.2022918820082046241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ad4b807d7f3465840523fbeb4b596066917605a8d809e461e3b694e04464c8
Date: Sun, 16 Jun 2024 01:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718502502
