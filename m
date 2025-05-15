Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3490C19AD8B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747316994; cv=none; b=C+NNWLhuMqeqw6tnu0Pf5qpPGmryfBxvKqm/8zxPH+LP7Xkxo/7WFYjRt0FZZergUJX37vIApNLcM7TXJbmD0DjlljzZNAGTlFCOJ9dGDHZUc8Wkhl5YMAZ6xl9PMQZPDdIxTrn9U/R5DcGe5x2r4nx4eS18/s8yNwMm68OzcF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747316994; c=relaxed/simple;
	bh=T/bVQz8zMEE/r1f3G6g9Kf6KgF2lsJh3uGBy1b8bf9k=;
	h=To:Subject:From:Message-Id:Date; b=kYI9GyRzjqVWKPj+JnC2/0TchaesX5l1H6fSgspTRosJTIli1fZ3NwooJVh48bwI4MGlKlBy7lGXjfsLiE6AVadw2URQYykz2H54KIOVh3SGpXOxhroqIWXd5sPdvHDay9A5xip0EiZhWesEFQ9FWzpXfNOW1lD+RjPsN/hO8zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3Y+txuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3Y+txuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D14C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747316993;
	bh=T/bVQz8zMEE/r1f3G6g9Kf6KgF2lsJh3uGBy1b8bf9k=;
	h=To:Subject:From:Date:From;
	b=h3Y+txuR1NERZrb58qNCfnmk025VKLfaqe8jAl4V+pzS8CSaBKp2zEOYWLE3efFh6
	 qD0LMBGza13WQAAbky+ilMUYaCs8XuYermeU5gghPivcdZOfC2/EVNE3eNLX+S7jp0
	 BO3VcvSb9l5gWrY5CxQZkPO4+xtoSdsvrDN/dGgmRwEKnfQCrX59nDp/rehsqvnRsK
	 pGbYq6xYCdfoLUW04zb1fs8wA8k+IpTXsJUPaktf08ImGSEr+qa1UIDSFp8ZzYpORW
	 lKmJZX5xXNGZm6pkeHIF5edwQcPpgeWwbP0eyoVOmgkSKn828UmF+2BH+4ql4aNSc8
	 2L59BERkDnD/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1FC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731699357.13718.12751442028100193977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4883e940c73f7e7ee21f3d0eca9e598b6a778fe492b8ce97174616aee066fce
Date: Thu, 15 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747316993
