Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380C020C488
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748901594; cv=none; b=oRE95A0z+ecWqrEvl14QJl8Lc43m/oZz8DSaYMYWBGDJqLW7raLeuXeeprvEHiRV3gXOtXotSv17qdOAY+d8dTWpNvn+/qPnK4jQs5w1P8rjqr8G8e3+Brp9Lb3syloVkhfrHSQY7QT4mNcc14KsWck6HjXhYWfLSglJeDUl28g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748901594; c=relaxed/simple;
	bh=NF+TU+wmxm9iaR839BVhglt/HTXMDP4k8EAP1Dv3grc=;
	h=To:Subject:From:Message-Id:Date; b=mjNE8k98cg5HMjB3yTzx+K2IO94a2nm024h/mbfhfb82oAyGITODvMjH95/YqGpAsDD4jUUzq4nAZXD5Q8a33/rM9ruWyuP/6/CzV9gbK+11PVv/xcNUpZEHZtlOq14PnjKPedHKWrA2GWsr0GG/OktOUtHyQM1oR91/Z10fBpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T605u21B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T605u21B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60EAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748901593;
	bh=NF+TU+wmxm9iaR839BVhglt/HTXMDP4k8EAP1Dv3grc=;
	h=To:Subject:From:Date:From;
	b=T605u21BM1XUv8IxavM106eRYrkmCVVcb3l5kvp3HTvuBSRPcPKDVw/+SmRVrXiRo
	 FjOkgf/kIed0pD83ZMhJ9DwSdnOjsYs26teoHgZrmmQyFewgEDvoK2cmy5Pq3XVpWL
	 Y3RzJa9ARxOm46ZrD5QO5vpMddsN340iPB0xHwMSRUVCTyZKcw43BV+d2aLMCsHZd+
	 EWRRguVo8e7xkIL/NrCMT4DsQsgfJ1g9MuRDWVPzw+CtKNI5yV4RDlZIFeOIYwoCSg
	 CeaOXT2g1QrVwr3FL9VrEybutrQGm7zan9nteJK2XF1js/fP3smsmEGxcGoh5DdX8f
	 HEDAIruVRzhYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90113C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890159358.28523.4625767522283264825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d10f2d19ea5a2904dd98c20985ea41002884854d95ac929267635bf12978733
Date: Mon, 02 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748901593
