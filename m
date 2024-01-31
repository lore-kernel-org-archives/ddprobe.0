Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E663210E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706726897; cv=none; b=KTqYH402QYGOabuHWGthsWtv8N+r2mFw3IKamipDcKLPPJjhy/aXMySHjNdKZkpoHgFBWF8kXPK4VExpfSxv9GcWUCYaPyVb/NC2L9Gd0/u/Uzml29vId2Mev0Q1Vir95rA4PdG++NDR3EPv1Ied5Zj4DiMrfLBMzUnx1i1ok+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706726897; c=relaxed/simple;
	bh=2/lkTKGLJzV/5R2vwMjSDocW0C1YxahAhKdUAQGZCG4=;
	h=To:Subject:From:Message-Id:Date; b=L8P74qmeCoksglCkzvD5AJKaGyR/Jl+t9bVRUSW5N/k65PwfZKfWfgT7AE8qjn/q6Ex5vHwUBhhtvdoiENhbC9HdJtqifRrHgOMWomNsvXFNxCTpP2M/2RZ8B9lXloSF7dfYMyoNtkSzvOHaCtMgMM54ZjMGv2zApD0mvOhHVjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1QhEmPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1QhEmPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A04C433F1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706726896;
	bh=2/lkTKGLJzV/5R2vwMjSDocW0C1YxahAhKdUAQGZCG4=;
	h=To:Subject:From:Date:From;
	b=e1QhEmPRFu0NUdu2B4qIwjI7kYw8Cv9c+cqPkmeL1/p9SV6oKffzrBnMx5eA0XSmn
	 c6U7dvdti6eq2RND69pShQuveM5xaoxlKQDrjRi1JStuAgd3I+2IbatVcUO+3rolVX
	 v6ATBnhxbuQOb1uZY83LXXwYqz73YfFACvyBlxLK5o7WXz+yo5tsZWFdUwkaWx4JtB
	 ZbBGsHno5niRGBibwt0/p8Ef11Zz/2S6hTbe3ns3MvXUMJO+K2Ho2JoqPzKfhLWZXg
	 /BTgydouDsT0mHT/GnQ9z+0PtqBfMiL9Olms6BmDA/s4Un5711Y+xvJawN4jQ/aUBn
	 DEULS02cyVlEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B8AC48285
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170672689638.15744.15352845549802044677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f1d11370a39df7db3c67c64d4dd6ddf9de57de737f54e4c6c69da5cceb44ac
Date: Wed, 31 Jan 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706726896
