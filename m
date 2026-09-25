Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E52724CEEA
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790298634; cv=none; b=cVn5CyvnECvY3ZF3xB3Jqe57deM6ncxSq/pR2Bgw+6KTeQ2z6y6zPBb5D1sGyQhCY89VAKk8Kpb06yQf55V7FhQUpV19Jf4cMkgMJ4H3QkjrZgy4stXM6Ulw5DPSvOWU5DhaIHbkzXyNgVd2V54Y7ZdQzZZ4rgkgdFR4NIp0Flw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790298634; c=relaxed/simple;
	bh=3da4uI8d6dDatvAPx/LRGhfrDre5MaifoOoZkv6WxWU=;
	h=To:Subject:From:Message-Id:Date; b=FMqPrnIQeSXb9mi6GDg9rVT87D7RJO8r2uyOBfdCfMQ4vuQa/6jSzUhlxeAd+V40DuwnpYUJtrzUlAtqm4o0sdpxSx9qDpGqay82GSY4OSFyMdDNsBKAoug49yQe8ppxRxqUddGsBfpguwhvG8FGRsP6OylArJT4pqIbcUPQRkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaxiKqiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaxiKqiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5426C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790298633;
	bh=3da4uI8d6dDatvAPx/LRGhfrDre5MaifoOoZkv6WxWU=;
	h=To:Subject:From:Date:From;
	b=CaxiKqiCr7XSD0iseQQ8Wuj4R4EwQRfAX0k5VYrQtNB4bM8uzjPkDwxOTMxnjrTZu
	 QZZymCl9TqruELQJ/NHq00m74y44w3m7Szi2An2F2hmzr6qs/OivSxV1RQBO2dax63
	 k9DWY9bXXmefjjzZnA0XG/FMmN3x2eUXt6F90W9l4FjB/7tF3AQDvlniwQYlhicCyF
	 pyj9z9J0Kxj0zrdK5U7uF/fJ1WgxGxgDEcjiRPSPoB68kU7I2H8CNB4VFOYgjHRTVg
	 jp0c0HfDHSFXx9jPv4PiWGPk/BbLCe6WB20BGHdYFN3bBFTWf8MbSG2bWzis9zn5bY
	 HRnk98JVcMnVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DB4C9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029863368.14587.4211437714091164039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd4f49c3bb501828e689202477e824470f2368549a0d6308f031675f67127ad
Date: Fri, 25 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790298633
