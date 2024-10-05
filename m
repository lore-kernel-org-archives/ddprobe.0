Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D95748D
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728101154; cv=none; b=o7aWvwX8YtV/ntjG0BezBXB4cg7O+uiv6EJJftvbg/5Xsh5cyD+VVkUjNGzvb+4enl+RMbJ9XDhvOQrA3jAyb9gWJKj+ju1eH2ck9OVktq/XtGWY60u+Q5WTU4TtsefM8Gb5PKV6ziyJFwJy/yIkBJ9EfwLgUV/Idjh1mUTsBfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728101154; c=relaxed/simple;
	bh=hWxIyhf2qxuCzMB5b6nNlSu/eu94kkyqbOrEBzbLyrM=;
	h=To:Subject:From:Message-Id:Date; b=Di/3+Bf83Z0gfwAxw09mLJPr15an1XTfg6NUuck+zMI1QuJijfSGU+j/Tglp8kATTo5FGspkC5YsaTtaSKo0LKjED9p2LMxNqatIvDRVsGPzGavM2ZiFPDu4NdxiLQB+G+Nv4SUnZ2BIcXwxxa/0CsOZNwU005zGuF8xNN0zpKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvLP4CRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvLP4CRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C39EAC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728101153;
	bh=hWxIyhf2qxuCzMB5b6nNlSu/eu94kkyqbOrEBzbLyrM=;
	h=To:Subject:From:Date:From;
	b=uvLP4CRLLBFJ4AoAv+Tju8/a/Ay2/5xftsEimr/hJJ9X0eYcK1b93PjlrbpbkYse5
	 gbBMaruBZqRhqpvooqzSB5iJbxUJ5WYnc/R8UABy/bG4B5UO/70SCdL+0RwJjDVsB0
	 oe8IqSFfLTNlc29peX8irRN/uVBZ2TSc8jHPtlW2ZDAK7sLV5NCY6PhwPCeagMbahL
	 9yBN+JwJCj3tcTZih9G9McS78UgKiOiERbOtuCR+x9ujEwuI0xTeBybb5+YQTas9e1
	 ijAq6s09krxZyTbOgzEDTkbkVFwv0DQEAXWSNzRrf9Hii/zQcsTIj3tmplwJ+HyIg+
	 xg7gOukFqqQuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB900CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810115364.5078.12613945016871077184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132b8287f4135f943a777b6fe92b296364104c1afd4d475d4f733066e85a2a4d
Date: Sat, 05 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728101153
