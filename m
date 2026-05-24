Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F1133EF
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779624154; cv=none; b=o1zUv9FuxgidPJ88ka8773VaA/60MkTF38MjcYZBiykvi3VPRat0Iby2HxUnIs6bTMt2GtLrbBRaEOqDVHkQJ4GIojSrcoLuBPElVZxLRMWigSjGdvyrhZo/sGZhLqWmO2fQU5TLUizeb35NcAgE0gnAilNsPntKuLWhUKevumk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779624154; c=relaxed/simple;
	bh=Z0K3zaGi3AXZ/mmwFNN4KY89d5tRmSeDEReCG2b6FJM=;
	h=To:Subject:From:Message-Id:Date; b=DTij89013CJ1Ihk7V/luFbB5/+m3ILSo0L5JEJjMs8h4oHf+CDjbHqtHFfW6JOLRiYjzF8hAskhue/O4/we3C7mS8HMHRCHV5hQCGSM100armmQgfH8nrE0AH0iaoB9Noxs8+CxqV6AuaFFYchUPC8wyOC/CCeuRZOriBtpZzxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEOmKACh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEOmKACh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C80C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779624153;
	bh=Z0K3zaGi3AXZ/mmwFNN4KY89d5tRmSeDEReCG2b6FJM=;
	h=To:Subject:From:Date:From;
	b=WEOmKAChE21l3rU74gGeoKty6fP/HbWzXYreSLNQs54eZU7GwcrfnibOUJ2BRkIku
	 W9FF1KQtub7U/ywtfAbaOS/JzlTuBlZ2IpcYv3rv7mB6YRxCdUI1K0rV4V0LWemjK5
	 /ggTBd8nExeb1fV6sEp1TRFrzONyeJ12f42h5fsk0UeO3KEeN4GWehEjatOqLzOzT+
	 ZbAWX9RAeL/QUAV3mGxil073TrCOEdMrPv6v82j6d2z+HgbwTKEEUUWPmqVi0FdAu8
	 rzEeqpNFDb6KC/zxzOrFM+GMULl5holwyOrGYut6TSlpLHmzvgJAUOUs/Ze40uuMl6
	 LMgjlcCd+bm6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B87B4CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962415368.9079.3017905699609432918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b5e8604e66180095d45ee420e8e06b8b169ef811eccb7d0426f3c4c1c36281
Date: Sun, 24 May 2026 12:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779624153
