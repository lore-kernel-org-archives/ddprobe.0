Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7122185A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755854994; cv=none; b=ZZmPbZ29vDx4CEsq6S0fyf28+bEPULZt3IAU3kZlMX1oGhUGj5mhwPSkr+y+ksG6cGISykL1W7YLfkyG1BWtIGvkf9Qr/2SR+E1oxptDZZ8eT1eOL6f0gzraFEVO29eOxNzXo1bNTjWfqWhJL8ZIWf5oLtNaWBNv21FcB4zcdrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755854994; c=relaxed/simple;
	bh=NgvTq4FBE4R6olZgnn1m/1Sd4f5I7ZaGDkHJOCPpseg=;
	h=To:Subject:From:Message-Id:Date; b=FK6FGq/x4NPZxuvAH8pKIXhLExMlzcH0LSs3QoVuIcz66P9pay5Rx5InjjqABkeW/xDUB3T2v39+qhjEsz9pOWKM1Hx9xuLyRuQiZULnu7kd3y5hOqKlIyijZMwHQdlk266FK/QEIItYBU9o2o3dLX0KMXVh2sZ0HoszG6qDYJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoAeTb65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoAeTb65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18FDC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755854993;
	bh=NgvTq4FBE4R6olZgnn1m/1Sd4f5I7ZaGDkHJOCPpseg=;
	h=To:Subject:From:Date:From;
	b=EoAeTb65ZL2ayCODah0GKTc15LGkWn5RRzEt1HC0pYjnSCDSVuJjLkmlbSRsCxkaB
	 1n6DqNShrrHAbNnZ36JcZfWLsSzhyN2EACs7Y188dBoGAEKxuTCC0DpQHLcT18B8US
	 xMkExFa2PF5142q7fviyNKhXXLaAlUOBS8dv9uWHl03S6RMO3AZClRIngpIp6fWKQr
	 v1epPC4JKijT5a4g2YtudntrACA83iZwoif5fhii7MWrAz54JqD5GLd5EU47qDYkoP
	 y1QlcRrvIsjrvAyj+3bNSjz5CMUybFLoegoNUS1zrhXoOR8pIeqyGsXmhW7rpBJ+Da
	 C3OMVlau3/lTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ADCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585499358.31609.8139733831956690839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f7640f4dd5f16f5f016f09d21d6786bc08e84c4d52f82fd64d923b05662100
Date: Fri, 22 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755854993
