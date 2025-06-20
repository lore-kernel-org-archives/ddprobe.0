Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA351DF97D
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750454394; cv=none; b=onpnAfGgbfg+joxu/XDmi0qOEyXz3ZalImTuYAwChBFBzzftMWMpIAe5i7n5zWU7QzrOHrZZ0NEvJijihD6o3gR5cu7YHMkUIStk/J44Gy6Toge2iqhcfGTpJsbC9ZGGdL/delBXkLLMhRKO1RIkpUmecHY0PDc70260O3Nwg1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750454394; c=relaxed/simple;
	bh=bPJQ4fF5rnUGO6ysuLSUpDMCCtZRB4w8lmfjZmX+IqI=;
	h=To:Subject:From:Message-Id:Date; b=ihBfj6Hh3naBZiIMw2h6Yb0oP7DhHCDkkmJT3iuIiKcezm5xNcV5dt4TIldCq56j3jgcYzbaZPhY9l7kqu6nZzL7xOY1sm+rGTecYI2BMyg2Rvz2LtmksHllusLaMgSvxlFOay+XrdAGo1EAyAPMV6kaGMnJ/LV6iQbFwtghWE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0VV+d5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0VV+d5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1144C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750454393;
	bh=bPJQ4fF5rnUGO6ysuLSUpDMCCtZRB4w8lmfjZmX+IqI=;
	h=To:Subject:From:Date:From;
	b=P0VV+d5EyJDJOOW3drAIQQBRmn8riH4Dxu0HEkpSpV8hJPwSFa5hT3LbOFhdS/+lW
	 +fuozOlIwuFRL/AIL5pEnBuSKkThH3BwFvTnEGzd+WjVpid9iK0yQSvh/cWhKCkFxc
	 3kL/fwb4E2XhreY35vZGCPwJSnaEOP1hLVykbLE6/Ev3a9fcu04xxdfBqOIYLYmt1n
	 98XcFYPngx3kZa5P4TVi4YwfUBPMZIgEWV2QOyjLEthKxSPUcKTB+LlO7VTWBq7I3R
	 6P3QwsvQI5ojPOL0gbzP2XLBWQtVM34/GzyNTnbOifCdWQckMpELS1+yN/4lyacx2y
	 YMscakpyBMKoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB07C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045439357.18308.11996999976673260468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b142e9311f1da5d001328492ac57bfe1d46503a9f1f647a5ef8e2914a809b4
Date: Fri, 20 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750454393
