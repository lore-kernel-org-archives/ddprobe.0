Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E4A28F935
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755351594; cv=none; b=f2/uCEwluGaJOQnhED6QXCSxPIyXBep+mq4jnTm7WjzZvl8mtKus5U3sqiuGPdVZK8fF/eA1hv/jcG0eMhsLyHsbjo4xv1tI2CmcQECbQUpjZAPVM4DeZmoC6thoy2LcUl7EbDEtO9COOYFydcFJAl2AY6QdWHUy0wJSR6QIRx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755351594; c=relaxed/simple;
	bh=b+vjcFLYokiQOMLY51psS0daVmTKyolhsoep+PC33M0=;
	h=To:Subject:From:Message-Id:Date; b=cU6pm7q/SCcBA7ZLiLU0T7ydz88ZfXh/mmrmraoa+A7WB6AsFNt/KSoRhOaQ779I522i+3o5vU522K2fN/DWHxtpd2um5mrGGFLhj1qVORlJKrpEpY92vNDYiRQsXfNHYTXJblndjsqPKg4a//hGf4aSZdWXY3wdYRGQg6qsrGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBTrbXEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBTrbXEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7962C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755351593;
	bh=b+vjcFLYokiQOMLY51psS0daVmTKyolhsoep+PC33M0=;
	h=To:Subject:From:Date:From;
	b=SBTrbXEGBq0j0uQjHN398cncDL/ay+3ZbcvxCfaJ3+HC7qkETTL6Yqy3AJ3X9ARBr
	 iSbDviSMMpyblVbvAd83/bcu7HfbctKZhjDEXgRZK7OE98XWrKjbPTCVT5lkhzsILN
	 kGVRxDNQCCvqT1HHUcbvy0fxtEsnmQ0Ce02P6lVqKH6tS9eDbEVXez1/UcAg/31Vg/
	 xkvRetDdQV+ZAt9cNJkesCnj8YEmDRFBQrUKHHwhjRsQCGspG80qtOOvM+ugFo5pdp
	 26QZ+jmk/FRuYwHq+WpiXTD+/D+aA7/OPzSHXhEKev7abfeoAZj1TxVXDNFKMn4X8d
	 /xSh+yoIYCLPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C8DCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535159358.31475.8743850500404875790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4669b980d608f1d7019a4e8526e1294a8da6b25d1f5b0da3dffeb62f3a9f6ea0
Date: Sat, 16 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755351593
