Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAA22C9D
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760748594; cv=none; b=rOV/j+XL7oa2TrpHkWnsaXNWtLpdqsXMiqeCjJOpeRhyXCkATbymllZXHdBCAVjUOcpviSMQ2/eI99S8sgI8I5AZgq17wO31Fe/H7csruoCxQTB4V3CDOjqJI80s80ri9ifJKCxHwRumk29Yvw4j7ggZDzjmmgLxvyfEi39uOpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760748594; c=relaxed/simple;
	bh=pTmA7CvTcdl2sOmrTL6+zyvruoG5q4w6fm8KMsvI6MA=;
	h=To:Subject:From:Message-Id:Date; b=ucsOKNGonW2vDRHwBp7zbZsGnbPkvx/Z8UZhGL4RmxXiwsy6DmxKjtKfausR0S9hCvhLFXDiXI2b0ThAd5ETW1n2P8hH2Z0CWu9KggbDDCCDrDyBG61+0KL6cAXlUxo3JADFDo+XHy9T5XJKBeD5IytnBYU/d3Nm1xN5FQgIJ9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laf5O0WS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laf5O0WS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A680AC113D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760748593;
	bh=pTmA7CvTcdl2sOmrTL6+zyvruoG5q4w6fm8KMsvI6MA=;
	h=To:Subject:From:Date:From;
	b=laf5O0WSZgiAGpjxLcAb25PguyRB2Lix6fgDNr/1SnvE/EUF3pIvFi/uoHN3ediTo
	 rAyIlCHcB9vgCdw3y8zipu172Vbf6FtpoZVo+ZkRQOzDpElINHjG4Op1pnkLkOIffN
	 Ya9UCgHl4pFEnbR2mzwialc+vNfG0JbHFeGH9nmz/zR7bZkfWsFYviqNVg37lKUwOI
	 7lb9k3FJmDmoWiDjWiPNoCWQcZFUUGRsSqkQDrbppWOKJyX+nv6hoEkogc7KyLQ8iP
	 yLxh1qzLnAXh5G3C3OQ0UlHaLYGYZ85Jh5yfeeDYkyEOLkXX9dmFZXGLC0QeVI5rUX
	 XGV+2sGsJKh2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9258BCCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176074859357.27189.15460633664391937250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c9373cf24bd3d55301a25f2f4b6e003d14e0b2f246c3179f1c4424d86990de2
Date: Sat, 18 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760748593
