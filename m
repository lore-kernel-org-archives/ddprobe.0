Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1394CDDCD
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776386854; cv=none; b=P7dmCsNROUjCfY5jeDAQfwA8chDNCCVBXNdt9ntY5vtygnh0PsX0WWmczSeEiRmVCy9aK8F1zbzzL5zodMKVhqCYVWH3d45xq7z6uYETp0xTVUxMUGgkfAQ+ttbF7FyTcVHnS4VGZwBrBClETk0Et95JE1tQU/LyJtUWJmyLEuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776386854; c=relaxed/simple;
	bh=hbJZENdlBKJAUjmqtWocih627wfeaS4wS6ad1Di3ZDk=;
	h=To:Subject:From:Message-Id:Date; b=dJXjkSv9ABi9zkFu8zTHWPMLw5YDn3zkU1RCYLkofYJAekTtRnHvSZ9BO7GBefZ93X8aBknwVNCYAj4kF15uXcOJUVFgzMRKaY3gAqW4nER4WA2cEe6hoj1nSFu4Wt+9VULF97+H22dRVgGRhfEzBVU7LRvQqNMi/wUSHRIIhdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFN4h9LS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFN4h9LS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABFAC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776386853;
	bh=hbJZENdlBKJAUjmqtWocih627wfeaS4wS6ad1Di3ZDk=;
	h=To:Subject:From:Date:From;
	b=PFN4h9LS4WZB+kfEryfV69myot5yIjkHX1LRJoTVC3U8BkBCZMNVvAp6mcjelQBab
	 Q1az+uFzkdPXzm2IeAPxQQXbOP6mjJYL/s0XoxyqlRO47wzXuFsBENxtwRKFk8t2yr
	 SGVkK3NApCCvy4OVwcJdLNOeeDOMajy9OOTLwfUOCCgOo6BquXejY3BWu80O2gWKSp
	 0PIA5ZZXC5P34+2ExqYDCdWjHPY/u5uB3Y2W4z1Tx43611hq5obQnjKCpMGNCTvCYg
	 XA2oWn/OkeaLor+2dSV2OZHIQjOgBV5Zapo9CoHyFQWZ9HxlQlAN33AbSwGgrr0Kd7
	 nGYYb4jSAILGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9529F8E499
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638685368.17182.13899369931017577420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f6ee7c10bf85d2c134a396e34fad5d828f575e8fa13a5aad306c07a9b95a79
Date: Fri, 17 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776386853
