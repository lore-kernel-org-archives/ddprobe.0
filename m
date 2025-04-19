Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29057136347
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745057394; cv=none; b=LKVXwhpVdZ5WMopFMhwYYEftt61qW7rXfANEKmOUwdzPsPAfyLAdu3KcGFLpH2ccW5ILU80cRE/YzGgrUwSMz5B3U6Zn2CWcLbE774NP93IAiCd6YbOAgDdmTMirJue0uxzqy2SmOaQkVxosrzV+flxx1CfLJdTrFH3tD8uXc/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745057394; c=relaxed/simple;
	bh=SEtDLmyBPUCcK9frakBfYGOWieGK/aRoW72hJ5zfzHs=;
	h=To:Subject:From:Message-Id:Date; b=Bw4FmOwIvGAQbghTmXjDlfKUsxllSkwj6YiBqttObJf2n1trs4w22lq7Jo4mQrLl9IAD8db0cnXAQVjqvhcGnUVc77NhlGl1OgD2oVkoT04FXBB0BpTFt4kiCcUtZbIAvN8eyLZglFnXHJxNIMZnMPyqoOyx+ukr0y9+sc0G9a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHC6XmLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHC6XmLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB123C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745057393;
	bh=SEtDLmyBPUCcK9frakBfYGOWieGK/aRoW72hJ5zfzHs=;
	h=To:Subject:From:Date:From;
	b=sHC6XmLG+uEB/U6ZzA/UQ3iNiwUikhsqMkijM/NochnjHlsjwooKUVXrtmcwXNMC4
	 4z15LGRvpwRupu9SkiZuE5sZ+t80OxjbJTXHMVPBXji7EaLNeB1p+IYkArIvT40LwB
	 Ig4T/WeiO9jQoCYBbCEBcgq2D4OhOTl+rEx6Kc9kcE52+JumwBokzP9DdhmF0JWS10
	 rr9uKSM8VGUlQ5lUMWD1bGIxxo6lKYbAMOAUOOxzaQ9KOpJecdT8ULbU4kHxA3j4BN
	 Ltu6Gys3YkB9i60ecu9KFfKx3koJm7xs2ehrC3ANO4l6ECQYI8pXMCveohs3V2zN+j
	 y9k/Y/kmKP8NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984FFC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505739361.13220.5763722418706025096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66427a96812fdd3d37216eeafacb56f2ec9bbee836dcd13ac17b4a9c2b7cae61
Date: Sat, 19 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745057393
