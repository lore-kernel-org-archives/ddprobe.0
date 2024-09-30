Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF55A47
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727674554; cv=none; b=NqQXjmtHCylbu9NfYKvNbYRqg0VrMk3LrfFk8LUdinCOo/IVty5PETFbk9ZB3h/I4czPn1sBO3uRdBmKORQu1t5VIXisPS8OJz4YzsEklFiaILvJ6hYUx2VHzJ0fk7L6Bggiz/+K7uM3X3gbI3jfZxaD7gS/yCJwy8wNrqvKaVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727674554; c=relaxed/simple;
	bh=K9DYIdXOIPEKPJcmX8Td2UWPJKej2OkoiQZEgxkuY6E=;
	h=To:Subject:From:Message-Id:Date; b=ZB1NNASc6tE295Ojh18A3d9YvQK70ws0qXFkx5xguC0EAK1F6Z+6SnRCm8rpZeg0/RvRkCYuY76xcIlk1m72ykDH/wt/hqkSb5tfX1WWHRHJrFL42Td8QC+rSzYAbAab0p+XvX1WcfVJGfaov+E1VvWyufxjNwGU1KgdPNQeXR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2NykFiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2NykFiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1001C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727674553;
	bh=K9DYIdXOIPEKPJcmX8Td2UWPJKej2OkoiQZEgxkuY6E=;
	h=To:Subject:From:Date:From;
	b=u2NykFiI+V14ak1a7ZahQ5j98JhCmuD6YLp6kQJnB0r87CVJliotl5EqeFYqmQcYq
	 P6AmofVh2Xa2TiFIdPZksLugl3BGU3ExvI0MQF26QfkKSBIrYqUwd1UeRAda0KR4nX
	 J+6Lm7XnNkRrwLkhshwggPgEwyGuKgQ3YfJpeD5uycKpFX2wTf/OTNr/bb4Big9Pxl
	 S1S7MwrMJ7ugZlVRzWCi5IXGOGtw6rMc9Sc8F1ME3oBFBJfAi9oEr5aMt2g2wdRYfT
	 g2IncT23ZHzDIC5VkKwyWkQhs9NQBJ2DjYIL6l3+Sv4bqX5uakdm/KShFJ0ZyqwAOa
	 k6OLd2ooi8bng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F485CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767455357.25258.11133620582149985648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72852cc9b91ce683c8da7fe0177b5cda5cf4ee8ddbeb2727054906868649ad46
Date: Mon, 30 Sep 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727674553
