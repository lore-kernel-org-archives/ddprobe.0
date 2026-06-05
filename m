Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C83399CFD
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780648474; cv=none; b=RSxUxRg6PxWVEBG1oq9XkBMiJr3EHbcFm5CYz58BBzYrQuvwVw4VixOFl+45t8dgeVjf7SxU3ecGBc8yyNbB3hdxnWKVPTPeEd7yor5KLvyyy/wq6sYppm+kHwHbo9CixBJz0XqTHmXF9uAMzpakFem4nYD520EIj0YjFnxpnfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780648474; c=relaxed/simple;
	bh=noYormxQZrJm4P0bhOd/aDSzYupmQq2T4ZsMZsEv+YA=;
	h=To:Subject:From:Message-Id:Date; b=tkWaXlUDj5vzKiiUmUkq8uOeqPqLEJgKRckdz1MTDuv9LWRIi5Lf7ZOAaOnOl/tI7U4n5igp2HuLKKJqsh4f68oZVd2n+XNyC8Qt41IW29NSHSEhrjKXr2mhEWXcAvOg3URTdcfJOcFZbfpspP5cVNtCQs4+4g3Lg6DIGouQGeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhoYJc/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhoYJc/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4690C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780648473;
	bh=noYormxQZrJm4P0bhOd/aDSzYupmQq2T4ZsMZsEv+YA=;
	h=To:Subject:From:Date:From;
	b=MhoYJc/Bn2XKoR2ILTuEzEDJ08UGpv0fORlW2lVbWYKKIcahtJHyrW0NAextHK9CK
	 aaz0vZHOw5zJIb1+ATbSfhH+Hth26GTO/f+ZyFJkXn2qNpvqeemve/b+tdRU4ABKH9
	 mcPdOIu6Fgy82ZvNnv61lDucislCr0LIhbVDlexqoy9AeLr4obfLZK+0IXV5uWHFZW
	 bEJGXoYXrcvS2kj5oVp2fH0jdcBIaTag8Cnpg8hkNmsXIfZnAKX2ELNGDIP5VrnzII
	 5EVwTRq4M9mjBCothP1T/MzQuAL4uYZdE/TFNLfrtmSfxqptyD6/hZynQA8siD5uo3
	 hgm7mdswL8lQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69FCD6E6B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178064847369.24734.3245775255199565350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46ea4e35f621887ac384628c5d5e36e225ef88c0f1c104b7ff80fe6e5a93e0b
Date: Fri, 05 Jun 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780648473
