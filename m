Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D674A0C
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764224574; cv=none; b=NV4yyAoAn7lxzbGikfSE/jUWQVx3bErdk5bPpsv7jj33F8tpm9xvKF3daj4yAGW+8cmz6rp40PgBWklbW03CdvJs7CK9gB39IYy0lfH97DpKneKophE+kQkHWW2QWY+kfWaf491I+LzjGr3GDMoEFBk6AA1a72dVBldL2kVZ9JI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764224574; c=relaxed/simple;
	bh=Hn9eLh/T7loRZgwkJHW1XXouRuxrWSGbJwXG9PkE80Q=;
	h=To:Subject:From:Message-Id:Date; b=Yas4nZ0uSE03ELR2TKWlUFXPsUqsxpOCWLQX9yy6E7YJzQ2bAK3wVTZtfaEGcFGBsTwtPix8+5bKBnfZ6118lrDWLRExF83YNEBz+fXQsNqtvrQ4s6DwNLy17VyxhT/UWZ/7flTc9Za3Ly0tGTbFGQg5R6pKktq3FSFxuUC8Ock=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/UC6lwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/UC6lwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB97FC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764224573;
	bh=Hn9eLh/T7loRZgwkJHW1XXouRuxrWSGbJwXG9PkE80Q=;
	h=To:Subject:From:Date:From;
	b=r/UC6lwo1JnoYn3LBbOD5Bo8fZBrJO8mNVoH+552be1c9psluIsEIHn3wMub0/VSR
	 v+Ma10+9Vjyfvw6QhRGSPgHrAQLcCW72GEUGhWzDYg3eLIeV67dS4+3ScbsLEx19ui
	 4GUxGNBI5xai4/Em63/0wnNTga30tmCPRN59L3QR08t4FiB1XE9VGy4ceG6Otn6GqJ
	 onMSmnLCCgFOWqfIEhKmxSux3Mh8hE+0LpMQ5Fwi2qc7lTBwz5/UPaUskjAliSXA/q
	 3vtyaX/J2aj1q1o752BMOcRrqcgJrDP3Ese+MeP0HAemJQAN7ZCrIj8WixgCHzTwON
	 D7npzWqi1F6Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6CCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422457359.15324.1938665615466752215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6704d4b377cf8e54761d496ce9b0937fcd8f0e44eace9101d79a7530c992952a
Date: Thu, 27 Nov 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764224573
