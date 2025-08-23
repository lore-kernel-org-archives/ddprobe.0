Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D338393DEA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755967794; cv=none; b=Kh0zwPWeok4C4fMHWDsQ2rRlpRfceFHsUYMhu6jxPxAKYIkCzgvRj3rgIKPBtN0L78kHyKr8RflekXytLmO/d+/0AQJIp+U9SOuz+1khS0LStyTbko8+1hppQdJ0kdcosj/D3rf3acTC2uGOHhujqajjgqqMMDx3dQqErU9pKdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755967794; c=relaxed/simple;
	bh=pvxM0kYMO2yEYG+4J7dBfmkHR/g3i7Z96TspZIqeldY=;
	h=To:Subject:From:Message-Id:Date; b=nOaBezxyE1No21tzZQ1k20mHquxNe1JD0RvFmA3zb0jVqGELoAn4PnNbOw+YtnHR8+Y5BkBNt1gPSDTJ2k6WUvp+wPbVOUIrkwI1PRZXUT/YjCiUaPA2tB8vpmslsO7qg789ugDakRjre1XfcPMO+We/wMuoxhaF1l9zviR3i3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeO1dbXh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeO1dbXh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09E9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755967793;
	bh=pvxM0kYMO2yEYG+4J7dBfmkHR/g3i7Z96TspZIqeldY=;
	h=To:Subject:From:Date:From;
	b=JeO1dbXhzSql2KV9Ed8y1vW7DI5X0KtNo7munzzEoP/dJmubk4S3TBQMWYI77BT0p
	 ykxH9qP1WfOgkedaZnVhuqhGWD5m20s6/x1S1q1mdKo6DsB3PB+RfBiG2IrlEp3XQs
	 /C+cQGtLMqtrweSpcuVo9F8bCHhX6tqUv7X7dJDNTBrZq76MaV5RDJR8oPQd1xDgs8
	 h1rLqyx6KfiqhjHoG45wgZaabX7mU4oNJ6VfUozNQIea1QWiL7HlFgcvy9lcEUOjNP
	 LxjjAyl/Jo7WUaI23P6Vx+FWdvFSByl2jFCHY51LrcKGxLYMP7nV7sSv4LPJ7LP0TQ
	 AtnT9MipHPGqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C2CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596779358.5686.14287138119255604158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665f0ea2c0c0460d4fc25324fb4db5550e1f47ec7f6b4a924c3f1ef08662c459
Date: Sat, 23 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755967793
