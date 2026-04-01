Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2524E3F8E03
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775046934; cv=none; b=Z/Qfi/HSJdUYLN09bbFFKHArHAx9xnnbhb6YR2kWbgVevrYCi+3df1P8Q4cRNeB4jMxlXiD4XkSlk6c2QrI4r1Th3uIHO8ovqbHHu7QdbwQlzd/8fRUPfzVeCqv56f7m6om+LN9K0/jtuZ53EO9GpsMfTaFhldSFfbIJmWdqwns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775046934; c=relaxed/simple;
	bh=96gX12anmsiao5+ENC6Q71A3qW17F6TjWaYMmjN5vvo=;
	h=To:Subject:From:Message-Id:Date; b=Fe1vXkF/Kmq0qknI/VyrJ+JWDEtzGFz12/pdGcW4KdMhS01MhsvMj3c3mYYl4JhRifA4Zn/ljJvjkDLiwkFWlFQFmrKzxu6y6Z+SKdkkdtPHliEhQj0DGsk10qu2By0PUmFVENdRJkEFUvYneURUguyHZXmOeQE+NZeV40/l5/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gL+mLFA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gL+mLFA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD483C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775046933;
	bh=96gX12anmsiao5+ENC6Q71A3qW17F6TjWaYMmjN5vvo=;
	h=To:Subject:From:Date:From;
	b=gL+mLFA/gzx1R/B/mcPYREVkiiXR0EmsMizkCFmhW5RZzC9NH+mOKtT9+ihEMFV62
	 HABJHPoU2eDITLtIGSP6JymTX5AjizPyxFEFtKDydSrgwmkSRYMc6ktjUbH8qqXU/G
	 dhA2z+xXuBJBx6ZS+Mon0kIwuu+lmICNaDLPQrcYAyGUdSF5IhAKEyoMqxkkFS4V4J
	 v+VDxt7wQbqiO7Zb4IC6fpIvFq555s79EwUGD/JqLydPgOB4NV3uIISO9NhsDbVhPi
	 aplhPb29+XbyhuEGU8AoN2z33yzn2KqwDgj1l3sKL2uDjQlwLQB1HhbAJ1oarAk9Iz
	 hBNWObaV2Qxlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA53D35177
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504693368.6739.12188124368779220509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8645ab2b7775626694d4a56b6b7ff77522d8bb74256a68dc21b2c1ecba06a8a5
Date: Wed, 01 Apr 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775046933
