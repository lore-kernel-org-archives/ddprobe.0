Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211CF15444E
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723070154; cv=none; b=SGCPAG3hRrRT2tYJ3U9BwVExDAsL5ALhgLqSOHNySH5BXeFVFpqEq+sx9zdIo7WhyRMlwFdVT3x83cD9B2Ed6obp7wa5nxntwdCLoEN2sQpSz++kCAtPq8iHzXhE5s9gXyvcXxfa5rqI1XqLMoN1MgC73UBn9ed5cWEOHUijwOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723070154; c=relaxed/simple;
	bh=0pKF0v47aEfvEpmpulq03NenHjVgVjNMlbUWd1/BSCg=;
	h=To:Subject:From:Message-Id:Date; b=RiMCYuVh97acznI1JZaBXWIAT91KKwfmfWMG9EC8a325E8/TF5aUjwXD1g1HuYdpLQ6Zg8CmTQ5T18rQzMQRkEVb/8wad9NhcwQc4ELGBZoAIC69g1/aMwFW6/cUsBM6/rIvGFLs7M63K8hMmP9f86XEdnHXbGqAzr1U8g+x7Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1W28sJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1W28sJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F62C4AF0D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723070153;
	bh=0pKF0v47aEfvEpmpulq03NenHjVgVjNMlbUWd1/BSCg=;
	h=To:Subject:From:Date:From;
	b=A1W28sJ+dHFoA1UZ35izi5+2b3ga7uzbTF6u8J0917xD3JPD3NO2F1hYs8OIZ304T
	 h3MlQiRwTXHSLEl29bUFlxvQZA0oB9YTHefHcyyxRvV6RebzloRr5TM+6p3BacQeIg
	 jdLneMsKC0zfWhWPlX/n72pkTNz9gqkhkFeCkcex8Dcais6TZVGDdNymLaJWuORpD2
	 b8GdXPG07lk/FonzEt12qtd6XQnEsZAjPFwtWqIdbFWkrNOdFsHsuCkE+sKGMHNVcE
	 K7Oq0AMozq4his1uwA5dX5Nvr24JTtkoNJLcgcqXGqjnOJJoWUS6y6Cvpzra7QbP3m
	 +JotiUrrXquzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93517C52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172307015359.20075.1628749311376906887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2bab9df908326e4047e5e04a134fc34645fa791a30f3641ec8e4c3ff5f4b1db
Date: Wed, 07 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723070153
