Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5301FB64B
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717364723; cv=none; b=KxJCNBJmY022TqL14eVtjuUVc/h+ojVMFA+owrVMCRYm0khks4s2QBSzPzC8DxwxYs/mAYf9/j78OeifJThZP9FstRA4Ok1bvQr2Hgc8uq8VOkq0f6GytZSQtIHtzdgF9JWhq0cayQnZZe2kvptOg3WNI2QuqczBzrMVIHzB2IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717364723; c=relaxed/simple;
	bh=dzKTCwsxDz53cy9O5FPjnFRUVxepSOI+dv7bwFZDhKA=;
	h=To:Subject:From:Message-Id:Date; b=hyP8bYNJ7whm+RWICxGm3RJCrbpZJqY7jbYmN0D2moFzqJ5z2alvoUfGCIDNDniRFWp6VBbQb8RcEBeM3pKWsjyOdFBBRkMNZqg86sAWKrsGNXnNa1XtBz/6Sh8tN34AIyIKKWIgiwqTEAFsZgpNfW2uWDS4k3Lzt/Hf7ZKwuwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldLgXEsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldLgXEsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72BCC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717364722;
	bh=dzKTCwsxDz53cy9O5FPjnFRUVxepSOI+dv7bwFZDhKA=;
	h=To:Subject:From:Date:From;
	b=ldLgXEsTLmEx5ttsDeHSOTfqsKo1SAGNA2OFo3nEf6iTgtrkoZ+g9rfJPz6JnxLnd
	 pZ2BhaUOVrCef22zzNlpBWuwXyr+GFMUEhe9hwN6ESStPETegowxB/GM6YR89lDzJR
	 grw364Uo4bihu8MuIZvN0GudDd20Bj4P/uGUb4sxAVDPPglHY7XYyv1Lq96RTakgS/
	 YYLOS6UycCKvCH90Kul/2GgliR19otoe/UwJVPkWXdktQZcH85F3IYoSjsFb9spLoS
	 /7v0bClK45MqUoXCy46hs1Vb6FI5K9cfnoHt2lOPBwCKe3CFEtKuHYxC1fqhOZnO0i
	 69cfhhJBaHFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3085C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736472275.1232.4971887067893938621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00d72fb54fa49c891bd172aacde8614a786d581d25e336b3b4d1e5b5d16210c3
Date: Sun, 02 Jun 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717364722
