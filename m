Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFD6136988
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738053354; cv=none; b=KbTiwVoJaOqy7H/tRezgNZomMOVjxQRZ2UnXJwg3VuOsgEa+/3jol/gPfKR2N9tpJB31YJXjfvF1WknYLcNq7YywpFXEzFieFJ8ggZRGu9oS0iIuYBAEBGMJoecXxcBRjIRrQPF5sbX299DnBjfUYK6q4Co6Pr+Fm6ydMxJ0p6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738053354; c=relaxed/simple;
	bh=8c9BZzzWOdJEt0dsSrXfgh1uLlAa+RgMlHdhoQisS7w=;
	h=To:Subject:From:Message-Id:Date; b=k1+LVIH0OGsZxPnWRgYQKouhVVIz6xIhvKS7/nBXWVntsDYX5lXOWuy3u/sddGsIx/nrHwHHUhyc99b3fLDcc/isQPZD5DrDcUb3rj590k6+nLrF6PvIbU6oAfIUiVZOOHC0d1/RDqY6CEpceTpo7HHfachmZc3SmLgaAJnGz7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NM1Ua84s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NM1Ua84s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5708C4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738053353;
	bh=8c9BZzzWOdJEt0dsSrXfgh1uLlAa+RgMlHdhoQisS7w=;
	h=To:Subject:From:Date:From;
	b=NM1Ua84shSqi8quA46Cdvi+C4r+AdaFP3bNV3eZAIEbFuM+onT+A+86R1nrETI7M7
	 5EgRofFmyiXMcreWfNiLBV0vHRmv1joM2HfYOS8he9OrahVNjvqCx+Mgkp+lyz/4Yl
	 cMDx0M77FYuAsrHgYNgodLcb7fqH+1megLEH3doR6wk9GeenP/NfdXRryP0Qdi0odG
	 qmhklFBnQ5XRu0OFdhOel8nT3CJhO9S2LyN8P3MQqO/QZle7l4H+bBGYttNIsQp8wq
	 uXqgSidT1zkRZGrqw8z0n5SPlOWQCRZ7zRFAZJGz8Pce1GdY8UMO5CRNS7Vyppdj4Q
	 mYYDd7UYHhv1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FEFC0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805335359.352.14039066318065195991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100321df4f52651888c94e39b8db86553cea5cd0c84167f3565fa85f53bd1b29
Date: Tue, 28 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738053353
