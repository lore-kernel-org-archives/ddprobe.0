Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAD53B52F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773357894; cv=none; b=Ek0+XvKKIYBoYh0BP23tNAUBTkFSXgmnsBswyEveRG1T8bURJFHZQS/f2R4fltPkqAka5D6TjhI0NXLeuzv4LFAYJwlZDeHPHuE2dWbjtZNcrE85K+UdAcMx59P5Ev9CSyuGHKr8OCvYeHjhIQZoK9MYWFDwkB6Cv+Rf0+4MDtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773357894; c=relaxed/simple;
	bh=hw2u67DA9i6rv+CycQiANahXcs8a58ap+R6huCA/FUQ=;
	h=To:Subject:From:Message-Id:Date; b=ZiY0fKDCCmofzuF3Au3LL11ZGb8GaD4US5SH1TbFadfeNE4f5n1uk7MBUpU4Il2gclskA7/AHZx4BGDgxIstTPI8NOMW1M0UPK4ldk+FSk5LmFzg6hqWbRmAitEOUwRIF0qE/D9Zy5u6Jg9TzIVWASLFwlRdEJZU/82FJz1JkJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvHqvmu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvHqvmu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC4AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773357893;
	bh=hw2u67DA9i6rv+CycQiANahXcs8a58ap+R6huCA/FUQ=;
	h=To:Subject:From:Date:From;
	b=XvHqvmu5P6DQ34VG246rdA/GopMsW3VX2oaHjo35EHJgFkx75rtfzI1ZqjDwVZOE8
	 bEI5Kg9QvJyeJG6qKhbnu4GMQ21FnUszD+YyGVTli3GOPauzwlMX+Cui5NFvM2ASWD
	 4cWp9lUKsifwqGIoS3GdHjJNM1xyqiwqKPu1A4VkpP7L29Zw0mkhezT3zWaInNkVIt
	 q8Efy7Nhz2jEWmQg54jnNEI71tJlbkCGPiLaGejeuJFkVN14frKH6sy3QhibIFKdJn
	 +3bLKuTxMqGgaJI2H6i5Y3RL/D+GCuZzFa6b1OHty1gv8McNFtj77EdHXJc9+sl93+
	 f58sOhZFbXgWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C5A106ACFC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335789358.14028.3052810065657315031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d52b373ca03e47b2478ea4b45b955fadcf6059dac56fd0f5f7c413a28d29a55
Date: Thu, 12 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773357893
