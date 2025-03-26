Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433932AF0A
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742968794; cv=none; b=JQ9P5kmpcbTOkhWKZPj3lgYID/NC6h02a/uABCtILs0Mjor7Y94K0Qe5pfQLNPRl6s7Dc39JZA7XqfZyfkCxIo98urFUajp1eWwoog2hBmVx6MPTH8z4CXvrmlivNz9qc2B1n4CfRN9M8Bpn6kLqHKY8o7R/3LoXk/1hyZE5fq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742968794; c=relaxed/simple;
	bh=KDbIS+IAMv04Q2kq2/piaO2APctxU2CYeq+1HOIbFQY=;
	h=To:Subject:From:Message-Id:Date; b=Wv6bZGcQDiVcQdlaZRC1RASCQUpIXj9c6MAGHKWox7NRc8MUa0Gjux3NAa3x+QrHGF/ckTB6xvXOwDAKRVFe9vDztneREsJiptpi23AbbKre3mN35VtNNYJNGVHcOC17eF5gaNtdsOl91ND3TUxOKoH+mqGSxuuxu4uQAa32CJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmLBH1nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmLBH1nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD965C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742968793;
	bh=KDbIS+IAMv04Q2kq2/piaO2APctxU2CYeq+1HOIbFQY=;
	h=To:Subject:From:Date:From;
	b=SmLBH1nxs+NuGnoepy+y8q9Ty7bG7k3wALVa1oz6OmDfURbPM0pdqxTPE8//8pXZh
	 0m2ZFuBnE2UidGDCKRJSKCNJXPt1Pe1FyRU54aBwNkegf1IFaoybXUF1BRSG1GVmLX
	 9gbkzNf9yLMD24m3LdGFQEnNjhHssRzAGavsPHA09/Z7wdwIOC29Hlw+gMcWQGPlOQ
	 50GyY77n1V6M9j/RgiSuRnd/kYN6UwEoqwk9HZ1H9fud80PyW/gH8ctO4Fgpz5jUBD
	 DymX+DwKMft2g5AFE3x/bMeUX3HNE7B2yIcEbpGnXMpy8kganxOXIPZF6xAENgrEsd
	 jeox3Wmy4rZ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7691C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174296879359.32229.18304324528483496978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305d49ffcaa9e04b768bbbdd02d9d1922c1e573ed4dcd00a13657cf0b2e83660
Date: Wed, 26 Mar 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742968793
