Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F53F79D2
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743809394; cv=none; b=crqBTq4bJFPuzWDH8277Ro7w0AIYAumnmPfS/Q70FHHQelMUSE3F/akV2x+sEsSAPVzOCvFlEzgpnrzwHH2ntTXa8ccvwqUUIbbkmGlREiB0nZIAfaW1KV1nFHsPst9k/czPIIy73f0QreB4T0tKDelTdC+93+d/rsuq46rd2Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743809394; c=relaxed/simple;
	bh=+b3YaYt3Lv5xiZ9uN7cfHcnaP7NYGgtXPZBO6sgMyj0=;
	h=To:Subject:From:Message-Id:Date; b=iG0RMOgkhxyqoXqHtfAuRJOkYkG0+neONnBZ6aA4dLwbnFBUehiyxO54qNCEPkXKj/cdBonsLSM9Uh9yM5RwOfxpPK/nY19KeNN1v+bZWP2SsQUINesEoK+E7X8ua5k+Z/bNOLrYfYtS5CwMZAn+v5NPuSEDpXP8gOpouQzW8V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIYTTOSd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIYTTOSd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE092C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743809393;
	bh=+b3YaYt3Lv5xiZ9uN7cfHcnaP7NYGgtXPZBO6sgMyj0=;
	h=To:Subject:From:Date:From;
	b=UIYTTOSdyYLt3eJ2uxCCkESALFtG7BDnm7KEQrRZJkv7QuZuH/gHCwCucHV/H4eDW
	 7ecC7M1aCfUdWbRKN44HLi3wI6OX6ze23RS5e4A+u/Vvqf0Qgb5AlD0nlnU2fFHEqw
	 rAGqmljRXxj5fZtHpW7A3vd2RsrYcO8AAuJwGhFEcDS2w3q5QEx/bQwOFzBDV1mmhn
	 8B/nWy1jIknAHHiYNIVBpaTGjsDKrYIJXHlmbjwR1DGr51N0NAgdIxN+WUGsX8kO1d
	 XwhMeurCQIOlsaHRieAYV94RuAQwNGUQWCWL+eiSIEbkg3iU5eNQmRbAcqKAZcPLLu
	 8CzeuU//30O6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CEDC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380939360.3452.17879191525062724774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd0d14134aef1c15f43a80f5d2575e4bb5430cae10b134849cd8ee5f5c34005
Date: Fri, 04 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743809393
