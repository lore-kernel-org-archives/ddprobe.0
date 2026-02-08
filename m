Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7D02C11D1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770526434; cv=none; b=H80qyW9UYlr1tRlz828s/OcrV85wR3TjCD4bXIUs3CQhuax2MLfoaU/PkKwlAYH24NKLbPzSxnmFDCfxqeAQHUInLhGoTbpUM4qZ1I06XOuemVzPYFFMd90CKVSmLDcW3q1VnExwbFc8kSjyKUzaVkqkYsCFfir6Kd3GsJlHxPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770526434; c=relaxed/simple;
	bh=30TYMm7SmgUqh+p1Vc1ABGP4PvdR3yumto95G/TZAHA=;
	h=To:Subject:From:Message-Id:Date; b=BzKLUaugZLNBug6dGGtoCuO7xibBVNBChs69wOuAMTuMNNV7yW5C2Gldwe9DEdQJBmlmDEqaHgEmold/OInEg3ynE7vrMWQCSmqjAhw81F7e0rypg6eWqnOaqfwxw5VFZMy9hts7gR9rLJmHnSlI96IBT90Qn164uRxsRC4kMMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msnp65I9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msnp65I9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACED0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770526433;
	bh=30TYMm7SmgUqh+p1Vc1ABGP4PvdR3yumto95G/TZAHA=;
	h=To:Subject:From:Date:From;
	b=msnp65I9Na1+sCIDG3/qwWv5R6ELArGjT2GmL1+10WphrQgotNzYdBLXfSm9JIn3v
	 9czWdlFdDRwvN5Y16FEswK+2YDSnD/wStN8Y58v/AQpsDpM90Pwzo7J8AGHDOHBeLF
	 tQpUaOrSGNG97kluQAntnmGU+9ke7w3kaBWJW80+bIvuMVty97z1X8XCC9LdoJ0UbC
	 /ItywlcQYfcahzK0CvGNJmt5ZTEFKnYtn6MNopdlqZtDK1o+Psf5StoOIvrdmGQSz7
	 155JH1QbRAD/ZLLMO63O/UM/QHtMpQDE2+uE82tapt6muW4K4C2nw9Vzl/PMPHfoCr
	 SOFyaPEBTNm9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996FDEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052643359.6598.10271766314182220224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052215a1f18517269fab5ec09650356e817e7608a6b70906b0d65448516cf17c
Date: Sun, 08 Feb 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770526433
