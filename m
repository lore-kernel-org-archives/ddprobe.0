Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0928A927
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761178193; cv=none; b=dAozPcEi+sp41EV/lXu3K29j5hBqeRjwULGDUjpig8uSNCPsyrA3Wfo80X7VhaYNXDFiv2K9StugalItGN5T+YBkLJwFF1b5I3jbb7G2kI2DztPfb6yTwDHW+1w+kH1vltcqlKMrxrClIHyjuF0+F3LwMHylv9FeFNXCYdVEfb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761178193; c=relaxed/simple;
	bh=uxm6StblT1eC5Em24NA/UKATU49E7wB2iNoKRDunqUM=;
	h=To:Subject:From:Message-Id:Date; b=i/IMIj7XGa0hB5RDXIUwUmsXRsXpfjRrJffbJem9BtBSWRXUo1UigXNqlBcRaOS1RNXhACrUB6X7i/cIfWEDetEGkpbtDeevLlvlMZFPNIYFedD2PjpScjjkLOjVdvvef2CVISEI1DNfAYGHiIBLBFPp8N03Hy9xAavpEEpLnkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4/+P+IE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4/+P+IE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A158EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761178193;
	bh=uxm6StblT1eC5Em24NA/UKATU49E7wB2iNoKRDunqUM=;
	h=To:Subject:From:Date:From;
	b=o4/+P+IE82CrSyhPqnL5pYYL8X2rQB4Gf4ABQ5M0c9xiQ3rYt6jomvm3TOhlUCqSv
	 reBJ+qk+nyh+ZBSpPmuW6zM+om5AuunJFqlLHrA6ocAiMympJU/G9wY8UDFQov3PHk
	 3DsD3bNgEuEBLuF3G17qOi3XUD+g6VBdFfpHfgAcJpswFImTDgOYC7rLoE0WpSJPZZ
	 JETgKQIvEn9ENN0YGB+1KLl4F2OjjY+pyzNZlMmVLKugVFMyrEEy3Rjux0QgjHj2eN
	 w8vRE4jkHzhM6dyejcCiAMW3OJ0ZMf1McBsacFbDbQ2XoUS+iCJMjaJZMwSMHhhPA4
	 /ty8isfpMJIHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F1CCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176117819358.26919.5115443007095949327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839b54ba7c288595e94c592d3c880e6c137a1c9edf79bbe8c7d52c745f4f838d
Date: Thu, 23 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761178193
