Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E362DC78E
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746021594; cv=none; b=Nn+Pjmq8lUB21MyGFo7bOjML6iNgSdHxxop9X2IQV85r+Gk/VaV4m/hCnFimaxW7pwwmsj5RA2nwGb3pmKEl/lzd1+wueWBhnl2z7EwioxEXWlwy37RbfIMTj3LQvgGxUH4p8IEDgSBA75+rC888fPxPmESCAWsi4owNMvFCkVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746021594; c=relaxed/simple;
	bh=/94monveCS3aLgtJcx7wNvwMeIMpEG48TtwOudTw2y0=;
	h=To:Subject:From:Message-Id:Date; b=r64dHrGhBehyxTnScSHfc76J7tfimgIq3gr2MC2VY3odK8AULg5aiuAVMQqGaEmTopjx17Hmr4epRM9eyn0qSDBOsRZiWxEScagjuoGkGSIC4SG7X+LPBVtU3jHZ6Ll5EyDXfm/3po8hXeXqLx9UqamIIPoEryMe8yLcX/SzRJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqjIz8jf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqjIz8jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746021593;
	bh=/94monveCS3aLgtJcx7wNvwMeIMpEG48TtwOudTw2y0=;
	h=To:Subject:From:Date:From;
	b=NqjIz8jfXnBak4SGB3M/BtKnLNlYiw1NlY9NM9tKrwxsBrqCaC+d8vGlRGz5z+Pdv
	 kD3fJwGIn1OYx1PlWfph8VX7ooP8HexE569jjt4+fxhtXoO0AFZFx0i2LyLBASPGt3
	 YtS3HAovKVkWz+gvRWX42cQpwxogAcJm8EcxpK/wb//qx45sgz4CtcUJERNVKEmM8m
	 Wdk7R7Q27uX44OJr+ca97Lp2AB06CEgIaMGsxqvDkeroRUt660GJswaDJiyiqSiLiw
	 K4Dhf2BBnOmSpHpp5SZcGsO47aEcFpJZfmiBl+0Zafmviu7Aa45M7FmgL0ERk4lmHx
	 4PFtQg8mu22jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C28C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174602159357.921.7654592848012931082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0d15d994cadc861f48e236ab5549f54c41bfb7fd0028bfcba8554c750c5eb4
Date: Wed, 30 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746021593
