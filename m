Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE881D47A2
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729122954; cv=none; b=M7/4puYYS7wswJTdKmJDMhLmj650odMriCac8G6vx0Ger9FBoixFrGQRY5HhbBg5lNa8b2nf1Qixel2i0r5oU2CvPuB0Gv4Y/7P7CkOppgZi9UkszUh0181rGgffDDOuU5KRROf+pCLeQFvrdEJ5seHD7uG+y5VJWULN7sE+BAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729122954; c=relaxed/simple;
	bh=1fXI6jJUucYeNv9itYmCDZrwvrBvRk16GS7Tne0yifo=;
	h=To:Subject:From:Message-Id:Date; b=luRvUkfEfnspeaQqynylwmQ4ad6grxOLKaZq5AtqnBTVCjdCuaPDaGHGXTP8v1lj/P9BlYUSWo/8RX8TPELbcsyotq2qGGeCwR0jOmvXv4Yubla2ueUCjSFEYuzga5Uud9S+ZxyTrGgWF0fSUHkRytAROQ8H1hr7nY6CnYblrho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTCIZ+ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTCIZ+ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BA3C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729122953;
	bh=1fXI6jJUucYeNv9itYmCDZrwvrBvRk16GS7Tne0yifo=;
	h=To:Subject:From:Date:From;
	b=NTCIZ+axJjUH9ZR1vbraM3ENHFFI9Xj9fGlxvhHbAOdfSW8JYcWFRc7kEuHj+ki6U
	 yyhpqiEUXmj2qwrJWKP5Zkx7izY0GM4upboFrKojqUNiarH2vyASF0CIiD+rMvaFmV
	 C4IjUWl1s1ykydTQ/Esr4G+XdnXQuKfQs0wuh9vLrZ/0muiv9ncdOkUzzPhGMHfJKp
	 J2xsu9npFZMnXeep2+Kak+FiypCcNFxvy9yBzmoEcUZU0/ZkDfANNpe/n8fm23W0Nz
	 BrOXVOpJYuUmhLmc6sOq8paxomzjlnwUzezmDn7T84lQwN6oUJ74EORmdooizhwhVK
	 dEgmUpqgwWvLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF0D2F7D7
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172912295358.22236.12686963328087217149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a701cd37132848a4ff0e3ae107cc2d261f63ad861d2b54b8d025fc0331ea505
Date: Wed, 16 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729122953
