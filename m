Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D18D30146D
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761293394; cv=none; b=bv214wR720ztFAbmWRCPgbwUBmV2tKdpDngZPtF6pMXm39OybNmiETbDGafd3MP1OyJqftcXM5Wp0wgTRZNKZ9cLzCrBM73vZFt4Zy9JCSDk6ljILbBdwvBvgz1T40fVtimwvVr7515ZLaFjSt0GYtPA81XHuPJvF6+qAkAcyZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761293394; c=relaxed/simple;
	bh=bGVuQ0enlRG3+HmqdZ8Yv6A+IeTCbaVKltPX6zUTFXk=;
	h=To:Subject:From:Message-Id:Date; b=qCUZDSc34AETLQiwKqWrIwT9Xk9fcMDrvghErzLRE29sa3qVtvyZ65qRJONYxzkhCggWmrKgAEhCoXoJKD2iuQrraTawQ16+zRKh3Z0ZQz4P5CctbWj4y42DerfVkIseweHCaiCL4NuQHPE/W43npr6l5K80xILx1Wcb+vhphBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFkAn0sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFkAn0sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B5DC4CEFF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761293393;
	bh=bGVuQ0enlRG3+HmqdZ8Yv6A+IeTCbaVKltPX6zUTFXk=;
	h=To:Subject:From:Date:From;
	b=EFkAn0swzy02uEG8tTMqHlTMh1WjnKqMGjSK/3rD9mzi5+roF99jl/7WKLk9/jWdN
	 BQF4u4b27UD736qJ4LOvgro6To89Oi6NKTmXImYkmzKD1PbwJZR9YHvcWwRiTpBlZe
	 8TwKBwCZQrng2rB3fJGu4L9J0nRHph2sHDbIcYVIVHJjJ46QQLjuR9R0f9JTlV7mdH
	 U7GsyTluLVurQ7J7qOhz7cOuV/YdgC3QVbQYAZ1b9no0UcO7sskvbBR3MdV5xvC+hO
	 dZISaMxjFXtjX03CQnrxrEDfM3N9fdbHOBYPmbSvkOTvqN88RMTk9ARg528EwKI76s
	 VLUHDJ7yxsf3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE98CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129339358.27141.14154487431667467381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b07f4ce406c22d34ccd17c6cef93ca9aeea6e4fb114489f81997f87353b6aa
Date: Fri, 24 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761293393
