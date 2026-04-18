Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E2C359A70
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776502654; cv=none; b=ZIEa/kjODw4KkgkEwlQzEZTn+sMdHiIX2czhF6JWQKhFa92mRfScLThTm3mREKJl7BXtKONNe+JX0u7MoRNGbSLtuHfHKMmzVaHpHyVbKdREdlqKkdcTMqBpSZKNt60iYo3n3S+ulvOCSGAKjGveNdj4inbPxev5L6V3PuQpnUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776502654; c=relaxed/simple;
	bh=r8kUncHXnx7KFVjxP++Zt3bmdbSYhzg5VjYhiwmLotY=;
	h=To:Subject:From:Message-Id:Date; b=lONj6XKYCwpY8KtCFMa762Mseh5mtLaw6V1isi2UMCqQQwzDSsXXj6GC+UBOQOUHqW/8QCWrOGVvZ/D9X944c5oDvGiTlFEL3ulYXlfLAHHsnVfykm3XtsBJMKRNuuu27YEcg+gWr9Yi8rvPPXRnoqByGM69GZeS+nzbBWiLZME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgAsnnB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgAsnnB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2C8C2BCB6
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776502653;
	bh=r8kUncHXnx7KFVjxP++Zt3bmdbSYhzg5VjYhiwmLotY=;
	h=To:Subject:From:Date:From;
	b=fgAsnnB/ey1WDeKQ7VKZkVxu2OGlcNqK1WcsaDI6BgKpK9svGXnexbpc6jnouoJZW
	 9sv984KtytRfW7v8QITc6F7Yp9ak5XXDHHXft+yGayMqlIxWuUtcCY106/7Qh/ViCq
	 CRhUCy4oKuj17lOFFgm/lr6qLC1M0LvlrmANT7PeOso1g4om9cztRwsMenREsSFPxP
	 RstlxcqnqgKUB0mhZi9+wY21jNmY1nJAz68AMFWoiF95vh2+pbEoqHTLGaIQQlMepE
	 9elC2hlUI0D6SGpxy8VLM/6FDqpblmUb+Ka4SgHKPg9/67+e6ns98YYKo7tMlhjo+3
	 Who1lnaqAyhbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE02F8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650265368.21732.9247968994725803357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ee35308e4747fa1809fea8f1e89a061b9bd04a566be7de503814ee38ed41f4
Date: Sat, 18 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776502653
