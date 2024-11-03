Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1C933D8
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730605554; cv=none; b=nfYzh6GkmiFK7vrF0OFhWbN6C+UyrRt46TpdQZUPy5C8I4ID6qi1TU704MAPPGHUDMXucjzBvq+TY9xWhWXSjLP2PXIKdCRNN31xT9u1QD2YUYDKqOveITsfhQU8ajUGh46EcqN1gC9PctKLxpwY+yDFC1jnU8166bZo5PaifJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730605554; c=relaxed/simple;
	bh=z5DVkTkrIUmQFgLbcst5hZCvURT+QOpKa5GK3z06PvA=;
	h=To:Subject:From:Message-Id:Date; b=YCtlK6R4aNaKVwXX0i2synGL20NsdM55bEy0uvwaDgubTpeQgFYZ0MA4l0nO0vAd64EZIsLDCplvBlO0y19kO5Qh0j04VztdN6HiHj9isA58t8Gm/8qs89r5G5SMIA2CzXf2DbEJybpKUj5nRJkvXjOu1C56AwocOpyKTVKJP+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdrdOaeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdrdOaeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6446C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730605553;
	bh=z5DVkTkrIUmQFgLbcst5hZCvURT+QOpKa5GK3z06PvA=;
	h=To:Subject:From:Date:From;
	b=FdrdOaeLoCHRXkAGhQyu+LrVHumBzM7CBsYCxMncGzD9iiZFKw6ejfcqLHXoYa0wn
	 TSvtiVpnoO2tgwXNesFm0Md5QxxAMdte5zQezyYxpeevykNeUql2MZ4kv2l5cQWLUu
	 uxusAQvhdlMrpT8B5EfXrogAMGusSJIIgkZvXtRRb5Yw2hxrs1rHP0D+ZZ2wMiYwJT
	 uFmhjIcjQZq5vrUcf8S7yvCrJY6R3ZwgNPKqSpNK0vVUSU6eq2wFyGA95ITLaHZyuG
	 abtp7bh9zuw5QM+N/bsnEJRnZqkA3qfj7yeo5uoiTUt5jLWMwyYS0lvgyxAQsAn2dj
	 bSWXVTdHeDcOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B580D10C0D
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173060555360.6712.15592184764028547986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62ae40e9670733083d989edd15a2dab58a7336de86f73738278e89324161ae3
Date: Sun, 03 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730605553
