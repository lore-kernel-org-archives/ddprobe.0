Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283191D2B34
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729034754; cv=none; b=GN607tFdnPmRP5kgFp703DDJbkD11MQ/DYIYqQUnTO17BUvKCTXch5K+RkkzqQ9BcfUphlVDrrwAVYf29icv/68bw6F2upUZxjLEraa7/d2cyBKqrkpl/CcqTqPhK30w2Umh04LmYA0KDKQxvGPE+l2S5B4V0KTEUV3q8hUHTdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729034754; c=relaxed/simple;
	bh=u+k2NMuEctV7c4x75VMYAsM1wDqnIjsLr8OeFQ+1KAI=;
	h=To:Subject:From:Message-Id:Date; b=GVOVhmNv8L+a7YT8cVx4SvLN+xSyj//9jRQZGm6nG45BTkJkfcn1Tc6mwZNGVmlqgEfIJEK5LJWA+QbX8brjdvELAqwIVHQizag1vj6gexnN2wIbXVbDSmKBbUCj7SOQtTog5JlQJoaZ/2sgsJaE4el964IxhiwjmIb61N6tjX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crsfaJxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crsfaJxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD389C4CECE
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729034753;
	bh=u+k2NMuEctV7c4x75VMYAsM1wDqnIjsLr8OeFQ+1KAI=;
	h=To:Subject:From:Date:From;
	b=crsfaJxZ3SSwOtmyfWLjb4At5ek4tdc7OJ2DJEqGpLaud8usspUEv2W9aEPdpRt7p
	 xVC62TdD8BcIgMEFw2KQ12oTP1hDJ537ymbvR2CYxUuTL9cHy1QddR5wpQyPVyc/qa
	 ohuEteM5C5lzfQ7EREOJDYIhMj/ycF7LJwuVS3tmqZtQpUeDDF0muklmva2gTEV9Oq
	 F1nB83MHZTsiTLGDh9rzlhBtucCKiAnpViCmV1R/3tgz96j8wLV95BHQVkpnpSpg9K
	 VWuC6UwyD5pYF2Y4BGPsXn4Ah48iNiviMj5hLyU4pIht/mWyHM+mE2d4ZInmcKojdW
	 NyWMcQhP62HIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF1BD20686
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172903475360.17901.6943546703922023660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de73716c812fcb3284d7d5048eec8f476e9b8b09fd3aa16546107535211f0eb2
Date: Tue, 15 Oct 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729034753
