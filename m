Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D1813E8B9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719486263; cv=none; b=SgVIdZq553fuRp+eSuTfSGlqxyLTLbB2L9cRk8l6bsRnS6yttd3yruKXG8rV29dZ3ndbgqfiRZ0B89imVnZm4oAT7ndXJjo5LUIPQI6jLNb3TwJJMcLNz001NuI8szuBKY/J5KJtpFdC0GCW1rnv2b3LIUJaxCL885LjX8p0ElI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719486263; c=relaxed/simple;
	bh=Fve2Y14ZGC8VoeTI0RZVZ/jzKfvSGtudAAu78FubuDE=;
	h=To:Subject:From:Message-Id:Date; b=FEu5i+AUl9+WwvdcArMTl3kpnwGR5SNSuNHTxNwEBAWDePu8RDX6hymoZsuP5RxOIweWmDJ4ufWQPb9hudub3XmwiXawu0JrvUt83q3mjUao6sN8CKX6j+39xjC9UgvahbJH/5ccQKE6D0F7wgiZaCSCgAybtf9EpbojRzAdH+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kER2lTzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kER2lTzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC26C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719486262;
	bh=Fve2Y14ZGC8VoeTI0RZVZ/jzKfvSGtudAAu78FubuDE=;
	h=To:Subject:From:Date:From;
	b=kER2lTzPkrfqQPRMjYADwLlnV1Xlbt/SPzfpxQLsMvPsiJKK58PX9EUV8iqtlPGvA
	 eUEshAExDGvatEEjT0WOEfhWYdcPbqhkSD51ytraEK0VdWLjFbpU0rP7jJEPWogE+L
	 Y+to1ZLC41g/LHwZzDa+o2v3CfRtZB8jv5oXklW3KnNzhC2XpIprUR837Q1+vZzKrO
	 J+Lw9ni7Cw4yic3KqISgi5boe0Bp1+ntcVYEDieflU35CA9q6aGTFmxuhx2o59M8cg
	 595DeaGBpgv0k6gaeHi5cuN748mVOQgcr1cR0P1YvbtihFgB7Bx4vLGu56AgZEZ5Xv
	 2Fl7XC1rexZ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9ADC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948626282.21247.8684956416225980162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee0fa052952321acb7c968d6d9a2963a6c38f114fb9be27e47b84ff747b3391
Date: Thu, 27 Jun 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719486262
