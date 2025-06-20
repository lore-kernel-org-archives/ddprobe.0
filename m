Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3954F30E857
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750429194; cv=none; b=YBsRdYq6/oqZxzIzFGA94wVg7bQGGHK+2BOZOYvSvxCQjBrj2bwRcc7YHN/z8Gu71XGkSV/96FuYKeaXcDIlyafrFzwRoT0uyJFnOYLemybqdK5s1beNmwy/dFs70sAQ0+NesEItUYWL0I8l/96J+xu/RwM2VJKOdIGnowJcahU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750429194; c=relaxed/simple;
	bh=swGr8tvzV4gPeLoedkg2/+5iusZ71JaMm5M3vBKfiGo=;
	h=To:Subject:From:Message-Id:Date; b=NhYB+jv+kqghH0AgSJS0opZfO8eLqSCX4vWAikmYGH1ahrILlG3k9UpVkNT45mMP30ZaYP4O6RcacFyus2kJliT9vVxquwI7f8c77qHCDxhbBrxf4KyP032UNFREZ/gbTJpqyn8PHesdApIDdDX4bckzYe5Tt0ik4WwhS3knOlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOXNIjFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOXNIjFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DAAC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750429193;
	bh=swGr8tvzV4gPeLoedkg2/+5iusZ71JaMm5M3vBKfiGo=;
	h=To:Subject:From:Date:From;
	b=dOXNIjFBO18j96Ubh6C+xozzrkLoOBmC7ZXKGJLOqM8s/A21B+yL2oGtRHkNdRVht
	 EOo72NUgtWgJhCPEc8D69rKb2PgdZBPX2Vrzsf/FO81W5+idLHbMkR1Joh4Rfkbfcv
	 /w/IZzqD0cFlSqdMjosQCig9B/vcNUciUFDeBV3heeO4sVZiagNZkS7dMz5bE30odV
	 Byo7IJyQn4QDBxQHrmr8ze+UOiWmGC9/apoOgPjfpQaNAzLpc31yfeG7Eh0mBM3cth
	 QrlCoKuFN18nUdsOHsK7+R6vBGR+PUZKDRCkulonU3xO+SJMkNAoFANdGV1BVHNtD6
	 ofwT4C75EXR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3C9C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175042919357.10806.2164029430331521956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd18a91f2c86c52acc6b42847abca7f0c4e3b55bd8de43b00bd0917a699c329
Date: Fri, 20 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750429193
