Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B56541754
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772667894; cv=none; b=np7z0qMPLRUvjjh7cgdFt6t4MjGanTopOAcsR/+CGfUzBvbT6Vtk9S30dsEbqJM8BidFFD2ChhD1xlBtN1MhzEcQelaxI64bm3BJJI5dF6v5Y+nGOa3yj/wsk/usssQrcu1cOnc9n/NSg0IN1uYiCJ/sx3A5v5kM13oru0Qx9gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772667894; c=relaxed/simple;
	bh=srqvmddsSg2EH4ajEl2xZ2eIj7Rx1c8w9H4C/W9jmGo=;
	h=To:Subject:From:Message-Id:Date; b=nT3w0EbcSUytdfzSi8Zbikceea4dunFUgZrsyD5COQDhPzFm93akbu4CHjhG1D97MHvjR7Wgv7RXG0pTwyEXj4Spb5p85X4kNRwEGQeJ9xR10ifcRtX241LJ+daRRInIeMKNpzGfBHYbPX1YOINo38M6JKBYfb1DjsF+EKL1BwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPnpkHtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPnpkHtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772667893;
	bh=srqvmddsSg2EH4ajEl2xZ2eIj7Rx1c8w9H4C/W9jmGo=;
	h=To:Subject:From:Date:From;
	b=fPnpkHtGs2PAe2H4Y99QRek28gqK1IDsdGNQNmcigmB5h6VF4RGNeiXshQp+mmdMR
	 zqdidzAYMXTVmU+BAwdbEQYY9ffD4AKLweZjuHgNXRvIOHsJ2uErfSQ3I9hHNhxK9F
	 XrgfKSduEToBemDOjalQbgLNPT9VvpIohZsPFg7Rg7QaxwIAx1+g5MWeN9YyyEdeh5
	 rh7396PFY95kX9JuQx1XrUg9liWdhd2ESY8OCc+LrKciQ9vgWyo8cvmJe80/8C6g5B
	 iN9l05ddGR5vm6XRBFxzakv+oYduxmVz7SiQRb0YMlZQXap05WjVT8xOcB+Izdi7LK
	 GrQFoK41wBtxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E63CEFCE53
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266789357.31739.13929915750723707095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07320434d1a440858369a0aef68039187ac22a6d5c69988860900af984a66d39
Date: Wed, 04 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772667893
