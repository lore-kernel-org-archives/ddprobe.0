Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321EFEEC0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763246454; cv=none; b=PM9voE4eXJ7WCgB5zMb5v3cF+GF9871hwt6rxeZg3H9sHGkY3M1klSmLyEJbI2onoAoixf2IVyrToVgiubCGFX/zXkoO1pcM02GcsKfIPKKfJT/sZCSWA9tm9qbGN9tljqObOzKNm3z1VL5e6p4K2CZTF/sgUeL+TNQKWdqz394=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763246454; c=relaxed/simple;
	bh=Pk05SWXy36Vb5jOZ3t0pSfUyKL1OTJxWnQPdspfv1wQ=;
	h=To:Subject:From:Message-Id:Date; b=XP6nFTVGCffSKmVmxqKW6tHmG1pHx9XYTefod741Y6WaYehhZWzJv3QyFjc5AgnUGco3U1PoBGAu84GYTsSaUICluVpMVNHCXRrcJ3gA1ncX0n1FEe4ECcgVb7CZq+XiIxp5i+G3ZwnC3TFxbG9D6nwjJS19KMUFBOkhL+hf4iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9yyKD/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9yyKD/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04D5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763246453;
	bh=Pk05SWXy36Vb5jOZ3t0pSfUyKL1OTJxWnQPdspfv1wQ=;
	h=To:Subject:From:Date:From;
	b=G9yyKD/k0JrHTSkvXlL2+XDIWo5MrtD820RGCGw5JrBxAtAHduPaCPalKSKP54xZ9
	 rUzzpGoDZk7KRemiCJjfM0fTpnThfwFDyM5/6jmPynybe48+Z9+z9esVxIHLuTfay/
	 Afp7x0HFPnppit8l/i/h5YfXWgIAXT1R9RGODieBOI4cyRCjfxm5klw4Z00RFsfoOM
	 D6BTwp578twc2PevZe664QqwUIocUCBjMIE8oZWjkVzwq12Y5ZRy5VhZSfexuEYSgl
	 vsuBitl71VfN7PyG7PrfzdO8pwJWfwFPOl7XaCXXkAEbdf1AceM1pniT69TlGVQ6Aj
	 Va/1IpfQhwqCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2693CEB2D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324645362.4750.18003910244731265860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 803223e1a01c8cd7d664535fd4b038697fa3a82d21303bed4b543bc6fd4dd0ba
Date: Sat, 15 Nov 2025 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763246453
