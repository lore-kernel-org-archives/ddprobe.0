Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238771DB372
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736981754; cv=none; b=gbC3qiBZ399B67JKLlFDE5n81FWt6Pi4scdxuc+EPJg9p1nYsnmXKv/SjYV8tpnX9nJbjZQcO98P2SO0vmgdGqmcO1qr56cCpv5w3eyL1HwFn8B4WuzZ7YLCbYh1yD8z06Iw8houWXfIaZX2ljFMeK4x+oxpJUtZ5nVuovZ9fqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736981754; c=relaxed/simple;
	bh=mdW2Oiebc5pB3kOlvEwOKnF0YCdbpPz0e7Kzyr8ecSE=;
	h=To:Subject:From:Message-Id:Date; b=X6zY3Iv7JNKE1TukfX+DHArz7+SzgskNQMYxkunk6d6SoxlltydkeCQCVoYcx8MPsQVb7sHLooJqjuGe4S9zdVUx4fUMvTzN30GAdaiA8rVLdb+oG0XnpFkUZjfTikGcE7ozzb/XZUIydxUD+y5n4v0y8MZepLveNciMjYQ+SzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pq3C2B/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pq3C2B/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9500C4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736981753;
	bh=mdW2Oiebc5pB3kOlvEwOKnF0YCdbpPz0e7Kzyr8ecSE=;
	h=To:Subject:From:Date:From;
	b=Pq3C2B/bgwHVnzJbzTaYGPr7CakSZYdnojZLoLm2hoCN1NMGrLGr12WNUVK0QXfwW
	 vTAzjKgpajJjWw0N+HUWc9EzE1KIdQZtIITsImMhaz3lRjY6e1n06cF3p6elhFZr7N
	 +DnVgVmgNeVLsyaGHzoqKV7iHrtdrhHhI3/K9qyBrUnlZuQdCeEkVsm+DC0nxXFs7e
	 V7emGzz3WjVAwXiJdojeIVSGVI93CksOwk5fjftfoGNr5g7SAu5FGvWCIhYF56Mrjr
	 oARcY08GOPbS4HMtNIy8KvLKvos/GL5+Y7cCxf3bC1QrgTLQhHaXADe3ybSXuKZWBv
	 3vRsJKaciLpsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963B8C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173698175360.2149.9921106074127581929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1f46f52c8121017331712aa583d8d1100c4192fd1006e527fda51f961d90d2
Date: Wed, 15 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736981753
