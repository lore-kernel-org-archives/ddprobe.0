Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60900238D26
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738942554; cv=none; b=uYjol7eLnuEHWvfmQI3ibYRraoPkMRlguFYjv7rP1GY3+dEA64CuuVDWmoqBf1N1jtrZA3N5kuprf6KI30gCctSfO6pUXQJI0qZUMYKbLOJ+ESeldIMKebrvLVhyaCoNn+SY2XnezbOyEXRoGW6LU73QeEI3zSOYxVKlevCUjng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738942554; c=relaxed/simple;
	bh=zqx58EzAR/eYla9NnixWBdrIpHqD9yk1RsEQA0Sa4Hk=;
	h=To:Subject:From:Message-Id:Date; b=Y3qwjNwIKtZtTX506Diz2MzyGl1FXSCxIddKMZCi4Ek+OFm1qxWrSijFeO+A2fGr0R26+uCtpCAuKxWKHtgHkApPzNZoowsa2l6nTIAe23c8q+53b5GwcZbTWweawKoAXpJlDc06cSeDzsEZZfWOytpPl6dwFruafufFqUvXBsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRruOTRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRruOTRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D82C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738942553;
	bh=zqx58EzAR/eYla9NnixWBdrIpHqD9yk1RsEQA0Sa4Hk=;
	h=To:Subject:From:Date:From;
	b=aRruOTRX0qO5PopfEmC6N3UhVAm92FP0mVlByZcxIET5yLfvrH0onTboXwjAJN/m6
	 fL0kn9vrZnTfFhEroPC7X6JPbO40mkQ3kjX++B7OZQDn3AKWl91KON/JdiibY+VY9B
	 stroHU1MZWum1JCsGFtYbgLslquy74wMr5ieY0nnXVQlN32JX95+BHO9rX0qMywEI3
	 sI1hmsNP8Qb/VL/QzUsp8f6HwDJ3ra6IqSc+730EIQwVxqjJZALYb+gMWyEyqlzn72
	 ttOnUS9bXrWOnoOHIZ+kaWlf0WHD0mAGCC3ZNL5l30fqOZs6zeV8xV5nOxdkritAkk
	 5+1aEI9hwGgoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4650C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894255365.2722.16999214017621174983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077ae5debd2247b6f11348371b38bf18bd624b26373ab81d839eec5331a555ab
Date: Fri, 07 Feb 2025 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738942553
