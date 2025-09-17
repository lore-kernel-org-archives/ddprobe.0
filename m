Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAC42C21D8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758140994; cv=none; b=t9RybHhJD8t71zUH5bgvoyS5v0NB5jXdV76TQGj4XBGAtcWF6z8EEtgTfggi/Ek3zAkXtUj7IqpbaIbxx/fOatkn0ge5pog6nLX4aJ/yi5V3zuayqlMWbEiK60/drLOs4mFE11hHwLETRQtfQ9fp0dqbONG3TXl2jyQMyWPmxto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758140994; c=relaxed/simple;
	bh=bcBiAwLxU1miBiyiJ0UfB9oVQUTxH0APy/Ie3AFvn3g=;
	h=To:Subject:From:Message-Id:Date; b=SIoDr1fNxgaue1uSbxA68dZV/VZs+sqXXoteJc6z4iWS1dclfEkwyKCqG+vhou1vs4wWTObbHMvB8tYqJf5+zfJx1+CyT8lV7f8wAE2iajgX2WbLtRNNHmjL889urklirIagHqqvkVC/zAx1KiVMA3ndRCBMEySd/emUBoR2kW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzPLocqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzPLocqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D47C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758140993;
	bh=bcBiAwLxU1miBiyiJ0UfB9oVQUTxH0APy/Ie3AFvn3g=;
	h=To:Subject:From:Date:From;
	b=FzPLocqzmxHGM7Jlb/TKKN2ANPf2SuQJFOo5UBKo9mFv9TibT1ioanyHWSaQ1ajXc
	 psErXOPQ059KVwLxR3A4NQ8DR7l6Rl4KgvLzJflLYMGgj63gd4ix7jz6W2PaD+mtr5
	 m4dYfS1fw/EOvL9osLO+3f/yE+En4MPA9Orb0BPfpvYnS1nZCiUTfcF1k8eaU2r3c9
	 +kNOVtIVWJ9SoVLSo71UzU9QwjOlmAy/hJuP3mkTUEW04pwwbNNQP8m6ND0a8o8HKF
	 idNPp/u9o3U2+xKRM50EvYuMxUs2r73evm7Cx0GJCT86WWI0XjxIO5uCJP5Sj9e+Q/
	 +r3OSyAJSIYfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC2CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814099359.11858.6611476085100305431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb47a1a41d871ba719dd46057a7090bf09b1ac9a83ac7bed4583fabc746ed2e
Date: Wed, 17 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758140993
