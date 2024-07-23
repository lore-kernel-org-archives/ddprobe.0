Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A7013B5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721709354; cv=none; b=HAGxADCRbpsU2DcmJi8Lbqayb9rUwXTfynO6+ZsUG3tFPtXbFrhGaBXefWkSH0Ced/QBzUcbqX8IQr1qynB4K+/acAc9s3EF5rU265s5lurb4SWYJ89aqqE2v1sGxMqmhEJQQUa/AFTAyYlL//49LpnMYWhgwJrR6RQTIP9L5lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721709354; c=relaxed/simple;
	bh=eRkNxO7gzauMeWNF5uSH+CwkC8elcsVS/JwB89n5ooo=;
	h=To:Subject:From:Message-Id:Date; b=u8L9ZIJQ/wXkpSMBVZmv/v0OZ1V46jDc7Oa3yt6NafxIBijcWDAVcZAEeZkUsT7C9tjWqxKuQvdgzVB5TKFQCjLHtTlCoBb/2CrdHM7JAIM4MPnFB+FJbT67N826qZ5h2YdGdP9/pdVYQLd7GwjHUrMmKP5f8ve0k985ifY9yIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzreVX5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzreVX5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9CCC4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721709353;
	bh=eRkNxO7gzauMeWNF5uSH+CwkC8elcsVS/JwB89n5ooo=;
	h=To:Subject:From:Date:From;
	b=YzreVX5MGW6pw8D0wPl51H5t1+PfOpJFgI32o5jlqarN9Z9in4Wxns6pjF1NItksM
	 avRS+5oprtxD3WJSJlOJSVyRKh8pPqdcy5b/NZXgr3bx/xotREN6UDJ4seBZnMzcQ6
	 /tFbvwuVasdX9xnByn12hDIk0gINlvzbq9K7Rw5NNhg0+/xztMb+/voWrpzWCxqESN
	 chNTYyBRkpawpfIeZc1yctxpzHHZa+5u0z9vZ8f555oEPs0lGxDTJDJFLGa+7F0NTo
	 RpMpp2icbK+HXCKo1v9lXQuZnRsJbnPwhP0GMQGg27EjxdUTMaf2TLnBji95v5kKlv
	 jw8LnFHoIjExg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EEEC3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170935362.25633.3180731410857672693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576e7a2a534b8f4b92cdf794571b6c6d18935551cf42c3ff466b8c48254fada7
Date: Tue, 23 Jul 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721709353
