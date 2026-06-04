Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACD73DD876
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780556674; cv=none; b=t4ncjJBUAxjTeTP2qyTKxGC+wlVJvUMcCKfAuJugEDhOsLg8vzszpIYu2SipX/jhBNNLAkYNlqrk7Gn9eNj42GwOdKJwONTMqG4vZFNcfG0ihH7XIOtA56nWgFp8LkFLupaisoQjErCaS4qDGPqW+zQm+h2cVlfLGQXZOXVTFx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780556674; c=relaxed/simple;
	bh=+Z38Z0teonict4reU7BQ97YqOfS8/tAwgQV4uCgawMw=;
	h=To:Subject:From:Message-Id:Date; b=ZBmPLPdfoHB4Bb82v/V7yucNAVPsymX3xg3r/G5qNkMfJW5kHRrcxJAQQwuK7tEjKx6tHGyBilaS58B/q2XXmYoeDWN1u6J6n9L5AIqsA+lbWEGgm7Z/EbjVz73vWY68Dk/nn3RkQYni9BvhzzsQguFCpQXHNXOYo/9p9qpDP38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLIeJ3zu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLIeJ3zu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F4FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780556673;
	bh=+Z38Z0teonict4reU7BQ97YqOfS8/tAwgQV4uCgawMw=;
	h=To:Subject:From:Date:From;
	b=LLIeJ3zumfbtIyW/WnhdsWBj+e+9223FGsuYH0I7d/EkuHyJwrm41Ig5D7Ai50hZh
	 o9+TpoOnKBcBZPJkc3BVBAhk2W4QbpSvMhOq9SG+5JwnjVv+Dl42ReIH5mnpR5+StG
	 +sZratikGBbx3tM6B9QIKxrHM6AaFGXnIOvAoXY+WbmNlEjKhGOY2huppflBiiZ5Hr
	 cNwvFQh3bxrqglwP4XpQRJerGwN/VHaSlsZtuFch22yJpFwtkrUELv2XLWlol6SEP6
	 Fjq4dv6qLsQcKBl56uInUQWEGPqASgR0i9zN1YOS150pfjgbvztxQyxFrQ67VXGpOL
	 LkefsGj6KZQHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA007CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055667368.14589.13443136609434357795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e989d5b47841243306af2fd43262b0a460926345df5ac57ee5e2d437c6088658
Date: Thu, 04 Jun 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780556673
