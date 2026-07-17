Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ECFC3750AF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784265514; cv=none; b=MdRXfa0qUV5SpOaMkbPL/KU7oC7H8CuSK3ZCnSVkurT3/H2QUpz25OD33fNH2ael4pK8tGP30ZeBEN1CrUX7N+bwggQTrBehQeWxtJ3Kt/s3o7ZUyxZztTdLen2DZ7lhPKeBHziQEMfAlk0QOhLvKeUDRwZYyRGaWyjUXX3e8RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784265514; c=relaxed/simple;
	bh=HTRhg98/zAiB++sffPLUmsXlHPpeE7bN6y7yr1bqxt8=;
	h=To:Subject:From:Message-Id:Date; b=iKcziiU7/rLpEgA3SdbQzY5O6XuVWSd8aAL4RC+5yPzwolf6+UFY1EWmR3eG6By1MY9/o0FdDNk9rAdpCKQVd4UpJp/FJhwSt0EUsOGHbgn+xGLIbFCyb/WJgO/b7U4Tpa1AQrK1wf/+n28kPeSq/evkKbcl4tDxg62ZSdCii08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=db1E79C1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="db1E79C1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DAEC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784265513;
	bh=HTRhg98/zAiB++sffPLUmsXlHPpeE7bN6y7yr1bqxt8=;
	h=To:Subject:From:Date:From;
	b=db1E79C1D7Xe9OpvUvzgAquqU9BQKtAPMgol93bMzN+3dn+kIB4EYtaHh1IbbgIj/
	 Go4WbJvcMaZFMm6IzGAE8ugsrKS4emSNMCvWepS4jscBc+BkHYy/l5lQneYhQTTgZm
	 tRr0e+dnLa1qHrietNHCOwyb0U1ixlHQbT6JAQCLV2ZilxgQNq2LFo96IXnAE2DeWA
	 EWvN9v4xTk8TCuFQsdFVD5tSQkVWMW4YGIDhz2T4Hak7I3POtZJ12edMqJxvJyssCn
	 YIgL3TCyCMoaSuwotiIl7Mo+o2ej7FK48/CBfX11E481fYOAC/8YoKdN52qx01/EwX
	 3bM/d6URm0sgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0192C4450F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426551371.26173.16299739255928319719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b383f6d448dc50e0ba55f6bf6da8665e25a0de9730ac923bd74dd0b226f4e020
Date: Fri, 17 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784265513
