Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAC227703C
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766307834; cv=none; b=aEV1PzmvqtfKLQped6h9iAYcpni9QmZ5ZBPCAL2aJUo3LfPlgeQ+TDL3a2oXb1EYgF87SQ4GFC2FtoLpwsnGtwGPPtDfWKzSrndcS6XkcqO9kF9zxdf8tGsQcXo+e+S0V8YE9iF6tv+1CgXCudzr2kw7Fv60s3hpUP1NSOwl8vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766307834; c=relaxed/simple;
	bh=etexRZ6KaIrTRiR78XgVM5oRdgHRiZjM4tETI/FskfU=;
	h=To:Subject:From:Message-Id:Date; b=eeGStZEWWWflb3qouJOxDRyYefxrJCv+BI15fCHGwJ4XzUG7VE4gIIvTWKrEOhqmdvOqSNOJUEyhJDO64e/OWlCEhcsZqiWujFP2lZZZuF7dhn9rt4N4mom8bsdRa6o0AaJ1txy2hQMEJP+9V+t+7n4hDnFegYWWy9ls0RTBV4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiOijLnU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiOijLnU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CA6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766307833;
	bh=etexRZ6KaIrTRiR78XgVM5oRdgHRiZjM4tETI/FskfU=;
	h=To:Subject:From:Date:From;
	b=XiOijLnUXvIflgrBPrwgVg/MBBJoOoYtrLDXTKoLm+MKJ7nEl8WzLxOOI8yHsUU4c
	 O2MQBL22QTH5fwaJLykUh1J8BMvEAt50sWGc+EBPyFIIl+k1vjfFuzdbPbs7rkZDYy
	 GhOG/SYzjtu7n/AZokzfQfB/XVR2OfboivP5ZD6ht9ZxXkAz+ANX/g9A7JCBzGpBrk
	 TNQBaLODWYoyg//qYnPUD1uyRvNEfKlU/4bWN/0hIwbYHVEXDDYtZJrUaM0cLlIZ5j
	 6j1a+fc4JykIELlSMO0EtIVXqScQSt0C47ZDooevRLcT3OB/BaQWrCanOVUQsokN7U
	 URo7q8+kJUh/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AF5D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630783358.30701.11183259287940947099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c785e6092c6a28b02d4a40a21633abe0597bc03f84e9c9969a67719e58278d
Date: Sun, 21 Dec 2025 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766307833
