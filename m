Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D051991CA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755958194; cv=none; b=fn5NZk1DNhLQN42V7OgSXRDeuIvZHR0cs+Z0IWmzCso84H+VkobJUUuB38K3GCAtOnWVU9b2ihE4AEQVsA0ZXjjHlW4CuA6lcvq8xx0HXaiaj3VxJcPLTuN8fPh7dgIr3lN4kSxxfVowpWGsxcParSBmw5sxpr095TZXvQTt7B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755958194; c=relaxed/simple;
	bh=8WULUuQmSw0IQx0nGiDSCBrBx0BjAvUv/flClEIYB4E=;
	h=To:Subject:From:Message-Id:Date; b=npsPJeOitZO7sW7ydU253yyJehlFnpRp458McM+Zx6Uln6G/R+v8tf/JfIfESHL0d0P7tOhEGGBmxnH1PQpdHvn5kmjH1hmfHmKTpKOjRn1qgdSMA9dK0zbuy1Rrevd59ZGlxqmjHAfwBn7uDVKT0ijXktKoeCVdezLciuPcVwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJFxqeWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJFxqeWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E373C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755958193;
	bh=8WULUuQmSw0IQx0nGiDSCBrBx0BjAvUv/flClEIYB4E=;
	h=To:Subject:From:Date:From;
	b=bJFxqeWFpBVLPH7tQgfEIR5zygETd3HQkHkP7gQyXFCTYALfP46uKK6Bhc+AmnypM
	 /VE2OG4Fnmw0SZSVOAfnAJmgkTZ8HAwPVd78h5jxTrWQ+ncad0Jn+t0PHmJIEXIaQK
	 AbUtsLrY+dYF6qhssg9QX1pekxInlMaik+DU3NWailCz4PjLHOs/WSid12ftFXupjE
	 xK5iPe6Ct7coPZGCOQMR/6nd+11L/2JgD7O334c48WP5J57DflAQLr2K6TajtSguM8
	 DMVvds55t8YX0gVE8ylWQ4Um19zgRrahEyCSXvk/xpv84rLKmNGef4+tTRQ3Q+q7FF
	 effMoejum7hFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D9CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595819357.12211.710000709599868639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8c3bfa66a0a0f88b3858e1bf8ff69d73ebfb7fa794f8beaf1e581894e9d583
Date: Sat, 23 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755958193
