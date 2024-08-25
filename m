Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CAE2E636
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724603754; cv=none; b=GJSmeyGRmiBa7rv28dnDR6/EFvBv8XzsCSQauWrfzzytDWmcYMtQW4f7IqSM4ObFYCQ57pTuqr/qP1fF08tGwHYbSLYWAiej/1SKz+h6Sx20A3+KEcqR+pzgbjFp9pKZL7ec+7Z/Rw4HQJ4ssRLM9G1D8ZVcposGDfnLc9X9CeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724603754; c=relaxed/simple;
	bh=5Ws9RrL+MpMobxHvMAP/0xl1bIGIR5Mtd2JtR6uxZ0E=;
	h=To:Subject:From:Message-Id:Date; b=aEQPZZq2PToa47Ytn/VgRVljvO/+Ro6mzT8HytEbS1PS9JnaOFIIctbsHh6Cq/CzfGym42Mga7934hNHjj+RfwACQsCKBhqmJwpZerhAJDOnYhmDUk3YncW45N4kb2P2LBKy0q/QB9C5hJeyLUG/ltif5QNXghN4umOSZgxsjQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=desOyx/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="desOyx/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8885C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724603753;
	bh=5Ws9RrL+MpMobxHvMAP/0xl1bIGIR5Mtd2JtR6uxZ0E=;
	h=To:Subject:From:Date:From;
	b=desOyx/fxAJ7fv5VUMA3GmmCkE6cRUvTCUj9S3Mv9yMwuWGlpPFb0hD34dJ/+FSeE
	 lmAwb0JvFnz8w7zWEVJbfJNqy4DcyJ5J3GfQFjxwDYhq+xXDQfDxvPgfuhStfMCKC8
	 g4C+m6BYFGkHhqGKUlD14+FV5x/yqJxZjz0N5Po6mbO5DdppYwvfklHdFrY/QTVqdT
	 dfT+iay8kDytI++1kY9fLAG/Dc4bkKNZUhdnjD5y07HXsAlqhFZSXSql08SpxffBZg
	 zS8QVQhHVW1qwnXljwiLWfPizFbT6Y0FMEZcAvJmw+4GQLi3h1viFDl9re4bKClTJA
	 YbdxqlRXjyaMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAA3C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460375362.32758.16402646665649011653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a94deda50330eba6b98f62b007218e162b34da217e768d60496516a50082b485
Date: Sun, 25 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724603753
