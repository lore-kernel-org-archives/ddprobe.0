Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4514B3B71B8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790184634; cv=none; b=NIyKQvSrbSsyN7/Ei/VWGEOFgpwYotTOvSY5v0W4nXvvEDjPPQo6o4DNr7RX5eigUjZ6+6GQfRvq729+Jt7Qi/gT3sbm7d580N3bbKKr5VnFo3pCLWANXYHcZYg1JayKWED/VUln2D1VNAsDvzy59oWY9Q0FgXzcgYWkczugtsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790184634; c=relaxed/simple;
	bh=OZAze1lW1T6ONQV6Aj9TfMFqbafzz1CoaekkjakaUwQ=;
	h=To:Subject:From:Message-Id:Date; b=lfN1KMrur5uZakguLRZWrs+GQjUyPgfUMV19kgqnv+pPN1LrVehHcDohulvIB4Qe4gh3MYSUgoNrUzZsd2HmyjTKsm4QicZUr8UeN/oXGt1MmDA/pbYjv0aElO5O78S2E3x9gxJfIWeefgtIpyumh6iO5YOQ/UEGeSXY3akbYlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToHZBuZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToHZBuZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF67EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790184633;
	bh=OZAze1lW1T6ONQV6Aj9TfMFqbafzz1CoaekkjakaUwQ=;
	h=To:Subject:From:Date:From;
	b=ToHZBuZlOld/DDLZ1Be/M+MfRiGn42NQOha7Mnk68e6N4Ne7/kS23wJy1aVmuvLW3
	 nRtk5FWuDx0c3tbIATmc6DYaTtYds+gcS2kg4tD7EOwTONzqYcibzHX3uTz3DVmh42
	 wg/e6UO8iEt8wjjuX10jlOCgX9icgtaHh1oP9GytX6M2dBpa0VFGc3wa2us3rLAB5W
	 SVL/DmRFzz9jWggqqQz3r6P3HPZbLxjwZm0PeSrsR59uHmEnrPrBGhFA/3Lbn1DOiU
	 XhhNZQF5ouU+LDkKdkb8f/QMH9I0UMyl6A0clH+eMVR7FyXlnNCIdMvOXTWDiwt2k8
	 90BdzemSZR0tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF5DC9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018463369.5946.11816249721036478921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0729f531680bf1528aa3ca0174f36ab83fede45805814fc0a5ba77e89bb6c9e9
Date: Wed, 23 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790184633
