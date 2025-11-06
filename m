Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05529224FA
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762461594; cv=none; b=qZ9cxvkd22bYr735s3LNtftAZl/OZPIy2bZx4+/gprMZ5L6bcCT5jdb2CvXf5yYWozzW2OoOYDtd9ZpOkCll2nIpJHYVZPPL+kuXFRc6l1000qJhoNTcjgON5jliUyVI1deMfyS2o2I1bhSPgXPW4R8krM44Ba/TX6oorWZ5JTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762461594; c=relaxed/simple;
	bh=W7gEy8RrU/XYIbMj74SNcB9WoN2JxiZivdAru55GVBQ=;
	h=To:Subject:From:Message-Id:Date; b=fQdH6Gxo031FF4q4PA2Qs1D1Iw3azWXXWsDLDHS0SGeYjD4euyOypzS30XcRugR1k/QkvtluJD/LNshKEUgs5i8UMnuGis2Rs/LlkKMCyAlqUoqsGbaQMrBQxm/G0WWl7AH/7FdEx5SP+Kkj2x9CDn+n+cwM5D+moqpVHpwo6pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlWNVeQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlWNVeQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD03C113D0
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762461593;
	bh=W7gEy8RrU/XYIbMj74SNcB9WoN2JxiZivdAru55GVBQ=;
	h=To:Subject:From:Date:From;
	b=RlWNVeQnO7JiGQx38SGBZjtVq8CNsdEJqAPWA4gax/ba7Er7ZVY1Yyor+k4jLBf0r
	 v4u0IF9FEwvT4Prh1hQrB/h2+jv+k9359zPr0EKBifBp2+7gd+H8M8a2rPzafzJr5R
	 lMGxtBNbHSCwG3AgYdQ6UmHAt+tsGuDDxrDkxlwWUbTB+mCPKHsC+JewfdLja3ZFu0
	 baNha0sBQCw+FQu24j1OuWa+Nuc6T/WtmVwR9Egrf92gA057cb+2lCKsWqAnSaW633
	 x1Nmt6LtL+3JL1V5K3QdZfUmdf6R0oMXcrz3LmDXN2ybNGGU0zkx8d7A48EoxM91pf
	 2BoxC0N8xiD4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974C7CCFA13
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176246159358.11966.5973870666599769059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8d94af846629ee43e5ac77f1e237a9af258a18a57dff200b0f60981e409712
Date: Thu, 06 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762461593
