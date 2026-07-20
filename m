Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3644195DA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784559514; cv=none; b=pSudqbRvW00mN2jbg52o+P1ZgwuX6W7B4Yg6bUj5ysSBpTsT6U6rcWBoJElVVfFZZ6zSJVXQKKD9JbqBsk28mdADnZhdN3eZmz3/xx10ck5hzI8PufBFP/58nmFWYN+JgkkkBVl2sTPFhvaUV4OHKGOP/YaLB6ZwjA3q7IyvTzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784559514; c=relaxed/simple;
	bh=NUTke0sQ9gSF855JljhmF8GWj4tEV1XixPXO5U+Hr94=;
	h=To:Subject:From:Message-Id:Date; b=N3J0ScFNCgCNeqfPYlWlbPmS1HXmdZA0PwcDhveUdddofihtWBzVG5rSUIJqL1HHo/IJWXOXUjS7B7f+ciCThvTFoi7wG4z4NKA4FpVspb8YdE5kUj9tc+FipQYY9vZWoXChW7E3rUP6MHKpbNKAmeIyw5tUh4ovl7gYnK3znVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYjsaudH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYjsaudH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3CFC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784559513;
	bh=NUTke0sQ9gSF855JljhmF8GWj4tEV1XixPXO5U+Hr94=;
	h=To:Subject:From:Date:From;
	b=bYjsaudHyKclgy5zukUrk6k6a6ki0oIN5VeqSSgKl/b1OhvGLMFMuBGwAFiYH5aBg
	 wwHCrYRLwPGHISCly5LaSrd563cNkIF9zj5CLvl+XpP7vsvkHf8EEbu4rqjbPG6s5E
	 AF3VWW/1IuaM757mTTBopb44mf+FIWTubTRPB5fLtQwToUVDF5wo+bSTUHQqJx/rj1
	 ZGDInHVFPsUEEHifcx60s8bVMqoSRmrqhl0X8sRSmE2CiORe4ltYjHZUoJrJuIIBdB
	 CM60hldCifp2HATn+zd7T2LEFWtYHn92Lu6cg1SSpq5yurTyBJTzpRiLbQs9Hxvpmp
	 i8b3HfZG84gKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E17C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455951368.4546.4358817319980264188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69ce1e8fbe6ce50ce396948cb62f8fadac82d50b5b5ac8a83556e44c98b75f2
Date: Mon, 20 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784559513
