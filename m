Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F2D175AA
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720146323; cv=none; b=YbCq/uO10IONq87cbAWCQ5A+26i3LgcbgJhLSUfOJbbhCE4DagjaIMTtiGr5TL8G8Es4DRv2LgX653CByrfNjov8MfMi4xBm3fCZ/evz2TyXPM4Vqakt5ZAJnx8wmnTQzVOlsFXVCZYHLiowjZ/JK/HIRHbTIP7fNsHcjN6DYYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720146323; c=relaxed/simple;
	bh=3QT9pB6kL3oJlJ/gJikn6b8ApDv7gedXf7HnWKsm6oc=;
	h=To:Subject:From:Message-Id:Date; b=nM0reTSFWeoHCxoQAegYtY5lg8iSWyAZT2R3oeJ5YLe0py73IccluFJfBX+EogE4MTDw7iSZjj2y7oa27dcNdzIDrvzDnIUnH3qx7nVy/amgpBYercwF/tpwo+klw0SLCp8Ue8ohP/x4CS597fEooqSKkJIUrD6j34Q7LhKukbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8omrHEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8omrHEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA10C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720146322;
	bh=3QT9pB6kL3oJlJ/gJikn6b8ApDv7gedXf7HnWKsm6oc=;
	h=To:Subject:From:Date:From;
	b=R8omrHEUWsnbtnGP1OQKuF/wAG/IY4cl02P0D0aicU54Bx209YzXCnmo1oSgLBp65
	 TORJskPHLfqfZSkPotsYYEjv4iMlgQaoeXTCzBbgb42m+X4BWoMbtbeQGY1vBP4CMW
	 8HcI5fUd/3DyO34QIEPWB1V9YYkolnCMfKMtLkfPfbPqY1cqpm89QZqt64w9ejHpm3
	 1NjAnGtnW71RpJyP/iMm/x7m1+qhXhhc+ftVrU47dm10vCb9HiZU8ndD6G+d1KTtmM
	 sUEKXo7ulVP06y7hBIeIWA9Oo8c4HmKsBirgIcEh6rrjAngtPmcsuyG2T3N+0h8vR1
	 VCJ+WjBbJ3+qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFAEC30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014632275.3418.7074406454651690628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2c285f74580a5b5a00c68ecaee2d9b8cfe5b544f2f9f78961dd964c11fd611
Date: Fri, 05 Jul 2024 02:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720146322
