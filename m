Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398B43F12D8
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787224234; cv=none; b=NIHc8MDhc7tZSA983xE3c8DmjdHg9EidvxXdYVq7b4A9cRligCfFLYTq3omMipFC/YU+NIC5BB/li04J4oOikwcNHh33UtCXuuRnh5U+7QRRFr7k63Ca2abnfaVBZM3jr99Gw9EQrWxXrjP6k7DZPTtkKLFUvvHp87tz0yc7GQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787224234; c=relaxed/simple;
	bh=i/6BkOqbDADDWSOT325CXNBdah6WuJ9uTooTXkPWQMs=;
	h=To:Subject:From:Message-Id:Date; b=DXbA09H8+egqIo1yZpB4AU6pj2Zvk368acOyOrv3GW0cJdbqC21LXiidWgrTVF1rLeg8Dhh29zmfpaJGsU/7a6+Gsd+ksSObbaxOWMjSnbi0JWUXyFGghRci0vPCqvIlSztXg6vA7CexUikCbyW5MMtWxqAj/QfS8X+/R7zMZtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7KUZmNU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7KUZmNU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE6F5C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787224233;
	bh=i/6BkOqbDADDWSOT325CXNBdah6WuJ9uTooTXkPWQMs=;
	h=To:Subject:From:Date:From;
	b=f7KUZmNU2i97IIQH8rMz46IvfrlKCzfYiIFs9ibUYp3qartX7u8fjNWXV93vwmEOc
	 5rN/8heMapYO7VRTfHFvYeMVa3U4P94NFc1jVq7JOayrWiuoZkBwdDkAUOLPHarrkK
	 oJK85fOZBztFaXs8H5VahBWeKxmUc1RGPEqhkvp/ziK3cpERws3+eExDyn6edEM03D
	 FXZLmwKa84QpcIAna/OWjDl9/SlI2p3ggej/CMDv2aNNVhTom9dyP2TEb7JP7KoF9E
	 17xEAA+CbpDJHQ+GP4F9w2uOrr23wiK+jTBjQklspjm8UjBySGNL0FhXAg8rI9+o3P
	 K0tl0D0W16eqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFFDC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722423369.3608.5312707753947575017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bdae300b62eb98b6206da92bdba1174679718433b36a8ac1657f766da0147a
Date: Thu, 20 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787224233
