Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0BC2571B3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749529196; cv=none; b=CFMjR+e4ynotctOLw2dYP9489NpzkNmjBi/mZHsgODGMF7/xLYk8/Mb2NKJpHR1inVN6RcCiJHHXpaQmjZo818G/6I/9+r1PkIG2Zs7KQhxaOFAvlow0QVoDFn8x97i4U8hH1pt95Ss8qvbhexVEDB+DZjegNVbY50msXcmSg+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749529196; c=relaxed/simple;
	bh=6Atg+dwUCtXXCc+DHFgRxnDrm96sa+ZRRZYpiLT0RAs=;
	h=To:Subject:From:Message-Id:Date; b=sxCA/g4tEewGr+lRA6pDObzFb2ypgTcABCWyazIZhkYB6hlaeURi1Dsxo55jgOFG71She2mSW3ezy+i8B0k8i/v2+gks7rsxydSBkFW4YFVw6B2gHhf2Yjiw1bhtzHDnYSoNqNy6bkbhG9Hbpkk/kMahrSAei1heXvsaS4L8ukQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpX+q2Bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpX+q2Bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B9EC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749529193;
	bh=6Atg+dwUCtXXCc+DHFgRxnDrm96sa+ZRRZYpiLT0RAs=;
	h=To:Subject:From:Date:From;
	b=MpX+q2BgiaFJyx9aBkCTpKbuWAEUyxzakcIQteEqbaZTwi3YBsQv9ThDj8WsfTfqu
	 PgnTagUVkY3u0Tg+E6CwyobYOLrWvb+U6tp9hxSUDivBr2dQ2cFfnCdCvxF3w24zbN
	 6Lejan2nKLOHNjUpbUJK1AKV4QIg+36PE89h2dlEOePuzoVGHfo+Snv2S5JY9dFwce
	 m67+7Z+XfNZjwIyicdbC9SyhnCtiNI+0k1YY22YNa34rf3YtqmkjmWyof58JYry5XI
	 jL99JNUOF8mlJeb0oAjEWFzMJgT+DfsQGDvaVnJeT8GNtu7hzhCwlTsWMczSKKPLZt
	 xrmj8MizKP1Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DF4C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952919358.27984.15958070635877280774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878206a1bdee75fae48e4416e695d87638a39090c605a3151e137f95dac69a6c
Date: Tue, 10 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749529193
