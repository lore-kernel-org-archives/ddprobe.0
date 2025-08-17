Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E821581EE
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755407994; cv=none; b=Yhmv6nlc8syquYgiTUjltIOYBCB3gr/2WKbNIUx91+sQ3sLHsGO5GHHb/+k35PQ2m+9GoiVLC8PG7PunbSYNIBTEmZbXdkKJ06HXCjsALdJezqCXXLpBvg5gPC7u6UE0albiDWQvgA5yZ9Y/dRITFa1GUi5+R55ilT1ri8/OT0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755407994; c=relaxed/simple;
	bh=vT/h4fvPjxA7YCCXnp9x6SqEBUPlaNXt68l6na+18/M=;
	h=To:Subject:From:Message-Id:Date; b=EYNX09Sh5G/OizHI+uhWMCmBaeVlqDibcEe3PcqRYhpVds9F0n/93jylaXzBOUHV5wTTF9RTyL5GgCqb5FgWWG4AlatCIGKqoffHGi1GbalmGKW1uNVX3fKa+jgHIpxXDtBnD9bUaivjeSc1ry29V39DjfktjFiS5MzqOE4Bctk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sauEbXOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sauEbXOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46DAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755407993;
	bh=vT/h4fvPjxA7YCCXnp9x6SqEBUPlaNXt68l6na+18/M=;
	h=To:Subject:From:Date:From;
	b=sauEbXOQtoECMKfbrgkNiIm1BspJCC+MFg2eVew+lkRet/yfWS17/3vGxJ75Zz3Tv
	 SVdXmaOldjbZH92fLW0Bbp7emA1RR0dO+J5BlMKHgmoDLfmVBYyaeWXJ8fpDgCv1cZ
	 anCN5jMUH5eEPAU03VbgUnb972lOZgK/OWHDKTc1c1uQ/IpbAW/z6GeFM7fcs4MZ9r
	 B8onVVwS7OQ1lNgJGlL5pujNh0gqO/+HihICSeuLGNBLKaQsor9ztfStk/Ie+l534z
	 2ssGzHCrdOxiC/LcU5lrQ0LFyv+YbrxjcGww3MYeWjFx0PSReBv/ZzV5mXa8pda033
	 hNGIIdgoYJNDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91725CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540799357.28111.18389234783108849557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4501ebbf4849dd4f3c18e59901e7df495029a1d46437466361fe9bfedcf7029f
Date: Sun, 17 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755407993
