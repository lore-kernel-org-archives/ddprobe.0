Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C66A33E1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735252554; cv=none; b=nv5NYyINR6TdQQCkEWnM1AkaabXYGpfGFY74KynCug+y1MSu7wMl+luVngaNv5qk/9Ts1awv2Ig6Wxb4Hb7WJaGkYKq3JTExil4yCgwEhvyYb6xOSKxY03jrhd41OtLh/zXR55/ZArVUipRBEP0/dZBVbJtEJ30skwtqyvxyYiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735252554; c=relaxed/simple;
	bh=A7HywK3VbuEAgfzQF/DoMQcFHgtKTLKXIX5YzqtQQPU=;
	h=To:Subject:From:Message-Id:Date; b=kEBuopX5ZgnAjjkp9CzcEVPaIgstnf9LPErVI4uA4zy7y6R3gdet/7mQSOSVJU+jEYJdWqI987DurcPkUSsOccOJNVWsNP1ts71Xu1eSKAH6nV+iOXq69T0lVBGMPzERKLQTAE61cYJdyhFuKeesAomkQZOKvMdke5rCynpOruw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbnElkNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbnElkNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59EEC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735252553;
	bh=A7HywK3VbuEAgfzQF/DoMQcFHgtKTLKXIX5YzqtQQPU=;
	h=To:Subject:From:Date:From;
	b=ZbnElkNuGyQgaNvmsvIYDCIuZT+BMo+RuELbjW+CXccFzhCKpHoh7t2LO7yg2F+Ed
	 JwXMjn1ryczzmBGrZswrSZAyNBb/CvGxYqzThwcgALUhCHR683xF+ns4z+x+JRgLkr
	 7rbBGYhfQuPq/El6Q64NJCbZZZvNtPWm3/eEUDyE12au3R+3ZeRsmcLAgk9RPnbMpS
	 CPTcqM2zWkwIrS81SDnDuRYCzAf9HNv8lkPAol8ut8npJa0Eru691qw16bTvuZBi/3
	 26KuCO2dhbo5KmqcEjvV5KteeEiN6XHz4+gp8vOVgJZHZ4CEvhGOg3/dRZdMIFWt/2
	 sNu16gKpBYmxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BFE77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173525255358.23423.16515367888923962991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b04bdf22f5e61f0fb66b6696e48310bc64e148b394d917a9c631677398da20
Date: Thu, 26 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735252553
