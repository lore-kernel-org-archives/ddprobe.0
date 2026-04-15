Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21623246768
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776234454; cv=none; b=XFR4EiM3vaQBWgCrH6A2/atV+d6LH5k8Scu4liga8wlSEeRVBsW+Ezg5Jby5j6kNCcPik9qFZivSU51b2dggoXl4hCM7KvKfVutvkPaqDHId5LMVzaMZ6+ikX7xLn2ozc6HNRUjQM1bAmAuOxV7Gc6quXrrc2cJaJVOpaLwcyzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776234454; c=relaxed/simple;
	bh=heTppWdXHlPUZv6SUysVnbQDrCh995eOH0GIdINRruI=;
	h=To:Subject:From:Message-Id:Date; b=pQHm9lM5+sPpN4r1EfF388DHYe6CoeX/HrLXfX9Q1RRNK5G/zGPn+8+BVKHjB+IHzJlEpZWqW7lLUlzS32CrneS+xAaRMmBDyCxgTPZafemc5HNeG0iaZOaRZ5otoUYtjFckKzDqRbOpAF3kZmu96uz4U86KFlm7IUez+XrjMYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XT3cr/No; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XT3cr/No"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5BFC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776234453;
	bh=heTppWdXHlPUZv6SUysVnbQDrCh995eOH0GIdINRruI=;
	h=To:Subject:From:Date:From;
	b=XT3cr/NoZxk2IqndB8BCGeg+qFOEaOuI5EKSEbwXXOnwhSYF6aauE+kWsu0Y7+QD+
	 ZTtBFzxoutWxGjZUNvVxM98ZaUQLp/4pJRLohNi9+RAV5ZODEASM/HbZjTtLnQel08
	 wsm33lU1bdN0pVIvxfo3sk/PJU97Kye9WbN/eGyaF1KK4csnQ+SHKA5IFdQ17SG6Ou
	 /hrH/YhQNzyFf8/mBp1lYVRgd+BZFBuG/MVK9woKcatbGQ2PMj5do2Jp7bBpCBYhvF
	 ccV8rjPGjfS8Iktm4paQLiiBE0DFDOO8pNM9R9IgKkpIrnevuhEYoYuI+4bBqL+yTM
	 h7sBrbvgYRQ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9753FA0C35
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623445368.20248.10839985415509325245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf553bb4942a2339158683a571b6daeae440f4c66704b7269814d4f9bdd5ca88
Date: Wed, 15 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776234453
