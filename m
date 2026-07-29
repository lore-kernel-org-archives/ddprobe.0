Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7334562A5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785351034; cv=none; b=bz1/mT+sMem8Ea7ZtK513JoYoNc+GLCooH8mVU66fuGgrPIelr0jlIwHPBZlra0NWzYOMLqBB9EaIMqp3Bq/3fFbx23l0g5gSG51wklvZRLdUUUjZZ78i9Vver/W3Xgho+cljB5gDn88qYjFr/+HfLi/TNPEiAQnqD27sb4/00k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785351034; c=relaxed/simple;
	bh=IuvLPvXlxA2CmZBaEVOez3NMSRhsoAmXBXlcBZvgsbg=;
	h=To:Subject:From:Message-Id:Date; b=W0kEHIhoeM2wfPle5tf9Vu+fyog+z3qW2nwdbup9tCC7G5BFtidRS6uQyb3O1HsTH6aHvDnQ+S3mN76pWxuyM864FsIXjxcwuVon/8Xb9jm2pmjPhfMEx55oZOSHimzk4bF4hUdUvbbSNL178bp0pLs6GvRLenBBKXqTl3tkQBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+HYgQOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+HYgQOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8147C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785351033;
	bh=IuvLPvXlxA2CmZBaEVOez3NMSRhsoAmXBXlcBZvgsbg=;
	h=To:Subject:From:Date:From;
	b=Y+HYgQOxY8t1Cg2YKCqoXk12hNvz94tLk4OZHASu7csYO+YbU1piKk+eZ5RacW+uJ
	 1zWygIFCcZPxl6r+5Bay0cCmeDGv4Yn1ncNlSAM7Y+MJ/HahYCQTyzixq8p/8bTvix
	 lGl39S8BiEY7T4zxAYNZzJGNtwHcMK/MQMa3Z7dloc/VSqa3AmPT4OYcTUMz73E94F
	 LfwDawEokVkuNpDrFu5xA/VfpGwcXUVQTr07NMZOfMOOlpfAl0yT4LsU8c6gkaYm7b
	 w76a8XXw1+5U4nE/1dFbwY6vat/tP8cumA0eDTpUughytIZHr5hRCQL76pc8CMADl6
	 yn1KUiaKyl4zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A13C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535103368.8833.14722774846273436390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2cb1ff01ad12705ac7be01d696fbff899e5bc093709bd719b362b817852fbf2
Date: Wed, 29 Jul 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785351033
