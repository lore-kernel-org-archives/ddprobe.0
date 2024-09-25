Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8915223
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727223954; cv=none; b=DjTYEV9p0H2sqgPOHyONs3WR4bOj2GGcnwKkDaevysiyu1cm/ZM9RgrdKeuaGj+5USvL4jOOFz06AOJYhRpsfPO+BIZugQYo9LGGIvHEXDUsEMsQv7bWiS3wyRqvnjju7PGUVCVpFbArPjPckfDVbSFLnEsGuIFP0K4hEv2lvP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727223954; c=relaxed/simple;
	bh=ruZoJcThrMv8LJryVyvdLPm6NIHk9b7HlRytuBEKSZc=;
	h=To:Subject:From:Message-Id:Date; b=eQL0QLivEF2ZsYZ6T/07mo3z4Mq0YIXeUqSWD7pgF/zlRLHMnp+NiDUC79ZmE49gHutTTfxnJbTyaYvTVsCDuVYeWxZWcc6aECZHCWIByE0fBydm+MSGevhKORHX+Y9RVvKdA4MWL1mJ9Ko2nJRJyvXDUJGQj4XpNdLyGKwjL1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucFrJ/AP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucFrJ/AP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75AFC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727223953;
	bh=ruZoJcThrMv8LJryVyvdLPm6NIHk9b7HlRytuBEKSZc=;
	h=To:Subject:From:Date:From;
	b=ucFrJ/APpYV/Y9w8KYe4qzegQq/RKGeSQP3itaEYyzJUmnaFzMlHexZ/fRZqyy8m5
	 zSycL6Ove5OBUBJlz9rtgxXHsRAf4Hbrw+stcmIZrppdB7MvSfzRf0Bg6IEkMa9nd+
	 CEvCaDscxF3aX9LfoUemGgPtCEruyfJsElZF7rk/CDsisfSOWvHfXUEhFlcfn5pJFp
	 rWskReH5yba5TLNmAU1Gqq9J8mDseqDopdiAWk9MijEMyRxBa8aZUxoQZipBdVwM2D
	 Do82OeqCwCsdV4/C7q9eumVBjPZ9vKqZOJkJ4Ddv+0UXvKEMaED1xCZ2hHMxx3/5vt
	 1heqF7MQlqLkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96236CF9C69
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172722395359.30404.15986060848955394333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65b75dfd15ba8d88acac0b64f42f57c59f2794d171879f086e1133292e95f72
Date: Wed, 25 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727223953
