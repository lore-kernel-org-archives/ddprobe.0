Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A0A284669
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763492514; cv=none; b=grM+K2IfoVwBZkyIlukLLC+uKgJOlXu07RyLeFpX8WjnjClgnUCwKedW0S1XlgBF15dp0gcWgiV2EgP170C+Rj1epEq8C9mp6M2RzNxLgscfyDP6v82BqkgvIaA3IwwJ2R38Wo7eccAWkBR6kdCQqfVLssJ5BZTMwgj6OOTlyFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763492514; c=relaxed/simple;
	bh=0BKfiaxn4Q1OcMQI/S1VBQG3RSLhaYcTi/ZTZJV1Bx8=;
	h=To:Subject:From:Message-Id:Date; b=PA+RbhRDQvQ6BHfQJT5cczmGNuHlIWAQn3kehFLxLanNKSFQrYWIJOtdsVIVzzKBYkIBWsd7W/fJ9MZfkb5AlMpTKnu17sb8lq5SRKigv/Nc77n5NY1jSxNrcO3mib/pLShpVRtaRI7cYLBG/tmzGeq9wuQX5yg6iqEeUF8fSEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSKKNgzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSKKNgzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C767EC2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763492513;
	bh=0BKfiaxn4Q1OcMQI/S1VBQG3RSLhaYcTi/ZTZJV1Bx8=;
	h=To:Subject:From:Date:From;
	b=MSKKNgzTYVVh/Y5zphViL+KeFn8YMCvI0jsp3b+g5VMWUqL3Y0Lo8Iz3LK+MjPlrf
	 Lva2uXa0me6Fqsip20pYfGdXtxQMUDKBhQJWUQfVjgKGE6bdDCuC23X2hxwEwXFKN9
	 qtZ320XaSjkm3oilvlyPjCKJWEqiUKDd+pD5jy43x1aPySbJDxVM8TU7wp4z5l1amP
	 nvNRmFONVYqeiqRQlqJ6ww13Ej4OC0pHiAHGagMzngEewZWm2Do87I5ly6TA6WtvuB
	 g43rqKCIk1uu5KwsCzQEMmDQzaPuDAdbGwhc9VZsTnZZ6ooREIuwpKvs4Z2mEPdQMi
	 HaXwxaH45XvmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E03CEE34B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349251358.10306.17026882740785572070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e318550af59dd7442ed57c1bb561e02ce9868b372639cca886559843734dec60
Date: Tue, 18 Nov 2025 19:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763492513
