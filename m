Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BF7196
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729641953; cv=none; b=Oj6ip+lKw8KxR5IrnH4VT6aH+4brhTKLz8jcCjKaAWBZMh18N3MwNud6SVHcDAIo1ud1p0VhEFEuvU8AoCeJxJsO9FG+iu0T8fp3nrKrG2Iapg55TmV1pUNojSNsybt+7rQLrDjk2nCI/9ZIntIlHIC9R4g3Hi2eYjL7Zx+6d74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729641953; c=relaxed/simple;
	bh=vawOz/N1L5jlG3H7wnYwLwpkMBDOOfCA3LMOgmcJMyI=;
	h=To:Subject:From:Message-Id:Date; b=Lrv1ff64sVwFWAYidIegx2t2VViwocebEZZI7m5jbOICnFN1xnFaj2myaYfZN5XA0xfQFrOEFafbb7iiBcTr4Fwg3vejGWaIQp0cnn9hsgGydvDrtA2ceQCdauwIEffL4UnI2RDiefIyefaY52QgErdlaIy9eefGpjL7/Em9vf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhJRbZJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhJRbZJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A630FC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729641953;
	bh=vawOz/N1L5jlG3H7wnYwLwpkMBDOOfCA3LMOgmcJMyI=;
	h=To:Subject:From:Date:From;
	b=HhJRbZJwQcxDnJtb+1nP+AUsu4tlQq6SBLi140ypgwvlkCOYZvqFOZJrPzOdTLGoI
	 /6bxlA2zbOKLk22ZoxrKljstmEfNdcuOkyVDWCOQ5fGwPnyolPEfEg/3Etmk7fvYeR
	 LNi6Y6YEJQCRGhk5XRKL6kWXdqPrTStDGX8ovk9P3cfBbGgDfjgYEYxdBYFAHYxxub
	 oyUlHjxKVe8eqN6NazB/uUvsOY4iUeASpP5LGmrmOYgIhukU7M1AKPj6k/2sGx29gl
	 +vyYtrTZrHs3iP5elqCcOqtNp2dZrtGdHfLf/wU5kJaVXjX0EjqTnx6yXXKzwR7qHj
	 e6BLz44NKOKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E57D2CDF9
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172964195358.4157.11021057575680013801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b65932488dfde85ea17a9b56a250a9f18741fe6bc29efe9cfa716b2b6bb69c4
Date: Wed, 23 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729641953
