Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D8120ADD6
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757651994; cv=none; b=Eppy27ACM3fj7NiSAjuJbL3UlQvJECbhNCY4W4Mt9P11rwuOhOOryhO12IdRlkkCatS4HPUnHq2bihFgLxJLR+fe0zyZ2ZEXIvGoqWWWQlxa+5avJsu/9UeydsNT5E0c/Nzr+PXIfMig7WJUcqs5hRYnq8CSp27qRWKmsg39WLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757651994; c=relaxed/simple;
	bh=TnLoBYeRZyHzfolkp+qvr+5Qdjmpr11K83iVYjJaSfU=;
	h=To:Subject:From:Message-Id:Date; b=tO3DKtP81P0gHqESZ6X5hzB4qI9sIfPEgnMleLtepP6uDxRSxj3E6UxaWKhXTl7ublFvjtP++5SzQ9MNw2Tm9SLR6qpB2cUXgwlsuYkXGA5ZtKpYQyLMdNU/J7rLcq47/PcGwwRiH3GskWWTACfQabQtoEwj209sWqNv05Jxp8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFzcjruc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFzcjruc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0253C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757651993;
	bh=TnLoBYeRZyHzfolkp+qvr+5Qdjmpr11K83iVYjJaSfU=;
	h=To:Subject:From:Date:From;
	b=mFzcjruce9JFto0iek+ZgmcQH/jReV2k+Z+6eWvQSV/NpH0e56/+NM69D79EMdsli
	 aoYq8pBalc+YM8vqZeaEK2uD3hZxZJN0T5n4w57C6hO6CmVaPBsnkCOo+vGP1pi+z+
	 nvrQ2bPS3v6iCBPFjXQh+A1AZhyU8HPW9N5RjXQSxNeTDPuUceHvSWPEAHvEIDKFg2
	 FGxbVJHY0k5m0koMz20ZO9zQhcRD7ba9Pt9zRJvLkS3ekyOI/xDGIe63HTjIg/Rk3h
	 SY6nbDc2Bf4WawhgNVuKRI0yv6mJsu/hfzpUPqCma192+1/AiTJLJZe9Bb1t5lvAJX
	 lbgjVQhiFUwNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C29CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765199357.6808.9492745660567820072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d7b454eaa61bf5568c647083a42c7f4648eca5c5b467919be5d28107300a5a
Date: Fri, 12 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757651993
