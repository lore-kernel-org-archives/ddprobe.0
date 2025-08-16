Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CDC284B27
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755344394; cv=none; b=hkMRtQKRCkHK2LoJpBsr57h7QTYTdHQs0S2lwqi9RSHCelGYGHxPRgdGnJcx3oC9VltK5DanZNoFh2wpjJst8vytZJFvelXqVsPaatf5IMyUzrR/iKAIcJwHZMEQGdgfgFvVZ3I9a4uYtb+SpnDA9zl+o1wV7pSURYBAuW0sghg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755344394; c=relaxed/simple;
	bh=tGT3KSDsHWq0xI2sowTU0ItNREzvdYxe/3AjR1og9e4=;
	h=To:Subject:From:Message-Id:Date; b=SYi9g0wV7dsRGCQuM6cuBK155MJZMw4VUcWa1k0O8ltS8JX9d4+whv0XSEGmAhDJpEDe2/1U0rJks9eoIbIU8WZ2PMJELtLWENhLi97J2+Z3fGeF4zi91M0gGG7oTtalZ968XVUKncdNSUo3INJTgXsHVoxMPddbhOMS6O0yWBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDeUSsvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDeUSsvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54E3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755344393;
	bh=tGT3KSDsHWq0xI2sowTU0ItNREzvdYxe/3AjR1og9e4=;
	h=To:Subject:From:Date:From;
	b=DDeUSsvAdDwKRNqAcAi5209tNIjxY6/F4s2WkWwY4GJNkz8UC/UKMrFM9SrAOR3VC
	 JEefZTtaCG+FuKZOJvQAUIhRkIwxxijaGSU3kSxAv+4qQdu2HVBPBXmxxFsyRDM3Cq
	 SV19nPVDzc2PMT9+4TbxXG8Zjird2I+5+Q61GOcqubPmX/G0/q73PhSD1fv8NUfVmj
	 Fnqbfmxxf0SUvOXzpIutlgyaXT+7nk2xKWsLb4wK3eUBdIslRHGXhTXnWphn1LBcRo
	 6h0OS/j8b8PbesAo/wfcvusZfCp86Yymn3LOOyTMSL+XfFRENlA19dv7RdMNvmwQQ4
	 6A9MKyn7XPZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B2CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534439357.16906.12123697655667950731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dece2495ffbecb82ee114f3b76c831fdefff34ec1878bf0deccc95de06e4b289
Date: Sat, 16 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755344393
