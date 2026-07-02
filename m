Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AF03BBFA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783032514; cv=none; b=VIETSZ0Tt5xTzzP2VnH+uGnMXZUeLD5GRnOxFdOiHJbyxYjcrijGR0IR5+sry2BprsJi1SQtXLrVdRNepgj7R4Kpst3eE2qJ9BMWsuGqO5W6Ryz27Cn4YY9o1p7mPhnLL1NDiBpgxU2xbzTvutYhHSplFmA7N1/oeU2i/RHvqBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783032514; c=relaxed/simple;
	bh=z5k+W79Q+sqBzQ6CMtI98nx5HmHqKTGJEivs6992WKU=;
	h=To:Subject:From:Message-Id:Date; b=PWSEkn0aIOtpTVfnVUUltiwwkGrdnXhDgSUhDVtavGRf4hZidBWmxL1v1b+oXZA9JKAmFPHTgh97Sy+KjBv72fh7fGmBfb93tli4D/SroFKdPXKy6ZqAhLKYOFyCSGtMS/F8IuD3UAKxOnApGHlUulONm4WKh4e+neTB/TYqCMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlfecFmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlfecFmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A1BC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783032513;
	bh=z5k+W79Q+sqBzQ6CMtI98nx5HmHqKTGJEivs6992WKU=;
	h=To:Subject:From:Date:From;
	b=WlfecFmLd+RTcXmToT/kxsk/q1263RJI1/8FfOIRkYTkcRjupFdpwZbvjPCTrpXZy
	 ZsjoUh4f+i+rAlk0JTcovGnwU1H/vIAXxk35NjARoCC5RWfv1yAmzUUDTmmQUS7CGG
	 vObD/glYvDhOgRjD+nZUN04L8jKzgBs9Ui0Wy8z0dDwIP75PDFOuxB+xObvssIIVZM
	 MxUymJsnnWh0eJFxzM5yTwS7LaqLT73S7sWySti6TvBCkTaprQ06zfoJRMHBlqW3iq
	 rWWdEaFZhKW+svHsWOoGWSpI5SNvDo3+DpZwpcZk6PhANrYAZJ7iHWJ7Te9R2l0K7w
	 aA2HAjvC0UT2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC744C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303251368.23584.10957653425542586325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 194b79351f8c6bc8561e62aa1fecc1cf2189f4d2b00958e5d268df19d5211673
Date: Thu, 02 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783032513
