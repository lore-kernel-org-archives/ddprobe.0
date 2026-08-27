Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633948287E
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787866234; cv=none; b=D9devjk5wR8DFxiZdYW51IineAibUtJm6EI74CU/bM94gHEZXZK728+7eCXx3eZi3wyutEFioEFTQfMS0OysCFYT7Du03UKfHd9++h7YWKKZP9x12W8R7pguWSKDf09ALO52+K0mAphbpwAR5knwvj7vHMPp3aoX0XVJC3dejOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787866234; c=relaxed/simple;
	bh=i/D1CYttFUxFcGrv8Wu4ARX32/88VLWjvI7gkDzwNUQ=;
	h=To:Subject:From:Message-Id:Date; b=uQyn/Msd9WKm74urmv7u31kzW99YWPsLpnnPQ+FKuzfNvHF8PWdXTqV85Ej7Ix7+bVDdl8MKJz1FmveXA0D9DU9Jszwims35t/025xQ18mkJP4nFpr0wakycRHa/UjpF+eIUN3jslOEj17C1iw6ve6nnYwPb95pG3kBxx9PCe3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAjo6HUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAjo6HUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FFEC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787866233;
	bh=i/D1CYttFUxFcGrv8Wu4ARX32/88VLWjvI7gkDzwNUQ=;
	h=To:Subject:From:Date:From;
	b=vAjo6HUj5YIOmiikNDa74+wE6k8Nn13JKZ2iRDGhmSr9AYFdc9dyXS8P3fTqts0+/
	 tp9QNenzMcF+8kyfemX7ETcvRgXeLzL1U4YcicDQEX3k5scZQJPI+LmxifYxXidriM
	 O5jwnbuFKDgeNaM0ivIJ/Vv2ehZljwMBJb3K5GEEUNVGDkKUZ4kCwSHhY/yCHFw17W
	 beb+kaoKsSy/Xp2b87qtIz2tfuOeiJO0zrNoftOqIMzf/ym5a0be0EYS88cyIOMjQb
	 B+mQgb7xIC2AGLkHierBn+Q8JA8yNTD6p5eCFUcXnXde0IdNO9h0m3eXxNy+INNcKB
	 MZ9H+a6im09rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDB1C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786623369.439.10773594242990074522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57fe65d7d9603d816b9702ae98d2650aa060c4d41d9ee5b132369561a10a9f1
Date: Thu, 27 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787866233
