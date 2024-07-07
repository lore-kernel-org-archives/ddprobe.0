Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE1BE541
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720322783; cv=none; b=HOsWG2yg0l3D/VURcNXxpS27wAgn7KaeftvKA5ukVnwKpAdTUGfr+yRzn9VrgtrnLcmb5daXOpQvUf3fl1EwMnNOsdgHJkVaMJey2e1pJGDSlPvfyVhd93cFqNnaZ6/ZbWZQ1LEBazVQwLMES6fLqXbdPd4KkYjhL/OopO4smqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720322783; c=relaxed/simple;
	bh=am6+N4ll8BR4kNr3c+OO6/K0vuMUmXLbWzJqGh4SG50=;
	h=To:Subject:From:Message-Id:Date; b=EEIOS4GnKTrdCiTFR4ednpEhJGhyxlNcD9vDmxSJncSjpIa5OUilx8mEYuqaenBm17qghoaXsnHdbciGm/6lmPaaneuhF9m37+QcchBKqfrrHKuFjudHN8S0KJ5DSc5bSAU8USN0mYOB4i/fx8EcSgSLbRSiLpWDuuDt2zDR22g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hc5iwLDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hc5iwLDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7331C4AF07
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720322782;
	bh=am6+N4ll8BR4kNr3c+OO6/K0vuMUmXLbWzJqGh4SG50=;
	h=To:Subject:From:Date:From;
	b=hc5iwLDuesjT5uZ8Y3eXsUXhiwoEiE4gx2PnJF4cDIR04z7qVEFKvUCTDybXLAn8C
	 AAK8JAOxbsX15ce//rQ6Ie78Pg00HZwl8Ma8lpoC15tPAbUsKKy2Hm30EZOQ3P2+of
	 3eyyIs0/h2rU0uPzLreQeMjSd01h0ytsn5OOgqC+t1Q1kYLjzmSKXxgz08eX0Zjrcz
	 3ds75M7Dt0WGyDeCFfC5IJEUhOTRODdTRYyRHUD7luvXeTUmrQbf23v5Of8fumCoTi
	 Xjj16bvipxVKZtw0zhP8WW1krgPrsvDYU66sCQL+lU4V0v1f0ME2eCLTU1SiEufGrt
	 bbICezEhQ7fPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57CFC2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 03:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032278278.12888.17484408702162492356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306b93c38a12a3957170738cd69ea2ee79e46bddceffefba8ab0121daef7385e
Date: Sun, 07 Jul 2024 03:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720322782
