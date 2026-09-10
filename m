Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536362E8B83
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789045234; cv=none; b=Crp7KLadjj7jMr2R7NNzwxVEOiUpJIZbqD0PYfIF/q5OW6bhhNqUgzRodtp7Cxk0oyvikRccp2Laxn/nVBAf6OjWJMuvATXjCaPW9DlLQT0ysuY8ohn9G1ZY+FvNP3GKiN0G39ntrsvcN05ggRMftbCrKhg1e+pEYagWI/lu17I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789045234; c=relaxed/simple;
	bh=wKCvqF+nvVa0glsdD8C6RWIUA6YZ6GOBtyFn+ksoHiQ=;
	h=To:Subject:From:Message-Id:Date; b=eijRIG8oFgl0T7gqew+svyqjrJG7csUusSINh5Mlo4YGPXokP/LBGiBjDFvaQ1+MkRb3Ys5ouFSHCSw1aGeLZt1aJYjVe3SIL4a3OOUfTbQm+lFqMeAh6LQ/TJAPaH+ZI8mDiCxbXnxzYigId2F62+EijNt3Y7DIAWtGf16QnAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9wpaijM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9wpaijM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C13C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789045233;
	bh=wKCvqF+nvVa0glsdD8C6RWIUA6YZ6GOBtyFn+ksoHiQ=;
	h=To:Subject:From:Date:From;
	b=H9wpaijMEOUd5St3Jye+DWQ6Z2HTvUK4bxCAgyswOyjlPKoJn+et8Uht+/ZArlOoG
	 4emZkweK9wXLvrPBw9V5e1ZZtyF7Gbm+2UPFwFTOgb/+6x/XaLNZjzftGWXo1D5i17
	 VpyvlFPRSKzwF26zdQSvs0R6ALijCumHUmV/2OSDSBFYy9v+33ngpuXrRpvdM68yHb
	 mUMGSD9aUQh6UeB5g9ua/MJCCNYpyb6eS7VqQDjzytwXl9ZhasijuJNFG8/EeCMtjs
	 j9D2Qq9bUxqFIu4SvhwMaGBpMnfbyCzjji8LKO6vd3fOJhSVaVmBSApYNo3S38vbna
	 k/F3xFhRBh6Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF89C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904523370.23974.15680923650655606708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c502b3f8aec8c974bca967436751693abeb0edb9c824e48cb9a5d880e609d4
Date: Thu, 10 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789045233
