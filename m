Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEDDF32B9AC
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764602574; cv=none; b=Jp1skV1up+tFgAzhAP8rKbWcseXA47ZIANyb9nA275RDn0eC9QT+O5xDtTmPhBVHF1uTIQFDjdjKxBMfzYlG9+3ZL0i1w9OAmDhX6tMgElZb/m1ngfpd+dXGyUYBFBW2b7+WXhXV/acMjAnsPQ6bC4gU2bZm7IDpFbRQes1nMxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764602574; c=relaxed/simple;
	bh=QPl354vgUDEkltEsKlxYqwDLol2GacAapn1YRePVD0k=;
	h=To:Subject:From:Message-Id:Date; b=s6N4rMsrFlo6OOfav0xiLlMCv6cXdbyxA8J9VSr/yUCqnkCsXMkPsgkcDcmekwl0BNwcVNKyEnGMx3FAUWyvdJVym6qHm+waYCt9qAi7wnf2/XGBcwfJEsILC6n30ZXKgLwFxHildP9Q+xx8CDssrhJmwk63rp5SX0pRlwzJP6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Afb8lobe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Afb8lobe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9024C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764602573;
	bh=QPl354vgUDEkltEsKlxYqwDLol2GacAapn1YRePVD0k=;
	h=To:Subject:From:Date:From;
	b=Afb8lobeNckVhWIsFwQDMt9hExnZiUy2LFRDCI3NUmufQiKka5nGgy/BIUEgmYfkG
	 Y4p1H1uwmXu/UmG3mrXo9ZokasTuQm/s32+perqoDMQe0PIxI2ZAnm+0c2TiS/78r0
	 u3oyqgTW8rRzF2XXUc6oBprhLipWhHhHr3tHmG1JuVfDAKl6RI36DfYpxelmCBD63F
	 SSV3PEbV9ALcP5JirhkLVuKCsVfA02JILplxPuqt4TwWFTeFVm4wDtJC0hjpeBlher
	 WaqG67+sHlIFckQ3NYtA1NDeRKmdRNiXyrhIAkKPKNjtl+X5Mt9sLnfR8TW9x6hov9
	 uvuYUCzI8I/Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A6FD116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460257359.29832.7521238390693175565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e91059786ab45800de2aa95c5ccbc6dd95df727287b94abf78d42563695df2c
Date: Mon, 01 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764602573
