Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247452D6E53
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762376994; cv=none; b=TE8/ivK35NPLcmeQw1hKIdWpvIWjh4w0MUIKOf/qKSEPHBvQhNH9j13GlYnIg9KVewF5M2r6TbmX5iE4ZJ0l4WItv02WAdhBkTIOewXfUlTvZiAv50T09z+PMDyr/do+fU2ebF4Hif0PwovqVB+SayC7PU5uH/42mOzK3w0c16M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762376994; c=relaxed/simple;
	bh=A9Xh8AjX7nVPZFUcZhuDwQLOXcqSGILTeErxpFVneEs=;
	h=To:Subject:From:Message-Id:Date; b=E7gFLNf8SIzxrujLxVLv3xeP80+npQ6DVRi/VKuRvmfqYulYf1qXyd6cWHx4QRO+YVn9Wc/2aLvqtTA8stZFJZoSe+Qc5/Q0ldPRYgoAT/YzodonGPpisoCcgbT8P8oE8gFHRHDA7qCpGtSNY3/JBLyk2metgVqOVIISW19kss8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5fAKvRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5fAKvRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EA2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762376993;
	bh=A9Xh8AjX7nVPZFUcZhuDwQLOXcqSGILTeErxpFVneEs=;
	h=To:Subject:From:Date:From;
	b=V5fAKvRWfuCN+ZFcKZObhXr/aD/68Ac2wAAKnveHo7dlPCV7Q+pDffzgyDt/uqINw
	 ES1npj5+kCjl9cZ3XwCHRm4Ij5yEHZkWQ91U+YABLZ+/U2S0hmi7t3CVQ74DSMhQYv
	 AY8o/NuJWKyXPPeSNfvj9KjVtvcWsmqmb7cJEicxVXOkh9zOeVmo4qUU4zhlOLSp2R
	 cfXRHtDE4hy+dkSFiqew5NtxWV9sA5pNnha36qebPu9EA7xXFeyEXSY1pnHaC+vDa+
	 6k3JgfiDryEBce/Plw3sQ7QIhseeWbv8UK5ql5CxagvNzLmKfko/LdUpYrbZDcBFY5
	 P4uPIcNz4cS2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE5CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237699358.17447.11488417711828183715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b74a2336fb719fb2f4a1d01f07b0cd2ba1ce5d02b3f7c9ad2105dba3b82b3d
Date: Wed, 05 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762376993
