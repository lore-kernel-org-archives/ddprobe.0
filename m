Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC5D7F
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717049063; cv=none; b=icyalX7Wj5B/U4JC1+p1SRpy/+Lge3tSsEEcLHqqmI1jkNnPjXZQgfuZfe2J/WklXcDz2wFc0TEsqo92ApSHtBpRqnBfEjjo7hrtZYWcjxKBSZbDLQU17DEoKmdiMdFOj5CjHkHEgfNT4y7bX359oQw4qJGhTFBNCvUJOFJiNw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717049063; c=relaxed/simple;
	bh=8pz/YjsfvwbmKxaHktRGNNJ7lXFbs4orzzgpqZreSlU=;
	h=To:Subject:From:Message-Id:Date; b=g5NqnmRDQ1bJVHygujoxZ1F6p9Nq2JbhVOa+jUniZgKfK7QfcXOdc34+kcygs7uI4XYDHpRNvR/i/C22QcCV9sVwVbBpgbJd8dy9ZB4iMYsFH9evCkrm9aLsMEOgpy3xsl3omdoSvcw4OqbNfjHQ4pj5c9cn/pHL8iy65prmLxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixns6xOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixns6xOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6B8C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717049062;
	bh=8pz/YjsfvwbmKxaHktRGNNJ7lXFbs4orzzgpqZreSlU=;
	h=To:Subject:From:Date:From;
	b=ixns6xOOVRt0Sc2Wjlx0SbmzfSTYzNtjGS+rdlzYyH/G6q5x/YNHK7ZrMHplKnFUZ
	 MuGqHbugaT2u/fvGAA77gdoFtEePD8C3VHRtc3Qz9RM48KJCh1lvh8WM1Jfbv+K0oU
	 DvKf5KLqG/Oka1EDDNV/JTxQx95L8IieWJHQCmt0rbipAnpnt2ptq1wr5VVwRksdLh
	 2Sgaf8jItMptFZ2KwFUuYxE9b9E4GD0AvporpGIouz2GzZ66ynBk8c5G4aXKpz4j8h
	 ZlH5hYi4hIMyBjM5I9lIcgaQllj3cLRJkPCd5dtdFzbgh6OIPd/MGkTk4Z/UzCB6Jz
	 lZ0qt5fY9Buwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA3DDC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704906281.7941.13097986247044762971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3ae0e807387ac29885eb20381432531aaa807ad9f6921afb566489a31cdbd4
Date: Thu, 30 May 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717049062
