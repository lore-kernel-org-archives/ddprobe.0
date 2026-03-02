Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D345368940
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772456694; cv=none; b=dL/88TczUmIhqAetWKLxlb8bNlbubmMP05SrZghTXCfNVDg2Ic6OvP5VwjMypXAICmZ6XwYw2IXTxnXO29R8j3sT5vwwBc4tgGk/w2GtH4u5zxhrs0PisqloTb/a6ygekU8aDUFmwFV2cmuV8xvOI8dlOhvLeetrWyJDrXcSvQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772456694; c=relaxed/simple;
	bh=o39IxazxtKCUdRQ1TCHGgaIQa9pqRG34fRf0b+JtpVg=;
	h=To:Subject:From:Message-Id:Date; b=ZSSpnq+yiSQ7Gkceo+yPMiSN0jOM2JRYcWq1bYOr+HjW7ikQtAvVeHaTKXxsgbYKg9IlIXmLyTS8507HwhIvas8q2TBCHAqjSPEVkrY/QKjNH9IXsQ1qrpDAqdfTZJYeTrOcAqGxOUisZS4yrweGkDbGPVDEF9w/ImkmTRg2NmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGbp+5VJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGbp+5VJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD29C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772456693;
	bh=o39IxazxtKCUdRQ1TCHGgaIQa9pqRG34fRf0b+JtpVg=;
	h=To:Subject:From:Date:From;
	b=CGbp+5VJgl6wk8Ub15+H1OsPJpBLfV4NT1gojr9EzYf8gII4/3GP4NBpnOrzePEmM
	 fvSaYfvvLbpoxffuAak+7Dz/R49e7W8djWtZ0kvEkNfpqjEWVlhkuMpic33OI3t6TQ
	 H++ZYQENEUBZ+WoZJNJiQZ2hCPgefR1UZjLq3Gaq5b843GdkvK8kS2xhybNeAylbRb
	 uqM1zp/eVQb3o/pCcNYTIlaEEN6wELpO7fTGxGnMy8CMJsrYew573q9ciXN2qdS9Pn
	 q52MfcGnA4kL2u150v87j2ZMnliGxvIyp2t/82j46TWanRIMy6sszgGIdcPOmChoRM
	 pgDKN8yOiBmzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C936E9B36F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245669363.28598.17438070224685049557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546f7020525da8e12f01f8642abf48b1ed73e5e35b996af340ad0082c01c5b29
Date: Mon, 02 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772456693
