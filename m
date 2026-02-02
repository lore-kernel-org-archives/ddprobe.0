Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1B719C540
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770044034; cv=none; b=J2fPT8su9oAN7okWFabc+DJoBRjPEdnMvUP0LubiOWA35cy1y67VmlvfauKtMwdAWZCVO7pboiicw7MrLuGgvV0B5SqPCq4LbwF1dgzS/y9101pNWHs85SUYGyjt8VoizBDg/cmU8rDsxIXa8NE7VcR/uLq8m6Iqnl9rOSYhGyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770044034; c=relaxed/simple;
	bh=fNoYLbG6Dz5rnRv4oB5vautpSF0Nwh4HYnNlue736Eg=;
	h=To:Subject:From:Message-Id:Date; b=TEeZq545lUJcaBS56K+E9wWzQgJIudleuG7SwCzBGMgcXeJI2LuH+zPoemcsKvK3VMabJvvvsLS35ISoF8aQowcRV2G1jor0m2RwWp/BzuewCxJzBWZCAW2Pz8aelNo9WWbNa3Uy5eKezRoA4KqbaoLtzZefmA5Bvjslf/E2ip8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZj0YBFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZj0YBFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2C5C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770044033;
	bh=fNoYLbG6Dz5rnRv4oB5vautpSF0Nwh4HYnNlue736Eg=;
	h=To:Subject:From:Date:From;
	b=CZj0YBFORkYnBZVEKUNBslyXimcT160CvydlnLk7l/Zq0rHSoYb+yKHHkM5nG4fNm
	 dYLhN5MT48FZYPPXOvTVzlfNfBVCHALhgOTCY15g9uhRGqfzPFORz7sfELUaztPyyo
	 O2IHrWPWrebGBdncl9mmznHF/ebOMsHCJ4Ouw4jap80I1z6eWs5uYOX1b6vNmJc269
	 PFLKX+OgflgN48Z37Uv06iUFTR8LbredyzUeNYKZhRvQOKmW4ABkSawECppHZndJxQ
	 CEXPHkOQ8C9AKBKXOvwKILr35WZ+M0DurMPJA++2Q/hULBAPxcLZcklPiPG+oruyxD
	 e13yAzQv2Pbxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28A3E7DEF1
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004403365.9793.7224227297572426139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c3e1191005cae6f59cd91b4d0b1891a5ba82946b82deebe0c181d1a46b6028
Date: Mon, 02 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770044033
