Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8D141C69
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745430594; cv=none; b=NH1FPpWg6EZCAIH2l+HHZQfAmEUkkennCl5dH4CuUcLHr3BeBdP965AUeh96rw6GnFU/G93xXcE2jC6ZyyI+xsANW4HPOPIt+MFJ+on0EXzQWdLvHuID1EoVZM6BwOSlmnM6b/reuKKmXyqkz5qKRMZhi9VagLS99ehIZ/hk5/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745430594; c=relaxed/simple;
	bh=aevVM5H6NixQ65IUYjm/jT+UUZLyi3gVBYGC6tSnUNo=;
	h=To:Subject:From:Message-Id:Date; b=D5awGmcIsr5IBB5vcbTBF+j8c3San5tI4k4Dp4EQlxkFGNTr9sqn3O13ynhQrmkv7kciOFVZIYMKOfrVdWHhdANfMCQTezHgCctmJfCAYNTgUV5p12JC1SuHRXv/XQgH13gVkf//GYgo/LIsB5vxAGLnWQMQcxkPxcGcNHWMMWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBKNGuYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBKNGuYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745430593;
	bh=aevVM5H6NixQ65IUYjm/jT+UUZLyi3gVBYGC6tSnUNo=;
	h=To:Subject:From:Date:From;
	b=hBKNGuYk62Mn2859P4ZP8CFH5fq0ZGsnNA+KFobDzs6lo2TksNpWkAIqRaZ8EDJa4
	 6GPtwWlz43cop2xGbKVg8oo9t2qJmgHrO4axYNAa5mIoUf/yLg5IufO789bxam2OMa
	 mysa5yaSX7vGzuHAbpNzSahPDSlmL0ZDWwgBLlXuXoD3wXPv6QKk2f65iGCDT/ncZt
	 X5UXdt3xOBejhng8bH+ogOgwj7z2eKywuxf6t3eUEl899JcKsc4erv5s5+u0Z9SrKM
	 YZqpT5CgamLLc0wjXH873a6wjzCot45gJfUeSMDPrvQxlFON9EqHmVAwjDiZLD/5/6
	 Zh3GRhfDLePEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9F2C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174543059357.19704.14132385736717706567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddbfcb99fc6442805ac8943fd888a2177fc3acd46615f018047a9316bec5616
Date: Wed, 23 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745430593
