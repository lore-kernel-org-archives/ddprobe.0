Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F403637E2EE
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774852494; cv=none; b=ENohu6TMf85jSf9QaG7b3Egg+TA8WEi+VuAgA6QnjXQ9AT5+VV+T8uNBFEdknu9EzvMR2C2sOD+27gevaS+a0fBopgWVUMadBD/2gBgQBabjumQWVYnKu3o9oXHsbuOsduG+KvXsyR9Sduvv4Ti+Z7xowioqTxpC0nYXMJe3c9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774852494; c=relaxed/simple;
	bh=VKjAlUQ9LeqmfYjW6TqBUaVwL+zqbOVIC5wle6Mce9I=;
	h=To:Subject:From:Message-Id:Date; b=PLbkF9vNzWIrYpXY0ZuLWXzEM1j83Kk/lH5heAkEbE0K6jKigrNsQWCOSX2WrdggzXEI1RMjzICPEllDLdmi9tSN7v0yFutsHGd8L5vqz88cagkDzHXgS6VtWSTPkK5LaexGL2OiT+GoTv1WLsWBEkVKjWiC4jyYTHa6+Smd5BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c43tjmxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c43tjmxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DDCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774852493;
	bh=VKjAlUQ9LeqmfYjW6TqBUaVwL+zqbOVIC5wle6Mce9I=;
	h=To:Subject:From:Date:From;
	b=c43tjmxoELDRKmNAxIZJ9OtB+Wj12RVDx/e8z7pFzeLPfftN6+vw09hV7E1gxR+A5
	 SaCqzZ/EqaHj+V5GT0+cdpUhebT/zkinhc18C0iYzc2Ce5mVX0pf4nn3u4TSkDz4Uw
	 rX3PxzjXySL4gQar1BFJLrobWfDfRSuMA6aDsQwt+f4e7JhUJ/bjgeevTZkSC64xA/
	 PQGPOrLX8qsT1WwFFJJAqR+8xi3zQ7jGpxq9e1rbyTi9ZYdfXOaOh11XmDLd/lEH7c
	 6GtEaG4N6oymnn8E7u2gKF2IwSncO3DHDD515QvcpiNPJRa8J896zqKsKx/kzUm739
	 507QUe+eEmDLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F1DFF494D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485249358.30683.2988076232940170458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd4aec9e88840ab9e90aea6a599e55d698a101b1cde6ed279cddb93770190d2
Date: Mon, 30 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774852493
