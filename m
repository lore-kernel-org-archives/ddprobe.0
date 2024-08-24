Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B751EB46
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724516154; cv=none; b=YJciN096oMYGVD8C+WbYO0uV11GyOsCMD/EQ4pxm6RqSFG1qso5XZxkWpGlRo4BsdcyGAowzGalA1dt2HogKOPS7aD8Z0b5u+2FUF8TuH/OW2m4hEhYl9/pjob3hW+TQph25BJPHm74ioo4j8zXK+Luon+ycJKzTKXOPH3tu7/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724516154; c=relaxed/simple;
	bh=4GNQKaJECrpCitLtxljFo/DYI2FqLFPhvOQmuJzCqng=;
	h=To:Subject:From:Message-Id:Date; b=TWZyuQ3DZSTTQbp9Vvet3VVqQSeE0sTVRBuxKHTvomOLkkMwQWrEfAR2Sp6XyVFn6udiZD8waV9ZPQ3bT4sPnx9F8CfpvuC0RlfNSWKG9KremDvCTBBCuS5iYjyM1pET6h7kn5OLaxcmPdIUz+cNzfLcxH/CJY64JrnhOzcqwsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQvoluc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQvoluc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A794DC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724516153;
	bh=4GNQKaJECrpCitLtxljFo/DYI2FqLFPhvOQmuJzCqng=;
	h=To:Subject:From:Date:From;
	b=YQvoluc2SMSbGDpgTBZJHMSZLIy9u21vdux/Gw3QXj3fuhSx+jsuFzNYym0Wx3qGC
	 IdlQ7yz/+7EBf3OAsFUMpeppZeEMCghne8p13zsPbZ5ysmCRH3w3NJw9+3gPfjLpZj
	 Qt58yhvBSOXxEpLI9jxxGtqdD25g5mm5JCKCGI6TDZRN5F6pINFW2QkF3oEs9jNicq
	 wGaIinad6ZQ7YVRsQZctN2XGO29Z9HwsmPIInYJLCLBTZ6KcxEnMUwbileVY5suiJn
	 9ATlqNs8BbwDLmSK/i4308jxGPMHk05u1LQ6hkCL5sO/5GRl0B7o3f5WRjqnI8IRik
	 dzkuMxJnFbs0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA8C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172451615359.27736.17410660077767261349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1485c514889a4d9fcb0a6ac0d43b2ae499fad42c2cda976187903555066d21
Date: Sat, 24 Aug 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724516153
