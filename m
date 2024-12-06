Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9BC1F131A
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733477754; cv=none; b=tTnkkCZ0lagdLjzqOwHcM+FIDHt2WWfJSgB0Gcj57tOYqxD6GH2yW7zskhPspSMn5BNBezbvz/PlpR25x7eR48bqTIz11Y02pj3O8P/v8gQYB9iuHqS5ksfFxICdLAVcxVev0fBzPYX+qK+oZrgbP2h3pjVUTQxgJh4ThNHSBvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733477754; c=relaxed/simple;
	bh=g5Hc41Oeei/hfmbG1BkY9aSji5cw9dvs6Ph2SD+Nclk=;
	h=To:Subject:From:Message-Id:Date; b=VRyYcInRt7GJ61KHS9RASrD+gJSX6jw5Isw8m/Hi6yhpN03NYRu5cNNfXJ/BjDz5d/L+3dbIPzZv6/nOxtan9/Mut9doEw+pNRC1mxF4vjRXVqfgL38vRJRtqRxdH1rru6ZYLd98+9bDgaQ4SCfLFEKdB+DHdiVkz//ux7oNGsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXc1NDxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXc1NDxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67E4C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733477753;
	bh=g5Hc41Oeei/hfmbG1BkY9aSji5cw9dvs6Ph2SD+Nclk=;
	h=To:Subject:From:Date:From;
	b=jXc1NDxcCrM16UJsmc6Ey4u3msZ0gtXjfJM+vjrt4cAtyxAKNa2SWCHEU0RRjVAgB
	 +i5eVRYLviUcozyctrNjwt0CoAI8F4zPd9iMi7h8Bc159y0N8rF+RG0lTbxlM4lis9
	 PPPbuBR7C2gagqHABc8O9RqIVfAhPH5L3j7nhRxIXu3vVe4BBfLmxMDvkDbdE7ROra
	 spcEEdibD1U7ioJHXSZcHKVhWfM4I9xyydXRt72ch9DUyFeO59h3LdBN07y4jtvRn9
	 VFiKXiJ4At8xEACAwryQ6xVcKE77Hf1UfFZUf6k/+TBqDOVDwIyi51rRp/h6juxqxU
	 6e9J5ys6EZixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A227EE77179
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347775364.24838.1856439890737298170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266be60d2726f0b4427a82c4d859354c0ab3e6f838cb831a75a2d2a32deda979
Date: Fri, 06 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733477753
