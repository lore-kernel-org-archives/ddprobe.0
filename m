Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142F513CA9C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735737954; cv=none; b=jGTRTnyReBDSB9DMrcTaWBMPxys9Dn3m2VykRYjsIOMahm9hKffiHa7uP4O0s7lZwOqX45fdmA1VeZb96HJVnnpaESv9dlmIhGUXeQ8LBIS95eJDJOTym3Crrqtm8ERXDuzvGOL1GmHofflI+GB/mV52/5HHNNhKgCTBolE+lsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735737954; c=relaxed/simple;
	bh=RcRYek4KiaAWwN7dwu63SMHYzQscOIhNlbS2Fq49DeM=;
	h=To:Subject:From:Message-Id:Date; b=rhbdSHu6e9ZQ9V8zTiAUM81HZ268hG6mmjsTDMe2F129hwfpjLJUjqtUzC1GkY2lvNWVM9ijAkzeN9zaDGobNKIE7WlXTIJa0nm14mcxFUBQb3TnluxHmolqbxcuPkNLK0x+fdoFz+4VhaM6GLK23gRGaF+xSXqJ0n32oz2A4H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXOkBr+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXOkBr+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECB0C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735737953;
	bh=RcRYek4KiaAWwN7dwu63SMHYzQscOIhNlbS2Fq49DeM=;
	h=To:Subject:From:Date:From;
	b=VXOkBr+tBz780te+/yk+w/nHx3pKhKhOftwMSvOr3wc7g+gRG54OrSvK77fXRba+6
	 jPHZmIUiyWR9khZqT3MCuWxsg68i4cTogvah0JMUkDor5Hd5ZI7kZShNubFDFTIgcG
	 wvfG3UwKk/Ls1+0+mzdLaKM/D+Z2PIpzDZUUS72ydVlLK4rSHak8LPxspGcz3vZfbF
	 lsFmtPEbLXm45bDYMfuFo2if2yXZ/3WJlNLUYnmzXHraSvjhsT+sUoszOAgQQAz/Jc
	 ksMqHoeWT+mECJzHj0JJG/BRKTwgAOqpuSUcbIwuEj2UgYD6Th8cvsZZ6sjleTQgyz
	 UL4NqQQSueR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2D3E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173573795357.26925.9810848991156067151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6620638af543f62e3ab7a134e32a335a9238250648f4755921adcb21bacd22c
Date: Wed, 01 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735737953
