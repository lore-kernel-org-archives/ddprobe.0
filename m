Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5C521CC6D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749718194; cv=none; b=K0zsrsEtkfk1DpTFnbUP1O0a+yegee5IoVx9NAs9icpUgvwsTLpUiUEvP+OzlXpN+gUnzt8TuvFlXpm3yKLm0xuU7smwLFRvIe0Nc+BuApbqE64Dr5uNEOyS8swm4PFXpRNpzYwrtNDypba0RKKVukaDDUZ2Svd86bDSHeK7+Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749718194; c=relaxed/simple;
	bh=xl0fzl8kqZ6IrpKpuvya4aa86H3TWKWgCCvrbDm8MGA=;
	h=To:Subject:From:Message-Id:Date; b=vDCq0Zfn8e889HsvmpKOSozRRrGJTkKqNv3fHqQ4i/JuIK3C9lbGN9tPEW7Y2wKNAMPEXAOlkXE6XXT6kNElKPQeHzGgFf4YQ3l+ogkrwVqNBxlJWtJ+0keIErMlMVWXtVjqPuJl7H1TYDq7L9M4huD1D8ZED28r1Dt9I2P2EEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izt3Q6Tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izt3Q6Tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C5CC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749718193;
	bh=xl0fzl8kqZ6IrpKpuvya4aa86H3TWKWgCCvrbDm8MGA=;
	h=To:Subject:From:Date:From;
	b=izt3Q6TcFUJBSOJHvjms8xfBNY195/oIB0WTDXKf20f32DSPWA0CYEwgWtESbqiee
	 9ApPGipcc2Mifqh3/3g/dsp1SN8hSOmqplIVwiuIUSlcBtRQ+E/JkTNpVsLhsFYOg/
	 lr9zry4faf+tZ+L8j17xBTgJVf5UYxnY/DC9qU5eouVXwwqGSgItq5JHMSAg7eEhrl
	 /a7RwHXMl2hAe5PlSGvvpvqE6+9VU9IYUJeIf1pV/xLT592nboEfBDTBHILfjNyBlK
	 zvunEZh1yIWnLv+h+D7aMoRKlxsYephCn31Hgnj4pipInKTwczJCztWRu5ef7SNAoN
	 eqqYAQRSWHoEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9419EC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971819359.29323.4499874231635930389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d2dd58592586fc0a60d7ef3b9fab4fe794965113f4cfd40ca023d8eafa5107
Date: Thu, 12 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749718193
