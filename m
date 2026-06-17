Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5668337F735
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781708794; cv=none; b=qvEfGRX2BEtnYazEy7rZ4x5jzMRHbwPqIoTaDhES5TER2e1rnZdzRF0xj9hSYvkBpLiLf0RKBZ5gQx82b1SEN9yeLzUYKKMseRTP3kxLWjPOQznRuQc0iNb6yJ2Ymm9Ppbdi5cDP+0veiMv0oTQopjkmIbc1QGTDriXYULKZZZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781708794; c=relaxed/simple;
	bh=fR97sTvJRwDkkBMLNdkk9sdlaxuBBWSSoKMY47LX2ZI=;
	h=To:Subject:From:Message-Id:Date; b=LVgkBIc7+Z3tbN08yB/TpaT/+lhucP12WI8NCVnWJueelarAaMsj95Mxso8JHdZqhacWJwLLkHdUVtnb+OGztjLDJmiGDJivlBUWMdeLGG77bYxa4fop/VFEp5GnbIHeWQLvIcsuRW7qhp5DGhFDV9zqVT841xemYQdyh2GjnW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpoXKfgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpoXKfgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0BECC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781708794;
	bh=fR97sTvJRwDkkBMLNdkk9sdlaxuBBWSSoKMY47LX2ZI=;
	h=To:Subject:From:Date:From;
	b=tpoXKfgt7xiT7tK/wzOaMMtP4YBu3Rbi1v+ewkgoYTHAAF7o/UqT4yjSQmzkyKkzg
	 BrcGwMJTZ02zykXdixVNJ/Nn07u4X8R+GRSU/GI33t8nEHSocANqUh323CM67vJcmN
	 SizgUp2nOIO79kRj3aVxqAlqU82E57gtI5wn+0VF8GVb8lN3f35LT1dTWvDZIawXK0
	 EC/kUeQKHU3VdBvKB1NnFgs7qxlZoKKoQBD3h4CNBBQtKyTmpbVB4tQUGFE97Uu71E
	 uHKa1Rm2YfT5iGOT87pLLfA8QOInL186iCM6oTUXVuHBEUDqzEsPn/nzbuX3Yez892
	 /G69K0VtcYRIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD32CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170879374.14669.52390426079438228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f5ec561762a3af4cae9eb42ee4d1ca22318673c3b1f9ba0968d21a6a4fdea9
Date: Wed, 17 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781708793
