Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B90318125
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755166794; cv=none; b=K2zF5clE+C5BTMDzBrrTn8PFv4qjLqrfou7gJjnrYNa0KBffWO9e+LAOCippn9WreS0IiZg/sZ9gT0lW20C1E2+BQBX2PTdT062fdyCVTiFX+K0Qsz7cPN+Xv8MH62tbh0z97ImR512QFxOJqNwBG8opUj76jgp+xdUo5Y1QvqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755166794; c=relaxed/simple;
	bh=H4RGDEje8lF4VZRDedyopY3fksYalUQzMqbU5vNah8Y=;
	h=To:Subject:From:Message-Id:Date; b=sgNEpkj0DYrq4kZHvTaWtv0jNV6k+EHAUD6ra4C6EvjZyZniqROETDdmuA4/USB5HpmhZ+9Q4doxkKlb96d4hnwG2svItBn3jbgwTSPKZ0n0QcaY7PCkjlI+4mI7W4x0JkRBF0LPOnZ+1Snmoin8/AwZA8dQeus1uHwk7ooz+i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxqjoxGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxqjoxGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D58C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755166793;
	bh=H4RGDEje8lF4VZRDedyopY3fksYalUQzMqbU5vNah8Y=;
	h=To:Subject:From:Date:From;
	b=LxqjoxGqEVkCC2cqUcnTQbWP/gjQSqll4rxZzkoRfyBvV7f7I/zCnsYdxWf8Fw1uz
	 2pWVKke9mtJvglZw2ibhg9gfWhadwv+0xWokGB2Vg8F+cEXQn404mkhAGAkH/ziYFu
	 wWIGGJGqEHpFxPh/nvDYLdFX3G0vp+doBe+vagiLQMpYLiML1ioFAHxR59/KFO6BEQ
	 fvutemXmc9RI31+zdjqQ6ezJ/RapwZhhClMYUyA6OIYHnAA7gXJzAFJV/in9w201Xf
	 ei9hUXWJRIHnhKR6dECCw8PYOXWCZlvOI9v4TLwLP5KyKVchXtCIMrbtPrQPdKeHNy
	 m1fCDuv0+PTuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED7DCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516679357.3884.6689593935519041694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4eaeb64455efa204eb79137f4b9cf73696f4c4b9152306c3b30ceb3551e7b6
Date: Thu, 14 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755166793
