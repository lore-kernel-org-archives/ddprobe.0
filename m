Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5D51B21AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 10:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737282354; cv=none; b=rBPeD8scneUoJURi61Vxl/Ucm6hMr3OO0PUMh9LWC5sWRhl7qYyyUXPj2rKwu8vz+8Yd4EZLdastznsjDQt4zRcKezbyASgNmW6p3jB/1e21Wum3+QQy53eApW25Ay+Yn27H3gBfkc9O28//OJhgEok5bQaQStP8278B8HAkS3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737282354; c=relaxed/simple;
	bh=/BNDHXK+9Vq0qto3gYpAUucqPyL8haT5p5s2M8gj4AM=;
	h=To:Subject:From:Message-Id:Date; b=FletR18FJviEbPdvUYzI5aMDDHYuYeGrgNMZsOa7oo+oTN/egOzk3YXakhvn6lBgFp6HZwkCD6pCpXZdH7Fek6ouUpX3T1FBFYNsRV5yvejeaWjDeyIhXsNdV07nrEbgpWqYf0Ra1XUrWcGhJu49Adoaz9HtAXBFtfjauK8IcHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aX+50DuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aX+50DuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4D8C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737282353;
	bh=/BNDHXK+9Vq0qto3gYpAUucqPyL8haT5p5s2M8gj4AM=;
	h=To:Subject:From:Date:From;
	b=aX+50DuYeUhNpAIqtn9p8xtZysCAOaKwqFsBq9CoYzikBiVTiTLEOEbasbKYTueKv
	 B/EmzOP829sPwoK2P6c24viKt45soYHitQ71GxS0VOWypofrBEVrASG+6yHZs9foVH
	 uL8jRi44QWWEQ7w9Qia/EG2MGIn40RN6mo85nB6BvXdBs4zmkbbjF2O8EHTsNgFe3l
	 b4ArWcJteCb5uvzYBXx1rnsKnwpDQMPgbcI/dwBxjNabE3glmJFbErlPzurn7/QKik
	 FAGYQy3Vkq+kZ1DUuA9p2xZ1vmVSeJE4emDv0HGAGtQ+1ga9OfiscqSIoh3l9N0S3/
	 mCjD7yrHZHPug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23E9C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728235364.12688.6588843596244669907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af90f9a9dd1cea803ca6d9338a28838ee0e054be30c493d35e15f8a374546a49
Date: Sun, 19 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737282353
