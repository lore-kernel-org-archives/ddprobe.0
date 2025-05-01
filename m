Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FDB2DC799
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746121194; cv=none; b=YjOJtUGLfRBb8DySAd+4Vjr1OndDsPGpy//u8ULpi35GFnUBYlXCrxUtPx1MIcZDb2YfeLwDkEXHGGM3sJar+6cfMYMfFRQnGlb1r5lzSB5tcrsF7YkaYFVwI8QDDa3r3yNSfP+gtVWsbtKLENhP8cwvN7R8ABkq5MOAWKNokFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746121194; c=relaxed/simple;
	bh=YZGkL0JS4kpegRRbaeIgkWFyZ8/l+4q6Xcaam5tRZlY=;
	h=To:Subject:From:Message-Id:Date; b=eHQ5Ln/Kmam6AnV627az9MucmFhQFa38po7a+Ihvap8VjlqdAzlmJdgYdlyQ38FU7ezjW7oK/hwTWN+IMdWvlhqdC6tzwIqCIPU9B1HqiJ0OfN1LceWR6bMVPEX8kfXAbt7rO4NcfOPRAlazZFt/uelu2Oe30aSfwFbsGxK5AjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bT4Mr0y2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bT4Mr0y2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F245C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746121193;
	bh=YZGkL0JS4kpegRRbaeIgkWFyZ8/l+4q6Xcaam5tRZlY=;
	h=To:Subject:From:Date:From;
	b=bT4Mr0y20nJWOinErp5A0SqdibIcu1Bx9PyzltRhM9en5B4vM+LuuS5pvFCGMpI1F
	 7fNtgDUEIG/W3YTHogafw7PJ6tL4F0THancqgEf+wIG+a4jn29Db6gOT6S8NF9G8d4
	 NjFDm3G6yaCydUCrep78V576rWbjH5tDfcxJl1ayEUBicycx3IRmskUWnxYl+ePMZf
	 oUIzl3cGZR+QJxDoHruxM/L4RQXGbhLcgWZO34wU8VbiflmV2ixEUwakg8P4L43zVN
	 Bj4wj8ndcEq6hdHBNFbMBkgMGvmO3g3O+bnFJBU4mhf/OlkPxkLmDc4wpN8O8QuHmv
	 ieqd0ilkz49aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F342C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174612119357.20274.1835504036968058131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c41ab8b8e0d2dc471270616a87623d85800a91c05044dc37b6dad8e9c3acf2
Date: Thu, 01 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746121193
