Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3691726AF3
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748178594; cv=none; b=gIY8wOPb6tX01d5/Qus0La55gw1QmPAyNTZaTKKhv2xauo27w41xblMyxiYKFUEhYKLY3DCyoUBjgpCPsWH49mhYWoBGJVYzD6GnhSQ3hsJNZHl9JqBoYvB0HQWJZ4Vmumv8BSZGh+PPaXfpu8EfTA0BeCZRnapc7L2elLaS+Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748178594; c=relaxed/simple;
	bh=ArueyN5zc7VMcss5Wui1muAuwqEjJblb7UMiHU0chTQ=;
	h=To:Subject:From:Message-Id:Date; b=AUfVnM172SHXZ44dMYyb/pLfMnDRXdoTJ0bEeYimz45BZ46aID5LKKwip5JguOXpLIKngmmZ/eMKHx14K57OfMtcOcH69Gs4rjw3XL4TZhUdgiQb/p0OwmNCXuHxUMsbiQP3Zqk+1p4Tm4bLiSpe54OpWZSPHrvhETyEo7EkZpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toGyWQUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toGyWQUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6851C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748178593;
	bh=ArueyN5zc7VMcss5Wui1muAuwqEjJblb7UMiHU0chTQ=;
	h=To:Subject:From:Date:From;
	b=toGyWQUerXcQRCPMjFZ4DcEa+vSPjyfnhFgGriFdfv0e9hfnwg5JeWzcuQlAU+ZlH
	 VC7/SovU2yp94AbEwPxos2xIGKom32s88MbyikXiru3z+bCd+UcxRo2tAc89gwGwOR
	 WmikCCnT2PoRG4cMEhWxWp9gm4/JtGcrsMf0FdYliDlLFy1gtZ0UQpvHxCmLqK+XMe
	 B/EVPSJKKDWZXuoY2tw5jfOPHvaJruAHk7oRl4zmcshIBxraqnbJBYl4S+ymfg2lyL
	 jSWXnV7txUGo3Ne3ejlhUor+HJ7fwaE1zeA1GC1kuG8mEZOxoqbiQrtImZlN2qMO/c
	 R69Htbji0oXHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D4C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817859357.25821.10926051322525796001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ce6f031d43bf0e18c71e7ebbd204eba52828b2375e9eb28b2de284b56b96ee
Date: Sun, 25 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748178593
