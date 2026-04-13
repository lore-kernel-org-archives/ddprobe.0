Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38CB313E15
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776077253; cv=none; b=rHZZ311M9kP9Y+GF8SLhjXP6+eI99Q7pcr6iqNdLmR9kKOHT8WAtyZXTCJasYsG3JX9sJTSjE5UrwHRfib1kmlxAWSGBSgNVDrJy7x7mjES23xsBhKGI/TuCpHW8dYAnbqraHDKuxU1lnqLFXaf2SMkSigCtPxmxoZwgElt3Ttg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776077253; c=relaxed/simple;
	bh=rTthA55UAuewqEs5vcBu+9S3MhWSuFKQoZByp/fxpzc=;
	h=To:Subject:From:Message-Id:Date; b=dsIJHmdtH6HQGoDhQFO+6M6Xt8Xf/gQmrhaRPgTjngEDp4UmFFvZs/hxpSx88oeyYwUT1W92O0UtQz/UVb5I4o7i4IchFPig5AdbtsFaJ5JuOb3GzVq7nwFhohQsHACDLVTtK9yanxDBLNGSZ6gmRoAT/AnXU+8N60x/4aSH7sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9IBlCw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9IBlCw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A2AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776077253;
	bh=rTthA55UAuewqEs5vcBu+9S3MhWSuFKQoZByp/fxpzc=;
	h=To:Subject:From:Date:From;
	b=r9IBlCw73elmqhHvsNY+BuioZccCBCEzeW5Fk3Jv76mNdrpsyi7Jf1lRME9hqsx6Q
	 0hTg/edDHCZPU88YZof3N+R5r3rSxUhJKocW2CsZvuLEjiP0lhmpJsZui8iE2+Vlzb
	 gV9tac3mh3pZf5lNxUyCyTybKloRO3bDwYo1dBFMhXE4NMPQmDycBzmNiC0t9/9SdE
	 /iun+7J+s/jC4GxCo7aYKE5MxBNhNERM4JaDp9LBmcFwoL4YHSaCrm1xH7y21SIN6h
	 TZ2hP+RxlK/AthQiCCAF2JVrJ/vfMkqFczwWeR025AB1NXYSEG1GuiLdRKlI3wN3ni
	 9Nckk3IXe2DDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA994EBFD37
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607725368.18494.11060440968917793681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84a345df61adb7e4cd156b8b225700f17834a77cde81dc9016892dcc264921c
Date: Mon, 13 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776077253
