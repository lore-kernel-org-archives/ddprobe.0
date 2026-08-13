Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1023A450C
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786611634; cv=none; b=uECUwgXSUWv4Wj7UqbnqoiXSgLKsxWUjmqaaHzjU7FG0ESiuAxTiKUaFuhDKdDWLV6ujGUc5bl8qJgIXDQ9yRU5CSZTts4W7a5pgqiT32kRnG0lAwiBES+LFRdByQWgmxnBLqc2VD3AuhSvQNSX9qSj2eL/lD+BO8Ka9EXoBN2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786611634; c=relaxed/simple;
	bh=8ZQqfR1yIUAI9u9tc73TSfEHc3fdV0gmLjCwq3vKdQI=;
	h=To:Subject:From:Message-Id:Date; b=GFMS0ciOTc4h/ROEMnPlH/+nWmMhFAKXFUuTIo+ftSu2YHYA5OZ+eyFPqezVtCvzYKx9Kzdcr1iV5rW+03wgUPYT8Nb7ZS0Ogy4ax5AvT+WY4ENQB+j/UHWMz0HOtbbwWtNRDQzSFqX+E78OWkjajJOP89gVyC9ZuYbZdJ774B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmXT6cN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmXT6cN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34AEC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786611633;
	bh=8ZQqfR1yIUAI9u9tc73TSfEHc3fdV0gmLjCwq3vKdQI=;
	h=To:Subject:From:Date:From;
	b=GmXT6cN7P0HTv03l+fJ+6HipahOuK2wryJ7TUnyGNVfi1hxXIxv6ktZfPnFMkr9ZO
	 5eChhEKzq3IsPr2tK0p/kdru0531KL+vZCD6DxMT/VB9v/fxUfGZq8lXPxVMOvheE4
	 l4aCh+mDxaPphsDjwwA6hX+4j/P1wpuyvuIoRBcub9PL+roi9pgOL9e5Yfa0POYugC
	 0i9n3fSHPasgQnCIlEpJVDvQky8LuNYBMNaqs8FfAre/JV2Enhy6uW8vVwNiwWDSYi
	 GkL6f8cgJzQBJucJFA0l5lm6CQFhm6PG5J5esdmLl1ElmRUozNgs/CmcFJ83QlBIn3
	 38wQx5Pn1BfoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A824AC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661163368.31034.14606363865691513401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76de3ee3eecb29c560deb21e3f32da1c29b96b1bc649eb4e18f0ac67a144195b
Date: Thu, 13 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786611633
