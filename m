Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B1D39341F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769021034; cv=none; b=iI1an7CpUW+HGzogC01lS5hTc0cPhzdR9nK7tlyJE+hGgqIfK5MSXNaAdrSaGc0uJP6mdtJ8cjjodh/Docz72jaFwjbyL+a46/dLZDfSiBA9RsEts1MJvGBAVIc/kXketDgLVTRzN0inNgTJiEJO/2GLCN+64Vy+Trmpa7WE4e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769021034; c=relaxed/simple;
	bh=c2Tv9zDOhAHLEAVHHcyFOeNorclE5cb9pfggOAss3O8=;
	h=To:Subject:From:Message-Id:Date; b=ZCtEgWK8cWLj+5EL2CWWpM5mOuaGpXZ5ZFrIFlca/1FqFTZc1R+NCeiH0tYZslVibOpvtKmBqVpOW8y3baxOSRJt5cM2NF1FvJa/DVjfV8bq2HjUSiUHD9G5PZ8qZmMwuma4zcIMVn2yJqyVLEgnTKdjJpegEHoXhJeCLQhM9e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjSrlEfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjSrlEfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B11C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769021033;
	bh=c2Tv9zDOhAHLEAVHHcyFOeNorclE5cb9pfggOAss3O8=;
	h=To:Subject:From:Date:From;
	b=JjSrlEfYlHdgMyUyJKeteSLhgl1ZPx11L63045XOz00bmUGkwd7rl4SB1vQH8a8l5
	 5tkXyh0o9uNYFcHm8eiCjuJWFAc6UWZzaexDFFrUOpXEQj1YMi/oZMDN0OlTanx6UY
	 bTKbVRNFt/VhZA/A7ZQAGu8ppGkgx6WMmCeSNyHYapY/5KY3JjS2i1UvKvbBCNvJV5
	 6ooLvIF02H2HZkqbKB6uP5rimAwaQ/u3XP358r/i+M77U4WjbJs7cV/qyInuIglsoe
	 zKCogzXtBt+wDLseCqb3d1xwHNq597bACmQSf+pn+xmPy5UKTkKPuNo1MEons+HnYl
	 KNBC//rLvUSOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905BEC44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902103358.28274.14412772733988882606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2c9b8fb465cb18fd2643e79dd2edf7fa778ba25b158500f5995880420b489f
Date: Wed, 21 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769021033
