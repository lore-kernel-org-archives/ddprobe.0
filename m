Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4D934C818
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774711494; cv=none; b=NBjAU4dBR3ZHbLxdSM4HVvgo/Y2LeaSrWy59VbE7b+r4FQWxW9K/eaKWtNV///9fXWj5TYdfeA7lUiIFzbrKCwRRUoKdvrlBUgZvXMEWGXlVxUZrxTbJIWPhKBSilJoxFUJcqPYZNuLt/HGUXleWV85ygm0OTV1ahnZUegEX0BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774711494; c=relaxed/simple;
	bh=PYDPiS7XRv3UsBuqkYaNMRwr92fInE+8BnavhpWD8bc=;
	h=To:Subject:From:Message-Id:Date; b=o/eazmr7ka7yqvICHt+27Oj2otjKP8jEZ57NiiqOt46adFeh+qtIdVy0FOCIDxOoYRVa//YF4j+H3CVgGsDhI8YP6iP93qTm4oBW6MzkwqTiuSpX+LpKZdtHaCvBMfORnDg/gPxyh4Utwp5s5iPzCQsia2WqoV3/lLDmE8wIXbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKHgSSDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKHgSSDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99670C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774711493;
	bh=PYDPiS7XRv3UsBuqkYaNMRwr92fInE+8BnavhpWD8bc=;
	h=To:Subject:From:Date:From;
	b=gKHgSSDPUHLU6cSADji9eCCT4MUCE/hJtoDw3jTsnXXYGZx6+HaaraQCHrZh47Say
	 PAghAuLsT+uhsuYlVirFvcAEhmT+SMGhMUoD/f9d0XHlfyNVHLWG+hH+67VGtMbZbW
	 MLvq7Vw+B6zv2pjbPej3nI+snognSvOtSzmfkRKMjEGUZPJL5V773N7bXTG1as4ljM
	 1mjHxymCRBYwYB7Ni/bezV3GGAbwzZVdx6R8OmskU+Oy+0K95G0l6qkK9/T+6H32EP
	 FBZtgaqJtLrDUlwc6xsnjUrwXKkgaWH6Z96oPtNmunJ6fk10eIT5BJXRDtvQ8Xhsvf
	 RKPryk5GVOOFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E810F3DE9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471149358.2771.13214815790687265940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4b941fe4076df4bc33dd69120232d60a97bb412a94020c5298b24aa3e2ec72
Date: Sat, 28 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774711493
