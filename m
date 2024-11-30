Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495D642AA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732983354; cv=none; b=evwvlVN4QzCNZEFjMeeocz+fD7DMF73AznQ9o0M9JdPc9oFFm/2jKfcrZ3tGk0tmvrCUlwyADTeoXLHZSDcMB/pjIwjOusAjzvGOW4KyTOs1ZMGND6D3d+dvzAHcvVW3Jii+maem1bzjjYC927A6YnmbPGXLqJs4Xb/CgaM6ncE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732983354; c=relaxed/simple;
	bh=EP1g0jDecf0kTByY4UvCYw1xSWNFYg/ZnmLuCbBCOXk=;
	h=To:Subject:From:Message-Id:Date; b=ZJVEqRE4pRu+N6VuxgP61XFoeta823J96V89Sgg0ZC3Q+H1VdeU+jD1s7qI4NYZIuvDVHwSas1VGk6RWrKUd2IDYWmx96eMdhQlmx2ZFi3I0hUXj/UtXYDNHP4cKY6U9DnLRecM0wcNGdk/09ZoqoXo6UOC4/o+MtnARNtbJws4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAiSuoPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAiSuoPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA8BC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732983353;
	bh=EP1g0jDecf0kTByY4UvCYw1xSWNFYg/ZnmLuCbBCOXk=;
	h=To:Subject:From:Date:From;
	b=vAiSuoPC0/cEafvB2pM/HEh1tOjhfUNKq15+oBmy2ULSvieSK3Sm4wEYWK+7QO320
	 W81dwMwI1WCTN8f3MOaVjNUISowf9aBmt5PYTgNuqRPllYg+Moa50ezL5OqlDOR+fE
	 9LNROIDL4KnuHC4vSZNytxwWz9ayiE86eXC7ujcNT3jXZNXTL/g4iCKPhLCnT/ZITE
	 aS17MKMH4/ShNHe4TpzheSJiTsBTFmsLrRFLWdqqGMmE7CLXyXV4DI5jvJPnXG/506
	 sUpk1DLile/0vDFmg/VVKvdrqqYQBV1ArcHaDUSmfIIEYDFfcsDYwQtHoaY/I4x5cd
	 +aCoZLkzoxsCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D945D73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298335362.24012.9431528150637885308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9003cec8b2d406ae6e7346d70c6b2a0eb765c828d6b4fbebc81064ba876e12
Date: Sat, 30 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732983353
