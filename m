Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5657732C85
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 18:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714587144; cv=none; b=AmoWggnMMHqKKMnFHOqnlinYZwDXyJn0ypKPU+OBdJyQFrbftqnGfbY7P4dVptJLawdYdj9mKVeDcOpbzEwcDCJJrQPGcuw4DZpriXuY+AwXXvh+b7MtfRDsRSzIh40b/PGCtqz6+CR34dGx4e28K+LDvXZ9JDmx1P1otLqQcEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714587144; c=relaxed/simple;
	bh=5rNpXsgxXifn8dCm9K/p0KS13qJDpSKVUCk1OS07Fjk=;
	h=To:Subject:From:Message-Id:Date; b=iK1IqapgPv5ydpllfm1w3ud2OhepC9pHDZllomR6H4mLaPAp6Cw69LN4lQbKvOvo/L+mjNdCum7KDRuWMEv/FcVHOHv9fzgP9ARAUwLXbs56k7CrjBQIIgR/tQJsU5NoQxIfExXTaxT/9MXSs/YDsdXoDIo9PwAf+rAr/eDajBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8ZbtgsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8ZbtgsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68A7C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 18:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714587143;
	bh=5rNpXsgxXifn8dCm9K/p0KS13qJDpSKVUCk1OS07Fjk=;
	h=To:Subject:From:Date:From;
	b=G8ZbtgsPWZwmmHZWGp5YHTmgFCyShvqVGdAo1dyfXBo5IvcUjh01CTJsIdRErb+kM
	 do7twYP9SLxpptm6eKMYOE/09RBxmLw12LIqS62e62a32vveKq1lOEBDjj6wED/gzi
	 QxbfSj+aO6ItAJjt3b81qMQxU/ObKKoTPb9EVD2w7cMu0BjNrM5V95FsoeSSazCP6t
	 GveEVXLyz8G3z2qgN7gTg+/vsI+bD0pFRSwRLTdUwMrDg3AxKogjXuNi72kR0qUAeU
	 JoU6mepzSKUyTy9GW5oyvRBVtz4NZ+9RBXfKP7LicPh54ecVbJuWfmRlJ2F/uEAbLh
	 60hGr4MqPPYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA943C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 18:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171458714275.2272.16795894999306668008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a9573751279c01085d0113956ee77d486a790833c6dfafb92bbd00ce2a821d
Date: Wed, 01 May 2024 18:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714587142
