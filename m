Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465A818D636
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783135114; cv=none; b=CORZfnVfXII33n7B2Iwc8naMS50pdMDFdE1AkWqOqTmANbS+NIAnbZ3vjt+oWxMIS9+qzsX85uZGn3n04GwYHNICdPX8Vg/YsKVTCmCma3K0OrWzkogY2Gv3giwxhQ/Pm1ApTlOUxUvAdYPkxppTwuElgjS3IRTBpFRpN2qMmvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783135114; c=relaxed/simple;
	bh=1r9gmBinQRa+IC5Wzs4Tu16YTsQ54oXbWL/G5YaDUv0=;
	h=To:Subject:From:Message-Id:Date; b=qGZZA9bSIxkdkWsJisyx/M143MuXShG/stUnMwfoIRGnlmb1nN1n0z5svI5G92uaFH+DUIwNMqVeJQyd5sB9VmenQZI+A/qqDPDDIhuJIs5W7IH4w75FEnu8CAoYMxH+UFP7JCDqVrqY2/SPIxfHJCKabN9Q5TSip2+W5EaY0Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gf61f05F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gf61f05F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AE9C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783135113;
	bh=1r9gmBinQRa+IC5Wzs4Tu16YTsQ54oXbWL/G5YaDUv0=;
	h=To:Subject:From:Date:From;
	b=Gf61f05FMDVZsPEDMh1nMNBUGeG6pmjYCeLgy4rnKHH5GT7TokGY0p6j3fmb84QvA
	 +vdcTLCPs0e1bIDam+BaTwrNmS3CuhAdqXNawsHuVgSIixMNa60YxI94+tR3rXMRiC
	 6IBqDZXuFBnB88SwADnvVssNpAcYQvAR3TC7G81bqzah2mrSDqmnDWsQlxFmplAhdg
	 EZpKl6s/6MjqGxFPcK3+jbtIGHBlQkyMJTTw8a7EOSml2pflDQ8A5Ps+AwDeYzYB5F
	 eXUxGKgBetD1TKG7eYT1jJpQxcFehB9/1HR016Ex5VQb8O3lQilAAR3cCJ2qhtzdGI
	 2e412Wyv/dXoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE76AC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313511368.32235.17253407589765491048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a93020a69d98d9f4538432f4b0df2645647351cc2b31bd412e1ab8c2378a370
Date: Sat, 04 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783135113
