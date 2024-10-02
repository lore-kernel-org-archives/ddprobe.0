Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166271CFEB9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727874354; cv=none; b=Tcu6ZRzxTKJrdq+y+k0fRTCqWc/7veeS3ygc9zX0azsfTxJMI+u8BUD7wE6hOmt8glIP+ne1dsPpy7CWLilIF79h52uRqliEqjKPTlKrZHCNeqnHDAM2Bb9YAl8C6CUHShbeD7fYgnzqjfzfwVImo1gbZe3xAobWZIdA+82Gn50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727874354; c=relaxed/simple;
	bh=bkTTB5hhFDspyCwIXYj2CeYoRJhHLMgr3+Pi+XJ4xZg=;
	h=To:Subject:From:Message-Id:Date; b=msatj9Vq2tYcvvEjbQROUUYZ+FmdmOungeNIFp2oThuxv3jSkdLiEksJYuwTYLeqUp/507/uOLZAC1C8zpIZr2aYAmBpL0diwD1iHsQImqsjdCeFNNbMFmrUMdh6TiUhFJPYp35qgmZJc5g+R1v6zHb5xtu6WZ44IyZFRkJiLQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt2ltE6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt2ltE6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AA5C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727874353;
	bh=bkTTB5hhFDspyCwIXYj2CeYoRJhHLMgr3+Pi+XJ4xZg=;
	h=To:Subject:From:Date:From;
	b=tt2ltE6jenSR3IvjBYssZNtk1N6rDyId3VBxXRDGA6COjssZ/zyQHiHDNuqrHVwAD
	 nmCpz/94Hx+efXmpfGa+gVssvWt99cxPYnD3DGb/cZj0s4Xtwwg1qOeWjMceZUP4qP
	 E17/aYBoTuBRqmJF2fGdStBkCxfUwlYVg4qXzFt9AHl5Cc0ZItKYafOUaug4Y5ennG
	 8VaNieemClOI74DVqOhyQ5wBk0PN1ov/H6QUkZmLdVeG9Wsf2q/N+bJtZ7R9Kefjkk
	 VP16KT+vlk0eR8n7xJ0C0kP33Lp2uxw4e+6Vwe2BUW991JshQhhaKKYi5lk3SSlP23
	 AY+gcFriA2ClQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247ACF31B7
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787435359.29347.934002189977676932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a77553ac7646ba1d3b841c2bd669e337bd7b3c5ebef9a8ec0ecd971aad70f9
Date: Wed, 02 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727874353
