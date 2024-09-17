Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F00133998
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726565754; cv=none; b=iMNSj1oHLGYHbnIcUnopiByD+ROXlGIwgiymZONQlDenVq8H0rLWTbLcVaazOGpMIPuQu6/LCiTOFrYOxtLur6DebfG1ESHk0jgsI4+/v2Q6pp27n5nhPyZCX/ci0zJWiOm794U3NgfcUa8DjAyn655rkS4KsxoHNj3lXO/ytL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726565754; c=relaxed/simple;
	bh=hmy7Uvd47AkYGWVjz7nHM8WFk1mY3jSfWKmDFavg+6s=;
	h=To:Subject:From:Message-Id:Date; b=mOBQYU5eQLg4RQytJ8Zvch34YBGgvwOUIaI58JJGykMHziYFQp/cjg3+WMZft8S1abldPMVuw5tXpRbPlKB90oACuYb7w+5mOhUU+mU/E1z2rxnhl9ow+BuXSz0e9exPHGeigEpzwomuVPmqO3p1AliSMpVsO6e0kRrKjGu/nRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VorGkxLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VorGkxLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70D5C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726565753;
	bh=hmy7Uvd47AkYGWVjz7nHM8WFk1mY3jSfWKmDFavg+6s=;
	h=To:Subject:From:Date:From;
	b=VorGkxLwK1d67n9FEDVIzG3f2pgz6SFklSfiJyXtuw6KLsWwJekLQplPOv5OGKTUe
	 yWLaolnLAOLlNuPfD65VNttC8NkJutYxVRGkOFkAXuFRIitUIii0kTPR1OASuw5hJF
	 n5Eao7OoLWvcMGHRat1FE7JxKwWuRnhNqNHzniIlftOaFj4LsxR3vIN0ZsRYiVXzoC
	 yMGekWJbJiuYWNkiTVedkplkDbQYXnEXAP3YehyL0yq2HgrQfy+W3XqQceCwPDvtVD
	 WLmvgTKmMGNdWqvGXB0Fr3pJCkEaTk9kTbsvj8WbSrqxjQHSxBJ5IKOaTHaZJG4V0G
	 esE/3LvIdGCWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9568AC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172656575360.3216.5321812806025503824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3345cc4a3e9a22a3e081fb3b61afe223e1cf3d27b6c5670f1a596624f2e258a2
Date: Tue, 17 Sep 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726565753
