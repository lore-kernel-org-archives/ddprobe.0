Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C50A186A
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745384995; cv=none; b=UszZ+AZaGmNKMR0BqVbgNRwC+OV5zVKjj82BkyHdA4YGjGQ91wN6eem//j0aLz284JqA6XOxSAfgZZDV4jc5O4fHNc2MJR29f56lal9cayt9fSiuFPHpwOkAqAdd9HahOvrwZBQKDpGQWee7aCIcpm+JDM8x8IgEA1U6aVZ79zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745384995; c=relaxed/simple;
	bh=m2rFQVWDyMJLvoFGoYBc0yMUGZPFOGR1VqUKzhIrwDs=;
	h=To:Subject:From:Message-Id:Date; b=Tf1GgESVxkutOXkfqc8NR9dmSbF2/ETtN2m/wjO1QMcJZQjFIqA63aFDSvmGn2FKuDOPKOfX8uyWvBpsEMwfsTo0AiKR5K/4Wmr5F7W471vob2QL3/pFnHUK+V8Ij7pdxDmusIT5mERkZYb9kRz3EYCteAbJwVL2r004hJJkQJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mm8Jxmpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mm8Jxmpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5048C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745384993;
	bh=m2rFQVWDyMJLvoFGoYBc0yMUGZPFOGR1VqUKzhIrwDs=;
	h=To:Subject:From:Date:From;
	b=Mm8JxmplPl2oLsUVvQPXJCY/sJ3VRvTBxsi7csAU6EkJw9Xhp9d+xJtmBFZxO1woo
	 Kl1PbddWMPyS/DmCw0zLimexZhGWSV4aAE1sJitAb/zBKUW3FYX6WzMENP8MYz3cM9
	 hRNPENGT0p3ejrFovgqYDkKroMY4IKjkjY0hPQYD0adfd1dk5kDpieRBbWLYoYhHS1
	 uNFBdGKoVGOIrhfuPmXfcvVGvx8MrCXeEdlOntfwy0SNzLbtN5RiY43RaspLL7vi1h
	 xYMNigydmrFej/q867isFk/eXBVyLees2s4LVqL+kjM6kKPwODQKSZnhukNrye+NaI
	 Te8mAW1n9fLPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FAC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538499357.10315.11085616842711460246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbb909e10aa6e4210d872d574f9021c6d937f2f817a5504e19b83bfefda7502
Date: Wed, 23 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745384993
