Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BF01A2574
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724859354; cv=none; b=AsEXOATt2QF5MMxi5cGiZDh1Pe4txSJcacuG1LGY4Q9l/4u0P6kAsXfxkHZ1T7c8ePXvEghn02e2aX+fkoTbFgpBE/w1CPh3YfUxGO0Nr6sdz/fSELtGcqlddx1SmiHZkThbngE7omywKzd1+vS3R5SUkOKoKBrAaUePMNckBBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724859354; c=relaxed/simple;
	bh=uzXehqoJNEooRD+L/D+6+yD4tjFkCMiLKmwPVZlX4+A=;
	h=To:Subject:From:Message-Id:Date; b=Dn3yIwidjt0G8pQRa8hDToih+UYZJUTt7YJEgqkGbbOTKqMdYK372/94Hm/ccwGGg61QVlc0u6nWs0CB6reOpADaPcEWwgD8cTLJskO+O/raQ0GNs/HoitYoy+rJNrb2l0HxjhdaIUuK3BMnJKKdBE2SGO8RVasfBCPXV0mbSZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sO47erWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sO47erWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1217C58191
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724859353;
	bh=uzXehqoJNEooRD+L/D+6+yD4tjFkCMiLKmwPVZlX4+A=;
	h=To:Subject:From:Date:From;
	b=sO47erWSoK0o5xazkUXw+zsLQqIUY3I90JXrEC7Lv0Qhgtl/MJ90RxNEi4vpalmNN
	 raCzbaeQG8x/PxcRCdRh8++TdtI4/P8cvKCj75fcJ3bIlhKmywoYaNTMBGwFQSRcgq
	 u/8Jcxix4RRyGBjAoKLw3+8EO4/77FAFmxMxH0K/0CRIafq2M3rsLYHyNaj1H9KTWg
	 D/ExhBv26rsDSGfshlrvDivXpWfyR8LTEnJXGulxFB0N/zjGuE/qJj9cTTQ0zkDLY1
	 8sB4C3DviHgox1baj3qfEE699kiI4k3E5OEj8m8uNzPOm6xBM/q6ZRx2Rv1B/5zUKT
	 5oos0fBoE3iEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FEBC5B54A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172485935358.8310.14337800479369848370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b137c3b19d9c6c554e2d24eb3dc85335e08ba6ba22e3e6ff9791bc0ef6f9c2f
Date: Wed, 28 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724859353
