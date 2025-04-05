Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B011C700E
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743851394; cv=none; b=DMgk8VKdLn2Y1iB4sEcMiOC9E+SdYY8bIgXTmTuf5R1OglDkFFUIMyWw4eiyOoeNY4knkPLfoPCCWPEzNU984g3O9T2ye6N9SJO2TclpWJxKdiExzr0q+y423G9cX+UHYmlBhL2kL2n8P0KbOYcdBdxtd3M9cVXR1HRf7U8x7/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743851394; c=relaxed/simple;
	bh=07SxJ3Vfw1XhxwGVjkmUy9+3hVipYxG6JtQ0VSE3jFw=;
	h=To:Subject:From:Message-Id:Date; b=QFC1ss+BxwD9Id1Td4P5RbfcActgl2g5UAg4145LsUAbgYGmmsStFL6qiRGDbMFjF3RhzpsD52OvAo/Y2PYyb93lP9KCPxLWz1sjl0C4S1UDLfM5ayXERMRMXSOvzFK1Av3x1HSjQMv06kiy0+qWbiMVPClscv23Qk1ehLPCgXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dW8PVNQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dW8PVNQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D25C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743851393;
	bh=07SxJ3Vfw1XhxwGVjkmUy9+3hVipYxG6JtQ0VSE3jFw=;
	h=To:Subject:From:Date:From;
	b=dW8PVNQctFHw3ctdNt55LbVbv3dTJwMO0Y8YbeN5bBjH40sNQ+mUzAyyUqDBEw1lu
	 w597XFW+JFWyJprXXZieLnd2MolC+/LwB61EKoepefFhZrxMFZm2hAZgppvaWwc13k
	 xaHZG9wsjCxN1S6EEgmxhzPkmN/5zbCd9UCk2TN5A2BCK3IQ9jNtqEIFlQWNtT+BH5
	 7/Y3Z8twYP4hXYWI912IuDU+QS/dyik38Z+OFdymYxWqD91XY3nhjwQwuRuOALskv9
	 vwMwN8qr02V8MkNMl64rENZ1F2b3KIQ5lkpHPirh01TqARwaY+0S6ysz6PB6gT/YA1
	 qBwN0PfGpnx7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4900C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385139365.14487.4800430659405918286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57888e3f7b736f9c304e6f72a892d70e51134052828ff52e8a675ddc29e51d43
Date: Sat, 05 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743851393
