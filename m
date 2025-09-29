Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3119A30149C
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759145994; cv=none; b=C6jQa/hi6CzSTOHoXsHoWpR+GuUjXrKTALdPaAPasEMJG8vdgYITRRWqjyXLWTmvkSy3ZscaVxza8y2r4im0Nzmy8PRkps91PFfK2z771C9b3vtiSDtTSjwLOw7Z6Na/yXYQpDxFDhj4lpmhG0yJkLYOV5Q8ptEnU7pl2UEx8k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759145994; c=relaxed/simple;
	bh=Mk+K3EhcEs0J2JHVvA07x/xhmpFs3v2WAu6sRAd7jYI=;
	h=To:Subject:From:Message-Id:Date; b=Dya4d9PpzrvH57rQXkq7s4wGrL0zV9Hsl2U4ei1RJX4G6GfmOcNMwowWQzL5PlZJUhifL221nyBYHdgpCqWr0WYQUQgxJ7B7lWGwZX+W25e8UipbOOvhpMWQvFDQdHwQl1wAY6LXtb5jM4rTeTVUQpSjZyyTvmVuJUd+tfuHm8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrmwdgsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrmwdgsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB87FC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759145993;
	bh=Mk+K3EhcEs0J2JHVvA07x/xhmpFs3v2WAu6sRAd7jYI=;
	h=To:Subject:From:Date:From;
	b=TrmwdgsHG+SbPhfo7WhAf9pPO3XJWJu5pNgoddngVb1NxE9orSL57IhYnDbRTGP+A
	 WYvMI5qQpFsLdp53QVNFBjDZVXjVsAAxnNOU3G/a+gmoo0ct7/p6cZFInf0Ww9ApHN
	 ghuRHLtzTIS+wWPwfN8facsIfncMeLaSqNyWSnoa6LYgDvVDSO7CqG1lhhuXoxOsQl
	 ShocycPVcfPltHWSczKLopsTCPhJ4g7fdKgHWKECFKVdt+9gr5B/mbiWo0DEy3py3N
	 2cEvuTMYOAfT9ZWhkC9uZn+jnA7QMaLrQSd3uax2+B+mFuxlDsFXeSGCUGdKBsWeeH
	 YSbMZpA0g0baw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97796CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914599361.20957.13524842188239209468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1976211092a6763d63c57a0db84426e1116d87a75e04905bad9f0d90aa9264cc
Date: Mon, 29 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759145993
