Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3894A1DF246
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760753394; cv=none; b=BGpwIM7bciQ4Myrf+tPhvt+Lng02/jGnDbUc+hACH5RoKUv4NiRMnrjvltgX7f9MSqF9nFlJjwNTgh38dwrf1y19cXC3SyTe2vDthImsLbu8g+xGispmcQgn70P3pARPFIawJ2/sNbnb481HlEsUoQb7WfCmAHELqQhFlo3f2z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760753394; c=relaxed/simple;
	bh=9h4nFc9UVqwFS52U9HHFVILpgUTPADEXJXPZK1nTtfU=;
	h=To:Subject:From:Message-Id:Date; b=SXqtes/Wwwx+BOLf9XQMMeuuElu5c+QY4KUrC4hjvHRwpo410BF+x3DAzerVzN689TZ8u8Ai9oXUiTXyPcH6tD9kvfZBPK/T8YG7wgV/TmrQzkisx+QPvH49Qt01X4iuzQBPv2sJ5J2Jkf/ZH+Yc7Pm9Dz8b6ba4k+CSqxsqr4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXdbrY6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXdbrY6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A730DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760753393;
	bh=9h4nFc9UVqwFS52U9HHFVILpgUTPADEXJXPZK1nTtfU=;
	h=To:Subject:From:Date:From;
	b=hXdbrY6cTOt+nCOoqcXZrOa2GWGnWEmVsdfZfdvEJNNdzVFNK47kkaRquaZ2xb2vD
	 WQFKIkQ0IJvdor69TvEzBmo1c4LlwSBlyU5wzUs1W2Akl0n/lkyGA0lkwykKIQhEeb
	 PGbXyJ2dyV9vrIr8wokkVYstK0YgO8DdFZ4bmDZDnjinWVWzGWERYNw6hY1cKaolz8
	 glVMtzckL/ZUNU7SSLIOfrrRRq4IFoUZJ7wvH9yVzhWQpgp2u2I7mfbC5bh5qdJVGt
	 I4OEN41EI6BgrAO4ZD72Qcz/SuWF3tT+xx0e0mOWLIIGMBUodeOsC2hPtsQsnf5Vkl
	 w2Xo6kn4TZQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C5CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075339357.12588.10881643310880741585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaac18c770c86082ed38ce004eb98fcb6a9cec333cca48fa5e8142b379668967
Date: Sat, 18 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760753393
