Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C861741FA
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726050954; cv=none; b=Lu9F6OQ87wGFbPd2pY77CpLKqb7O7ooosVBZdKlObkxyLvk4xuVyyKnwRRA6k1YUMjAraUqLXm30AKA85GZCpci2cppIO1v435viGdxq6a0Z5khaEEhcGcqb9v3bULsDSsiMZhFw2ClEpU6bu70CLs8qpxmc/gZse4VtB56QLt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726050954; c=relaxed/simple;
	bh=QSrOsvrGdSidA/TsBCtL0VcZNwij+8czDQs3Q+9Y8B8=;
	h=To:Subject:From:Message-Id:Date; b=MZTseiXj+Q+RvXWvd5UZwGrn6SRtknzwDnXfy3/vtV3oo+UhZYd0Cg1ddjB+i3KnAWfVUqcE/cEKppXKfUkGZ6eYRJnmiYb8KunJCOfekOVG6D0rgcc1MK7U7yZPpLG3PSrIteNb5xDAylznrywNbWJJEjWWxNl2vSEqsvXV0dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukvakrEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukvakrEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDDCC4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726050953;
	bh=QSrOsvrGdSidA/TsBCtL0VcZNwij+8czDQs3Q+9Y8B8=;
	h=To:Subject:From:Date:From;
	b=ukvakrEasT9FNxuIScKZPmBq3lAWzuP7T2Yga4S7nvfgmDG0U9gzSWeY53ehlxi6M
	 aunCWXHiiOJkc8aOW2GkiZrG6ogqnqiQg4Tb8h9hp1bg5w1K0S8iA9jJFGw0eZLSmR
	 Ro2eCLog37G8UpukxQC2oUYh9wsBmdb8yQxGWoBqNtQJyVW801BrTywtFkPBByh3XW
	 MPJ5ZC7k1xq17OO3kLuRd2uudoWICaik35OeBze2m9ztSr25Dlp7/LfhJu8q2VWvCj
	 YsJL+d1upJmwCh3xZ5b2C/2eFGiUWdSDPpN4WxT6Lgjaf6EHwIfa0myIEU40q14mwe
	 SiI4B/uHdMTDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951EFEE498D
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605095359.10564.6648195353015887122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61ebab389a5b9aa9b46474ef4adb9b54a68f4f75fca2c77c99df47e49462542
Date: Wed, 11 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726050953
