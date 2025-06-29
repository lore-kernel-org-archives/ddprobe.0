Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B67222FE08
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751208594; cv=none; b=VQF7DZYyF2oUIgKj20GThElg7XgZJyNsVTZtxWFx4t3rDluTdgfsAJUc61SL7A7TYzLpmlBGrg5ZUNCkCzTb4jIN/phka3gAbJi/RtN1z67VmPayAtLF0WaBBWaVQytzGqf+uzSmfYKyH/qodwrYQeUHzeitczRVpHQ5+JYIXJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751208594; c=relaxed/simple;
	bh=h3isQXGjJ62XllfJsm/2jAzmwN9hk7U4jnmcdu1TN04=;
	h=To:Subject:From:Message-Id:Date; b=jw+QzVGWHUy3uo0mndQ94leV+XR944WFcjz1wFseP8DLEo+mD0ixjI/AycNTLEOrf3mq5bSTvTico4Aiu+Ilie+3WEHXGNcyuMvFjzVCadZfWbcdpikS7EQDNOfrPaPOEIHWa3n6Mbjsf2rLpY/+SoNfNc9ArnaYfdZjClp57S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJNSitVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJNSitVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 968CBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751208593;
	bh=h3isQXGjJ62XllfJsm/2jAzmwN9hk7U4jnmcdu1TN04=;
	h=To:Subject:From:Date:From;
	b=UJNSitVhgJ6qcs2Mb/MqbvnOzuljODGFiKXjlrVJz8y7oqX9klb4Az5aJGuP1rdAB
	 5JC+3lQLY0a+kJsp9pW14I4r/QEnwmpESXPLtkfxNp26X0Nb31RS0GfGKJBChDaAud
	 ceKpVUnsI+MWH76zJvc/68kaab/1ssWOfXfqVX6RnwPW7Ye6HMJrWZFQwbhvvY+pUo
	 68kdxJwsTurpRlDqxgUw/SO1XtiJuS7vGbf6tctptwcXBjK7GLI9OwwgKxWyuaujR0
	 OTA+9czux1E84kyVQok8aDI2kAsY9MofHs0wWSllDDmjLqyqh87y5ofuGdF1iHAn7n
	 byibO741m/DrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CDC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120859357.10294.18152798188058906173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7892e63e99878cd9095ab9104f472ba0e097848b9b1d39b5582778864f6be84
Date: Sun, 29 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751208593
