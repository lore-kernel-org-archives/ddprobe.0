Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2341F1507
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747639794; cv=none; b=QcMG+OZ1QfLnoQpfc9uz3qaPQPQIio9BwByUk9LwZNOnkPEuRsvDsAnLoeZCOHZjdPvRF7FaHNX8JqqsosOy8TOezAm1SwGgEsLdUWHWX6gw10eDewCm24EIRnh3839X6b2WV1XCRhyYddOXmcksrMbvJIYy6lFXHuDBA52NosI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747639794; c=relaxed/simple;
	bh=fwMUpXRVc6u8JjpORWIBwIYFEqd3n3jHTe4rG5uJciI=;
	h=To:Subject:From:Message-Id:Date; b=kXZjHOEfisL/befdx0tpKcmeWd1h+2Fg18ZduWmOTkT0+xONWIMfPEJC3T6uyvj5q3gDkQyVNdokuEjZnDvDDnYXIZLB6M/YKVflKDJ16OLhDwDJB8zCScPggwS7HOO5m6ZIsqaHMB8/nPFCFipAz8m/n8HGrUYAaMqhPJ//0J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKIvhQKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKIvhQKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D229C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747639793;
	bh=fwMUpXRVc6u8JjpORWIBwIYFEqd3n3jHTe4rG5uJciI=;
	h=To:Subject:From:Date:From;
	b=HKIvhQKnn8wi7Z1QVlpkv+OyG2ip0Z7UGhm1PJ920yL5rFZag/7m4qCzz5mLPhTks
	 JhO1IJ/UeUhO1wvT4tqw1GIws1lKL4p06ft+9Aa0Tnq5VfYB3D8oBphGCC8fJbEZBL
	 LiwbXqJWWkQWVECgxF7inOZa0wDt+Rd/joNC+CxzBbBHtY0y0hE8bVn0/9r5ujaB9X
	 /2lOlSrnxBeYOB2B6HnBprkgkiecxkAWOvXfqkkXv+rMgpDihkcS3I7B3LY/MMV0LK
	 wL1lELZG49M66N0nK/gp/f0PNkCUE/Zebafi+yTGnNRSFZ6l6KUzeEFc2itBCpYgMf
	 LQBaIffNOtT+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BEC3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763979357.17561.15708093456212409603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09722c30b4b977c09924de19c2ccd6851a7dc70d521cf2e7703a5edef13252f0
Date: Mon, 19 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747639793
