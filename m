Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3470726E16E
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740683335; cv=none; b=j6+xcdC8xav7uIq5kJfnWP3izOX4Rwcdao2zunUKtRPL6cAh+FGetq4JoJZR6R+PrhPWnygqI559AqT97+gWu3d3RE/+TNtiiwldALkQPOWVXlXys8m/tQFe43TDmsvb1DUDCiwu9iaOyjdrrH2en+L5Mk2s+Rw1FsRUjFYa3QE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740683335; c=relaxed/simple;
	bh=focI5sSB0oNxYmlI7eFMX0hZEKlz+f/Eqmz3jJJVEbw=;
	h=To:Subject:From:Message-Id:Date; b=kelxcoMyuBAOwWFb1ihi4Gvdfw/ghcQRbpng3xD5Ofgb9vT4DLkfi8x0Ie7GH5atglGX1/SDNkXnx2pyA/Ev7pEPyi6hQW4smYubPskAeayJiex+QQkDe9y4+zm6V/80dtJdMCrJ1eKHE/rDS4YJJfTZ8reTMj4/zUcsS629Nec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q05KlPWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q05KlPWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A579EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740683333;
	bh=focI5sSB0oNxYmlI7eFMX0hZEKlz+f/Eqmz3jJJVEbw=;
	h=To:Subject:From:Date:From;
	b=Q05KlPWAih0OD59cF/cpfteuTgxSj/8JqM8ThqjmLCOolOiTFODCJ+KVB+OL8JV7O
	 r4WiAcT9pq4gzBpA2/3sPkZO32M7hVXYgjsQi8ny3zOm5Az+hKepe/6JOMlpzZGQiL
	 jHLQNx6AHJvvG5LIstABU6Uy9jeBcJ6MauauYKCSmoh6S/rCAq0svj5dKP/xpicsdd
	 11pza8y+C3+G6ZwfsEV0WmNWmHiABkErg5UYa3y2c6UFZLHTgDRcHnJGNIR6esYtFP
	 1wLcOwDbUkygyNiM9/WbJ5t/SKf9dCibFvcj6NFdtLIXIOrpcfBNmqWnl/qlueNZyQ
	 2crgIOZCG0lvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92150C197BF
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174068333358.8115.13601136141183027507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a460fd7b8fdde89e432e3ee03b2491ec5f7c50f2987c0587ae76732dfd34bfa
Date: Thu, 27 Feb 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740683333
