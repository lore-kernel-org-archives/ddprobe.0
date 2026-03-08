Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE932701DA
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772986494; cv=none; b=Iq1B+5ruv5mkxoVQOKjmInrsCc2vAUeHo3SGOF9xFM6BSUAAm/OgaZzmuq7bHPL9ECFz4M+ahTbk4DjqbDbY+XKta/kMlIEiOBvpMvW+v7/tsitQvxY3UePu9cKmMjZ8S7+MCn2SGNZU4mJi6OQ0PlWSZI/YGiywx1NcMt/i+ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772986494; c=relaxed/simple;
	bh=9husvOOYl3gkaJuWPkvP/E6cnOmH4r/cvHfonETL4zo=;
	h=To:Subject:From:Message-Id:Date; b=IiibfIe/Hq8G3GzZkavrKEcHN0usWDfPwM+CEYKxgbW9Pp6T4Q5vRH9K29PMfwm3bYuMY0p5l7ybWl2bQXIj2nbiPKsbgxv2BQ+l1O9ORLvZSwsHzLxIEfqITmMOhwJSvODQBzpdmw+WaNi8ELnMvUu508uu4nk8MHFftuQYuT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjX+q1I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjX+q1I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A917DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772986493;
	bh=9husvOOYl3gkaJuWPkvP/E6cnOmH4r/cvHfonETL4zo=;
	h=To:Subject:From:Date:From;
	b=BjX+q1I+vDYpAYbZ/OknyGDkVL0hO4LnvCJ2KqLoiMk4mXweZmtvmOc2CtPn8lkjk
	 7c0k8X+11B/lCDz6dkvmhXCU4MrlapOtP/KM/P31QoauCkvZTm8YIbPy3zvpK4vbyH
	 F0ZzedfV8tjogYcp90y7u2LGZoaKfiQUx92Zdg0u63A3juPDVuO4cKp24bmtuC5th2
	 3eqmghGKb7rF1139fhQl70Nhd2LflYGMdbZxX0bR4kCUwT0oh1sWR+/OGYOCOIiGR9
	 wHI1gusKL/R0W0OSpsa7ifHUFYTDWm9WLw4BO/fYOP2JGvGNomK87ku/lXY1yiBAh2
	 mGOrU9/B79OhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959CDEA8535
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298649360.30167.5850415963056467982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1a9ee63a88a3baa35ea11ebb907b76e160fda15f72b463097ffafc3e6ebb0c
Date: Sun, 08 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772986493
