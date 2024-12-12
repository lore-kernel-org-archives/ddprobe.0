Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361728460
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734009954; cv=none; b=of2TrsLMurEMQk8RI0rja1GGwaqQeKqlE8edYP8ONC58eK+lPbMsgIEht++V/qe2R/r9BKHayfhO/mk4bTgtH/3KKGbFvNl+CEBMwIxFzydu2PtznW6rllHVXI3z0cPBaqiZnDd2fdWz2/dSeWBxu87EqeBncfqfCeeIb2lIcWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734009954; c=relaxed/simple;
	bh=KcfPdNH81tCRzlks0W9Fbe5d3DD8DOsTD1fPmSjk4BE=;
	h=To:Subject:From:Message-Id:Date; b=S/p6zq/HUIh/jHGS+xagSTGI6CqMlu4dMi5wiTo47kyFvK//yT5QwOfXqRF3GdDZANjM91h62nIE0bmbSuC0K1MGw2WfFq7Wg8r9Tk9yT2X8CpuOyz1le+eOqlG9ScsS0zm5Augt+iI0V5nXFFeLVAv0GLpxC+adzhDKejXJFz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mP6wGs9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mP6wGs9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F5C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734009953;
	bh=KcfPdNH81tCRzlks0W9Fbe5d3DD8DOsTD1fPmSjk4BE=;
	h=To:Subject:From:Date:From;
	b=mP6wGs9clH3cAp8abA0oq90pt27Gj/UegmxUP02zVxpLMUE8PvYj6sCRqDRWTAPLk
	 B4Tq7SvuMFQghypzAsuDCmuGqU1v07HqskETuUGpBPPuW19LIkBJCBMtbxemX0A3f2
	 AGxObyZbNxzwUWkVY8rrFePWDmZtxTxonOU1Yo8AQFKwqbSEu93sPBuRYGGgcOwcqC
	 ms4tE/98u+jNXiOEkS9mZVyCP5YCjRw3bQV1gEu4jSo6RlqJThZ5cWd3I7htLoD7hf
	 ghTcFWzLUC6G5HthB6IzDQjwdZmz7kNF8UFTp5O/MIfuu2qZqxWG3fubMk2/kr2buQ
	 AkSWsScVy5l3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90719E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173400995358.24555.14639140707809825607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd03ecda73ce5c77345d4e3531d2e05669dc7d34b9b41f7c998c0295e43bd341
Date: Thu, 12 Dec 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734009953
