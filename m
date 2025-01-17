Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EED01F957
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737139554; cv=none; b=dreMGWLttcCW11b5iEPuxQtaZPSyMe4MU8+Y5lyjy01w0RkUBivybFWYGNqu6RHTh6f4w0tORfa62KO+vU4NpgyTVitvdK3t06C25LCnoU5Hl+ND3LQF8DB1RsFiKYmap/zZ928U+5/Nm9WclcK7o7vNvPiBIdImSOsui2eG2Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737139554; c=relaxed/simple;
	bh=QaRarTrYvYWJC3Jv2ecJ3UZndxCznXAythoof5ikd7Y=;
	h=To:Subject:From:Message-Id:Date; b=a4NWQcDNrh3cmr59s1/Ka5e8fZZI3sKxAmQwin9M664TaX/bquBZzaVjrKQ1zVHkzkqbx9Pes7YweD4k+5vge/kfqfnWoNenD74f1hORPAeAwpb/2CUO+VXlqugC8jfv2iSkzHHeeJWUKScjQMpGjWVVh8hlhXKGuK8kyHLJtg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEq9SAqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEq9SAqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DCDC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737139553;
	bh=QaRarTrYvYWJC3Jv2ecJ3UZndxCznXAythoof5ikd7Y=;
	h=To:Subject:From:Date:From;
	b=ZEq9SAqGVpP1XHN6Fefwv/5CODHoGyyRPW8VfzAUzjuXJTxCdnIYVx0ZtlvLeFhoQ
	 LWdO48lVYP0JCevjdyd67GyVdWhjEBdi6em7TNReL/+ZDmYbqOz86cuyVjKF9VFkre
	 dBoQ8mpBysg8ApXbhP1C32h9xeSveHcqS0Mi5m8otebljSsm9Eo8iK2DI0yVAK0ZA8
	 RezVWkUPinTZPT/Pr9jFxAji5p4x6tfRzTnj+WKQqopQpTybljwUzdvllAyv0YYtCY
	 9qLYHQbYggeIWV3RHxQzHq+FU7UxBYKCFwDcUPYytKb8AgfU+pAQ6l0V/9jI5NkGAl
	 oVZd515i1yYMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E07C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173713955361.17645.3785878932582474534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237671b86cb92ea9db1eaceaca15a8f43e334644d2aa7e345c2b15d71d0046ac
Date: Fri, 17 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737139553
