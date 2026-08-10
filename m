Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE552030A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786364434; cv=none; b=SwlGX/iYWC444T7Reto+u4oOK14OpBDkx5VBEQUf9fmCIRrYUarRXD2YZVq+y71drQtx+yElTNy0ZJqyHlzvbCgFxGm97c0vJNECUolXqgFTsPmqs4evh71y+okwJGUFASMK4/PpZktPjgy9UwDkPNoRN545Aqor4jZ38KFrvss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786364434; c=relaxed/simple;
	bh=Drv6uyHCL/jop729CfBLssBp4iTSL7/2tVwqhHvQkUE=;
	h=To:Subject:From:Message-Id:Date; b=mS6dr6mgbsEAmb/R43WsV0VBv1ewIylpP60c4awVpiwGfadDoz9dH3A1UgIJBzSTUSOv2cq1q3n+w1x2MpVoamE2E/OblzQa1ZUZ5j3hNiI6keTp5IziDUpDI1YQdBRxRxc4D7uRXIbWB9nsY1V/ZJw5+IELov+LJVt/PL6iYOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/6n8kCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/6n8kCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C5EC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786364433;
	bh=Drv6uyHCL/jop729CfBLssBp4iTSL7/2tVwqhHvQkUE=;
	h=To:Subject:From:Date:From;
	b=f/6n8kCuSIZ3OqIluPkmMJvnSCL3qNS2H5C88JbE67NRRZ8iEZa46tdqrCifl1gk2
	 KAAKVaPFsfADNvX/mvuPle9bUyvioxk1srOA3Gs3pggY73wjAusZcRimHoj6224s7M
	 xiYwq7AV70X5rjH4ffIHo0WP0RYYizgFYw7M63jzMEzQseO7ukKWB7H6KVDjLvut2x
	 BmFUP2FganLrt7k4g4nGJ5h585aAHfE6zGMklt2IWKO3Q5Pcx4opv/cZe1kUwykwEr
	 aRMugdNBXMqSLgYGPrfUxXgb68/hH9qxMLgbftOQrrpbVb9zV9OGhpOZthcXJJahjO
	 U6Kk9gSHrEs5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF419C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636443370.32676.11410526273238720641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71aca339c7c658f6fc72102c5c37fa91d58a6a411926809dfbafffcd9d64bc31
Date: Mon, 10 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786364433
