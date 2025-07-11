Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D52A7DA6C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752224394; cv=none; b=JagINOSQQ2rV8IPwjJ06zwcGuYs8IWOXOhHylrRj3QhD3ixV6iSTT2S/04Hnllzw1Kr5zZXg4NWsP34JvhNSJSBssrjzAPmBIbJXDqvNDVhezEVo91Ns6gO/dF0oJC7qmdl9iGqUpywffmHY8ic2whBnO0cFlM3b4+hew1sgfdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752224394; c=relaxed/simple;
	bh=IvX090VZzgNYcl6IoAwvGC6UoZ2UMpCkofX/o7yzgt4=;
	h=To:Subject:From:Message-Id:Date; b=OUm+lxSzYl2MK0gq6RvjCkIH4KjiTegKEIuIKHMzh2PURWgVHrwbLgszIqKkP0KATmq3cw7ahlpa1Q7pihEu6+737ABYT/lJB6auDNwqi12nEdUaTA/ESYE/OX2JR1JkaIKNyPsldCto6fBmg3YR5mFJy0iw9pdl6n/E0Jpd3us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7CHQNba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7CHQNba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 965A1C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752224393;
	bh=IvX090VZzgNYcl6IoAwvGC6UoZ2UMpCkofX/o7yzgt4=;
	h=To:Subject:From:Date:From;
	b=Q7CHQNbaKDDFHT0TK28DHrQqU6sbrHRbTQ00O2ODTTnvwrzfw7wS3Crb8CdCw1zYn
	 7iHT9vw1lM1ZzkyVRaeLF2xgS9U3odIx/g3Ov0Hk4VcvOGB9F1Bk1pXHtu60JZCQbl
	 74lmz2XYBjrjo1A+gnWrDmorX8SkUXx2ZqBND44sL9anAF9/hP0WbROugy0H3Uf9NI
	 O8LmCYRevJmKwFq5y/Y74Tv93nrw1wLUkUePgJIc13Q+0kzePFZdagQR0JxZSM3ZHz
	 3NLFEJPzkG4OXo2Woep51moPczgTE1+Jw0+Z6QvOZNHrgGjiDyueCAtkycIhCVUl1N
	 uoMFYeAKsknJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E0C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175222439357.3333.7245261133386816946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165328a15162c94ae3b4562470df4ef8d573f8376a1890aa4e2851bc4e66fe6d
Date: Fri, 11 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752224393
