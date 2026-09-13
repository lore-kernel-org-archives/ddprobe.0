Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5264E35A3BF
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789319434; cv=none; b=F4E/QU2Tm0UDd9KV+6JCuJR4lZmuUMChgqy+8LbZbRrPNm1BwQuqImI8ddaZM2exMfHviNjckfX2WRuvgNC6i0nbWgtfJaf4v56+ApglKltjpQBR+J/SOzU/S9CzSY4LI/YiuBpoTTZEWOUpIfiiNGeljG2bUVGF5I9vD2gS4TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789319434; c=relaxed/simple;
	bh=5+aTRK5AgQsToaJO2phNlttx+3eJQGu7PHuUlnIkCiU=;
	h=To:Subject:From:Message-Id:Date; b=JKmMKm6gfDyqiKCMz4gXvL0qtbtnu7FQE9UhgyhBt34L+TZdIUKw2c6UnCOF4fFEiGC4cwMkBYoOmCyQCJem6RU0/tJSGPuiFwvyCDZNg9IqOfKHJ0dC4BIJC7tY3kfwbrgUuKHDu9+DXte8ZQtVAk34qFRZIUA+g6KAJ2PFT1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sif0Ahjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sif0Ahjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D857CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789319433;
	bh=5+aTRK5AgQsToaJO2phNlttx+3eJQGu7PHuUlnIkCiU=;
	h=To:Subject:From:Date:From;
	b=sif0Ahjf2XzrGJgZKLl+o/zu8eZAWZu+PY35xiPNAtQwdVf87pwP7eGhnWe04bFaR
	 d57tO8KMpxxeff3iUUtkH1hB1FvFY0HM81ls14HnNQWRHHxgvhrveJ6zDVItoEJg/R
	 yKgfjtu5GBwQfKQmE+oTGtB/nkOZr0qGV9AkgrFVMIctrqTV4nVYTTAXH0I6o481Yd
	 x6+z/mU4Wiaobr8pOotQaIc3ilAg9n+b+Cmt9b18nEyqEyMHvgTNkap0KuTGAxS5sa
	 4YaoqFT0964qVN4azdPOQxDNPvH74jr1EDR79+E2VJoivkK5VluVzP1BkHxfwqdEmc
	 WIpA0akZMceUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B088BC88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931943368.14880.10165181753167346928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0443a440b1339488b6804c7db55bee7400d342fd9fb0fa4d0bf92c1c7a963961
Date: Sun, 13 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789319433
