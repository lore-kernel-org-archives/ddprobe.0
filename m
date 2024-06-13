Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCFF5A4D5
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718310503; cv=none; b=gUO8B4cwcIezM3FoPBkJ94K8k9XBqojBqTC/LqHu3ZTAcY26Xm2RqP9xsTw47UrET+6UN6uMJ2wDS59m3oqzKdnu3zflUfmZZbg7jMdt4hgm4W4sRIed/f4xYYK5rvg0+5nicjEOCSX8oWaukz1udtZSD7wdYVHAt4nHgXkso/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718310503; c=relaxed/simple;
	bh=576i3pCpbLd1pos60mXovSzYhO7huezASSu23GA4ew0=;
	h=To:Subject:From:Message-Id:Date; b=MShtuNvI+x+D54CXwWGMvvL/jAMFt7xhtyagbWkdTdFFa00d6NYFUMmh+7DSEX1kGTpygfogF37oplsNwoALPDhBVtuSlmTaFIdVWuxEgRDunUu9LV6/2/DKIvqWSvLW2JIOX6A5wKZPSf3UYpym22npfnkDDXHOhb7Q56ubJFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxZ896tt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxZ896tt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E108CC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718310502;
	bh=576i3pCpbLd1pos60mXovSzYhO7huezASSu23GA4ew0=;
	h=To:Subject:From:Date:From;
	b=pxZ896tt5vuT7RAnQtLHF3ZxEujLB31Is/J9WhodqJK4VrtfY/BIXh0LVy2wu4cAT
	 7pTHKMc7ps+L+EHmZVyyUCWid1KTviGxPG//G++76YOOPXDFWerajiCp6qMB34Nv2F
	 m5IKCSxTmy9AANd/RhNf9kXoXzDyvxzd7Tmnyyrhu8Zl4OO34wAj6DUdhHnuEOd5wg
	 Zo79icm8RvHul7I1TZsGFnxuwYuUrRvBl3l6VlSqY23yPjsg6sb/+rAujaLScKCzIo
	 xcwNtUtmnKJ0H83Bjms4/8jFXl1Jqc8ZFLSFh0e8QsD1VNr1jASanoQleeHnKVJ1Eo
	 S8vH6Mf6DqC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D05E4C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831050281.22235.17626840782719941965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2e6a86555d5b122b85647a9f98ed734d60ed9c998b4024c916032ebbc06976
Date: Thu, 13 Jun 2024 20:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718310502
