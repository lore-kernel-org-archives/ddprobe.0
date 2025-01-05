Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5B21F5F6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736070954; cv=none; b=jH5ADCXMQlsSW+p6U4dE51BSlCTo1u+o5ou6prDx8A+sCKWKq8la29X2PShf9OPx+iEV7ve51cyXZa9caAgdGZ3eWq7o4QspdJNJGB0kM7kSCBXA2h05rZ/MMXANvpn3fYluU2mYggh+JWz3AsyiIo0XBoEM3nLzOgnd3NpKf14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736070954; c=relaxed/simple;
	bh=8s5wXcwJd5AAfoTDBufxHp8NRVWV8Yx5USc0Zk/xVGQ=;
	h=To:Subject:From:Message-Id:Date; b=TcIGgFqxEgfElav/CBDkc8TKeq4vHdiI+Qrv18UFFqAbf/bveFAvxBVzYMbVFvjE8gYY/VDynlFQJJPseCD+7IVjeSHeNcRRM3RaZuUKdobuR7pHVw8lZbDcEa8RlxZrOj6NfVjQQTtN4Pbb26L3AlouBMRq23aSwjEuVudl6Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVuS/wWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVuS/wWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B4FC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736070953;
	bh=8s5wXcwJd5AAfoTDBufxHp8NRVWV8Yx5USc0Zk/xVGQ=;
	h=To:Subject:From:Date:From;
	b=UVuS/wWNwV4G9mRiHKCgmE2zcchzfUCfcvCynu8QBWnY2kL2AEJ9pbrHZ1Ut8Q1ex
	 njZtgOOyd3UG2DYeruQSRRa3mTz70fxFNgI1XfJAaQSypkAxLsM5y0IIImuBjtQ3/O
	 hep+QQugXXQ687T1iqPRmzXQQh6lL+FN/xpBGqujhvPVdiHzKFzDFRcGoghP5HTBNn
	 9DvuMiJrhrAHmAnNe07O6Xs+AeyDUCbEzQ9lbbZirCcvvc5L5q4fXX5/2D1wh2iIsf
	 07coPlkkbDQFhLTgZp4s/NtzJk9C9QVCsD7WWg79IIdZKKoGtQlRCW6U9by1j96O06
	 FjjNL7MyOr1jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A410CE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607095365.476.13780413274369316964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c64f54d7afd3417a2d8281aa1b2586ad9fb6d5fe827a1cd87fce38fb1f04fc
Date: Sun, 05 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736070953
