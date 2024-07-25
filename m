Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA376FC2
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721916954; cv=none; b=tKyvGJ/MuGpEM7lX8MniG7tHoyR4KzE5zN+vDvo7mRqyZ7JgzU94SzoyGgtAL1NbOk6A6CCVwc7R567bs/72AWWZDkes5jtudnCh6/kfUnLrMegjhZhIzkD8FWRZyu2HRmYpQvJmXN1PLq6EV6JJ/Q5tdkwwqTkMekLp/WOUEzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721916954; c=relaxed/simple;
	bh=MXwpON7WZ5CAdLaDrNkgX0DR7vuSkre+OmCDb+p6pSc=;
	h=To:Subject:From:Message-Id:Date; b=eMfQT0sQdi1Dx1pWc8AAzhU//LdaN4E5z/0lrKXqoLOTHebGPa9i4/dFn9IDxVjbkOr8iPoZuSmVVvELBzAxbh8sugjcWYtDcZkf8vbDn7+PzbAbO50KLdF6r7ANIK/vwRD6DgcqC+FwQiQjMGFgMXnZWG29MjpjkWcJnwzB1u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NE+id3yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NE+id3yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0E3C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721916953;
	bh=MXwpON7WZ5CAdLaDrNkgX0DR7vuSkre+OmCDb+p6pSc=;
	h=To:Subject:From:Date:From;
	b=NE+id3ywOBZTQkSDL9KgAHAUOHzYtHq6VKWPvgss129ermcpe6tMAnm1rBmq4UjgN
	 joDXGw1iXepYHd8Icdch1xLTDtWNKRXBB60ejSES5HohDAfVi0LlaVAy6MXMamvgvt
	 98SUmpYTVCaUPDV2kBRmi79sebH9cUT4Ix9Xisgh3rZcFDNlyRtUXwTABOv7nOVbYr
	 /0QZmFPjBwstQInlI1y++O3QDqf8NrnLHScjfqmUsozeSOnHQzyHhxVTMzjS5wlgN5
	 9sFvDjF43AVYZfjKMxRCj+C8jySbXqqpBy6zOPcBEsN10hwk6DJw9Sn/Nmg5EJ4rru
	 4/EsQlalc1L0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93737C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191695359.4863.14666059363967841937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6cd3a4417c58c44b3850561460cdf64f7520a097c14317cd5ae276b1b898e2c
Date: Thu, 25 Jul 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721916953
