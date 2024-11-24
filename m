Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349393BB24
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732448754; cv=none; b=YntOCoC7CesHwd+2EU2v73QloN7DOxQw5BifPwSDbBbinGYTgyXFGdn48s6f9ssnNs6RO1m9DWu/zaH+2b33RwBIba7NVFe6HVNwMZP9J8XCVO1pG00GUZ8trIfJ24GN+oodIeikY9PbFBJU2K+dLEGW/5ZcsC941MQnQIb7AkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732448754; c=relaxed/simple;
	bh=Tm9PDYZ6fX/VtQxUUgOB3rvhkBXkF6CmkU+XZ6yw+EE=;
	h=To:Subject:From:Message-Id:Date; b=tdw/O3DxuQb9zHiBIlvqoavHHyughQwv4iHseAD7ndoOLGGDMj+U+doTyVi6gxpZPd5m4jp+m+v38namNc+6oe1ZU+RHR28p3w3rQtI3vjuWHT0bT4wFtLLTZ+kCr0DEfB5RlmnMkf4TgOIppY5PDun6W+QMpds5F7VGUftuba4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWkRq/aI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWkRq/aI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9768C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732448753;
	bh=Tm9PDYZ6fX/VtQxUUgOB3rvhkBXkF6CmkU+XZ6yw+EE=;
	h=To:Subject:From:Date:From;
	b=lWkRq/aI+Ln9+id/5E6mShOShJxG16PgKFeCVwaEtJzO8Jtu0KZrRBpez9VGkwOQ9
	 mNgk0terGfpPckfld+vPK6NlRAggFK5/qDqqLCevTtf8lSSsA5qK50IGe4XLlYrKTx
	 lonctsJ6XnK+OXaM1gdGkIczLTO3FitjW/+BHoGX9RB1nICrT2tjne5HvgWdqtEIe3
	 mMTwrQs7ufgpBhS73flV0FYWe1Io7vBZ6PtXC1R/Sr74Gif4nqluvqtsS3W57nswhR
	 TmJgAeN9ywBLrOSWnpB87dIXHo/kr2lphKa/58Z+VVrPZc88UhRYew2P0bZnYT6M+g
	 n/8j+MKHyUYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE8DE66894
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173244875360.7441.2840521709058455766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99f07f0994522fa1c598fb33c389c5f884c7b228adc057d5b87e6ab69d7be97
Date: Sun, 24 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732448753
