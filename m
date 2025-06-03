Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300252744D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748954994; cv=none; b=lmokz/ojzgbPqmlkOvSu6GaHpa2z/VE7AdXbGi/lPhCV+4xj+EOQg8Zf72QJdXFQkHCFMWYH8UP1R0vtzH7RwfXq/Xlwfj6rau2IPP+9w40PX5WQlAm8lTiTf00zuTg6Xplznkgj1Aoh/+ZXsufnTInZ69dRykKpimqXVdlPTTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748954994; c=relaxed/simple;
	bh=VU0FKbfiNiRlPpCVfxJ22HKnroH2k1tyGi8Oimg58tE=;
	h=To:Subject:From:Message-Id:Date; b=CZji2V1hVzTs8e7JmRWXfa1AsehPhmLaDNBFj64QBDw9niik2MycaBieG/Zrf+ljZM8ZvK+0xWi7FGOwNDbcMZcgpqSPjiIEs7nfJSC+GgQ+R0tuXufc6c7oOSIDt1HUsZ52qdZ9j1vNjcl0B7Gsp+JywmLm3npegaLPrwJxb1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kX2hg+vR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kX2hg+vR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A284CC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748954993;
	bh=VU0FKbfiNiRlPpCVfxJ22HKnroH2k1tyGi8Oimg58tE=;
	h=To:Subject:From:Date:From;
	b=kX2hg+vR04jd0HR6z7AiAGze/mt1vc3QTAMoqCmSfnWFDzhhCdn6JJUJ7z8oSLl3v
	 UVZU+6Y+tiLNzAKrsXNzY8lF0nYkc+nyc1mYnB5leT0yqEzB3pD8YIsP0xjhRp7zKh
	 zJiJgqv9p+BegefUuwaClOxSc1HG5sz497jMXuUboVKf6PBqnbcrUjWBmMKOknK2Go
	 2Z1trtCxHmyRAuiC3ID2tmxXMtitaDzbI5Vjlqa1oy0dREzk2S13DtXyrMKjlZc1oE
	 NcVGMrycVPqD3J4D/UtNihaPba2cOfzS9SOkvKWb8KOn2rotvty4izl2Nvtl87wKHa
	 9QryRwwpxh0MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F903C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895499357.10506.2018024273799713306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34eacbf5bac3b2da54daf1fef6b60505e24a16ce57edb97c032a7b958cef06e
Date: Tue, 03 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748954993
