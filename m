Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C8147F5D
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716498203; cv=none; b=NcQqB19ndlKmIIdbFSRCyr6yS4hLbxLID2VWMzAwegkukGAUe/ZsegGY3WuuL5sT3Fi8TnWqjNIQgKmAd+A50qNmt/q22wL9af4/KnRfcx9a15uezUJRANyU2OQVI4DWjPxUHjBO1dKXyhzM98MRiBRx3vbnEaeiEa+7yiicpSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716498203; c=relaxed/simple;
	bh=ns55wtiIli1PmmPp7QkwJbFrVxmrKxzsugSWh9KyaRU=;
	h=To:Subject:From:Message-Id:Date; b=DgItSgceaiL6DYM7JfCRaDedDLdDKvrXepzw426DYK55LFzSTXAiHlKQW47vE5VM1eZpln39F7o43LMPuzj1KTUpXxa8yQuYFGoSzm5/H1g/3Tu2xAYxOS/593TQvJno9atZ4otjqyCaj8EfFarBiiM6ZI7Kotec0ME2nzk9jfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfV/Z+rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfV/Z+rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB2E7C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716498203;
	bh=ns55wtiIli1PmmPp7QkwJbFrVxmrKxzsugSWh9KyaRU=;
	h=To:Subject:From:Date:From;
	b=CfV/Z+rkZmIYpZom1y8D3EvA1LTtqI8hv2DE1l84U5zobm6CmQKOOFSZnYeImwFw6
	 biq0VbXarJuZ+jT6/BGM2C5Rh8omZ+/5GHhtvdxJolLFr/OXz97aXEL14zsK4Z4U/U
	 v4RnV2Bqkad3dju3B2XZqcZCxmD8WdTY76kz8x2ejXD4+kdJWOIjcSdnn4Og58T+Q4
	 VPuQ2c3dXmnmgFNi6lt8Ith3laZ7qYvByaWsKpVqVCjJSUG9jD2kKpmimH41Z1QJHM
	 WIPz4JOfau1ifB/7ntzk6fcaDp5uL0GbJpZsMeeHZ+oCt4iyjIey5eWyByOzirDgNY
	 79J8LqtWytvUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBD20C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171649820280.22901.4595017499158960804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2efb9508291d65f79ae2ebcac1324bc5489ba5bbcda69878f1e23b013e15f515
Date: Thu, 23 May 2024 21:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716498202
