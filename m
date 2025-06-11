Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A21F17736
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749630594; cv=none; b=bctgihyrCG5M53VaG8GjOgLana+RofG1gjIeQjgZlNYHPB7+kW+2nSnL1pWswtdWZ0ChZZvaK7eXORlFjjX+qHq08uFAzCcBui7Du6rp3iOdx5wAgHZ0Qp8AE/hAVTmWBsKN8nMDA8TcuNWa/qGksFuF+49gwvsOIdJ4uEkCQV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749630594; c=relaxed/simple;
	bh=SKj1I2mcyGmCgY/B5VNlMtYVWc8ogIVtojaTd8tNl4Q=;
	h=To:Subject:From:Message-Id:Date; b=XeUHkiwRDm8rwg5ehH+ONzEeZa08kY9a74SUS0ZpKaCJ44ShSAjbDUKtbvPfxG6SKpLdf9jVP/FYs1lPIkTSzCmd9Zie5SSw6K1B7/G08V3jR9xlFrWgaHild1bwFmbthAlJEj90Sfj+iRMPNYmdxrJ0lt1KFrrXgU/rYExkmuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzpbhKtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzpbhKtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20B1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749630593;
	bh=SKj1I2mcyGmCgY/B5VNlMtYVWc8ogIVtojaTd8tNl4Q=;
	h=To:Subject:From:Date:From;
	b=gzpbhKtNVO4AHafez5gn5HY2cGbwbTsESRj6DcmofdEXY1ftmwid6DiYo7R4BRbM3
	 4cNuDzbelEm9aLEjwHymfuL8EzAqf4qyUxyktACwl0g8boZfGlmvaOlUPP+618YTaE
	 /KxpvV8uHYM/c4J7u837by+uHYpVR0iEDyudJQWxzofyNY4F0ZczFnQfFQJmB5/pjy
	 91+r8xWl5m+Z5IrGwMUiCV+hWEYUnKKwvRjlPotvENNetI+AiPn+9zeq4xW4hTGbiP
	 xjODVP8f6AMFXdVkcEAEGjnttOHqnpjb+ehO7xZxjvllBQQWDvFl0RACMtKNQZhZHy
	 siIDIBzqD/5sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC80C61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963059357.14588.18358473662282389709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269c33b181259dc6ccca89b133297fa0738b5ea221e4e8c2da82a1edda6cdf9b
Date: Wed, 11 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749630593
