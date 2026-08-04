Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792C03A544D
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785834034; cv=none; b=Njvrjko3dOHkqLv6ODoo/pJAvA3xvDbHzuUjB0riWB+anWfyp1SbSPPYda/9lOLWBEucEXl2iFfmB6frlUjFUhq7/m3ykV4ueXji4mTkofwtb0G4jEN39/A4CrQqL2giKY1HpGUV0TdaW0fV4akV9pJBjAxByQGMiZ0/5l7mK1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785834034; c=relaxed/simple;
	bh=YQcetZJ1c8BNo35FA1EhkbHNanb5VqyNNAn4Y5Aqgm8=;
	h=To:Subject:From:Message-Id:Date; b=aCYbCryzCy+XoNMswE9hroHCrjIC2Wqh6IKLHL9Jxz1801mZ23FQUMQw+UJGs/2ioTYNU9guC4pcvWAMNimEBv24ZZWBHh2i/9jjr8yXUPKMExA1y6V6ucpdGK62Ehm41xpSOyRkNEQe4lzelynE5vDGS7RIsIvut+bwis9+l+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WL2Z7WpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WL2Z7WpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5927C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785834033;
	bh=YQcetZJ1c8BNo35FA1EhkbHNanb5VqyNNAn4Y5Aqgm8=;
	h=To:Subject:From:Date:From;
	b=WL2Z7WpYPCi0RaYm1xb0dxmomag3BFpQX6lwrSCXglvb3g1UVs3gz3Jehim/RtiMx
	 0ELs9XCk3bZd2zzaIeGV7EcFzNxmTssiEzhH7ghYejKZ/OWJ+Jl/jK4AvrRqUJZhyu
	 4vqfJnWP/JuAgF1U8DvBTje5FBRBCA1K7crRgzlO0S1BhXVsSoNACeOseYhs0NZp9z
	 qvGrP6HzMnQLQYA6wvo+lcIZhz/jMX1tjIuMQ0kfa5Mi6JNxGyWY85eKJkt0G5p1Vx
	 RgTjlGLak4qWthfdSCLcK18mYQNLnAUL9d9nFcQUBF2LZbpnVjZISHwR1R2FxVSs9z
	 yueD5xO9Q67YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD46EC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583403369.20937.9411002984030709848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36bd629956dfb4c54697f0a6794aea5f683f141bffe40da11f8cfb3164df51f
Date: Tue, 04 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785834033
