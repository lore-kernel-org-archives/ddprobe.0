Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EFE21D3FC
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741361934; cv=none; b=Xl1SKX1jaKOoRF9DOYW5ZvjlJpgczsvpNouDuw7nzWhCT3207kGptbbSFg7gbEL7ee27+Qna7UWr8uu1DaBs01fM6IT/PZKTUnnnTg6u04TGGGLKXU0+QfSuD2HzRt2Q1VH9YOZA264e9Xu3aIn/VX06c9tXyI2bE/3++WYuHhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741361934; c=relaxed/simple;
	bh=puuKjKY9VZSIMmbUCWiP/O178UuDqKxjkzcE55CLGYg=;
	h=To:Subject:From:Message-Id:Date; b=CeFOP/Hi6QJjA0naU+AMr39dEYej6HB499WDaSzkYvN6AenDOhsCRqpJpDfYY4vKM47oAzA5FAc5RefBYOsS6eytAADzYEdg83b/g/roGsjGao7blEtI0ZrC0JQBtmcE6oogV/mZjjphWgihO6UPeIud4tV7Wr8mt8Px8KYwpRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUPoVrZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUPoVrZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA61C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741361933;
	bh=puuKjKY9VZSIMmbUCWiP/O178UuDqKxjkzcE55CLGYg=;
	h=To:Subject:From:Date:From;
	b=BUPoVrZF4vbnI6CV27lyQ64GDSG9E8CQ6g2tiHUKuEpvIKhlnfCWW7tlEYHJnRe0i
	 CQVKB8khRT4eprOhP/dW8gL8jXVxhosQZJFRCTyVAwvL3VS+WSfSYcO9AKgHiAB0Cm
	 zhv2aVa55u5Lm98cgBKM24EXJqKdlpfBF5ikT2+daNZR4rE4K3hgkOUCAIXqw+RL62
	 dymfBo4mUGlYjSqDGHojYEZYj6C0jo7sdi156/5beHd99pD/xiZmMYcq8rlu6Llu/N
	 L6wP8YTIDFs8Aw6aLZA3OnkqVo4Ln3iMireISoCvEhenKVhzDtWjms/8t5KlBOC+RS
	 oezYAE3LJY/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91126C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136193358.24415.3340730735766961901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ef5383658eff4260a8bf7fd627192ba88f938a1a0398bf32b4da77734b7514
Date: Fri, 07 Mar 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741361933
