Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BA910E0
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748371194; cv=none; b=P02JF43D6z8hdWYv31+YpVudZbj7WC5NLYVZ5xLRCHE86U+kKBZp4S6yZayCETa5Ot/HIqmnvv8bS9RB21URTpoVJUQTGyti3mSIIlDcHfOU6/EBVR9ri5Awu0FL9f65i+J1/jHTfb8Zf1xQ7eqo8YBkXINOWOP/MGw5Oa1qruw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748371194; c=relaxed/simple;
	bh=CyFtV0ETa/zfXEDUprH7nKutGJqnr6YaeafHUzbao58=;
	h=To:Subject:From:Message-Id:Date; b=uNQISRGsBmSezFxPgCzgknNSL6TXElnI8P4fBfbUQKZwi7hWoqf0wD2QqghlnrKIyTlgi9pnDuRM1Jz8oQEEyumEmI0ACKPyblxbmr7b4LRrEqPFm5oyda6vt306cnzlLwY41GTuq0kQTUMvaxOuQoHJNVRwAa8TlaRuofexaBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw0RXwwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw0RXwwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B97C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748371193;
	bh=CyFtV0ETa/zfXEDUprH7nKutGJqnr6YaeafHUzbao58=;
	h=To:Subject:From:Date:From;
	b=Tw0RXwwHAAlmSd+dxBVQ8iOkq25LWzVdmu/oudHedK/CxWJAmx548Dl+/JE7kcgj7
	 wIdcsgTlCE/KVEh0a8SGIHqpxb5hzXB+jj/6V2ILnOkNIGiK72j+egZ78N746ZWjuw
	 erSimOHe6SGRTMMXupQOpEx66VKJ1CBGuEsEVrnEkeksQYwcTwcJ12nL2+uPLKcOx7
	 W+ekp486Y18GVfhJhRk9ZLg5EVENWO3fsks5H0jbjaPg6d+9HsimcbYGsxV/4aLpGP
	 Q/y6Ls2R0YmdovyllhAbOpK0sGpsnVCxv7S7riOehYIrReSul/VLEqJMT1LZf8CsN8
	 WowdMjoKHiPvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9490BC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837119357.4294.12673915820831747286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80feaaed444f4178ddc7c49488d1eb4981eb7e4de1b2809a43feca093ebb5199
Date: Tue, 27 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748371193
