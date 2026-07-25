Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C06721CC44
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784989234; cv=none; b=DkeANsAVFNPHeQwluOzzw83dqjnHG6AXwFGoNIpD6LO/R2xVxpsuwMY6j/K1AbpZprg/ADzrLY+RzantZZmVEgryabBO6eiWg93LdQlikfLO5Gt6ayWONafyL+mfRIgQ6Gwj54pjNXVHkRucT0HBFOLo12ZnI8qFOxhMohBtN9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784989234; c=relaxed/simple;
	bh=38Z88IGOc466T8pZ10gP8QIbeZObVak9NLtgXCX4t5o=;
	h=To:Subject:From:Message-Id:Date; b=KKmeuFqX9MsovDVTofiYj2BgUFXmGtT/sfvmeCdElZ0jlriPmv/4/aeed2xZAyyetyRw3J2/fhDzpYzYKxIna8UJX+BFjMSyQMhow5I+e3/zhQbPCokrjvBe6vCrY5sBrBaJUxLBGdQaSWAU0iptTAhW71yyJ2h2TEfRR1M9n30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvS+5UD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvS+5UD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10B7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784989233;
	bh=38Z88IGOc466T8pZ10gP8QIbeZObVak9NLtgXCX4t5o=;
	h=To:Subject:From:Date:From;
	b=hvS+5UD/V1njGBX8pqG0352gY0GsA9BmgVl6vE5bCL+TWteWUMRiCdrx4m3DSFatb
	 IS0CPmnuUHafupqlrud2i0j4TR8RQ7mnP1kOx6MjMLLhHtN5NL5R91cmsG4WHIXj16
	 Fy2ATiqnEXgMjtkxl36YqKXXf6e0rj6cnkJdeHg2mtAgDQynaGkOkGPKabT8d6V3DA
	 +fPOQ4icfmWsxQe/nnidn4SE5og1TvWrZa8cbQADCcGw5WA99faLMTSHP+kWC+cGoC
	 h2ov0jbRuQSsxNNGsslKKlDLEysL92w3eOWbLpww4qmvgUVytNbYjAUT0tSGE6YHwx
	 l1qJUafSouv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE89C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498923368.32210.1921538859790010520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259f3755b1b3dbcfb67bbc429c52c4f5b4be83ef809ab188a87ffe097da12d42
Date: Sat, 25 Jul 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784989233
