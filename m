Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3883C286D56
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758533394; cv=none; b=tmqCAF95WSN4mFNICW6Cxdsa1I546IY//PXAz5qsOKMaSZqvkFYzAaWEtL/pvqxi3uZc6gzl2/Xps928PXHOzoIRXHKer3tRWK8JebIkk8voSTrpMgcnv+kGXEYykvWh2VgVnTTwJ0sWG6nZDYX8Ny1e8FFoiGQGNdap48UpPuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758533394; c=relaxed/simple;
	bh=S8Kr7QSXngZC5iFx62LYn5YaK0yK3bg66n/duscBSXg=;
	h=To:Subject:From:Message-Id:Date; b=hq/t/tpfN/EQxLDwbfCtu87LDKHznvVbO1X6iFUGXZ2M3KtIyYZfPv3uwHfNe2F+Xzr6DDaHktXwuQUmQ5NI2r9tiQ/n8lnt9tgFwHR5ywT+ZCltdxHwyDzN2NTpARhx+a1+H4+fg6fSEvZ93QX+zc4pETcGiFNsSUpE2I1C1Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kilic4eF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kilic4eF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F59C116C6
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758533393;
	bh=S8Kr7QSXngZC5iFx62LYn5YaK0yK3bg66n/duscBSXg=;
	h=To:Subject:From:Date:From;
	b=kilic4eFk0PTq1yZJkztegPu3e813y8RoX1KUYk0vu9e2DOA2S5qTl3hgJBIyVSmu
	 MO84tdjrAnNdxCbJTXNtoWoxi/1Y8+yFnFzyLQZk8qSkU7pRZmU5UJEmcx/5aXYuhR
	 kDeM0e/xfptx4RaM22sLsic1QKvrI9NgN8up6t4Pu4C2gmQL0B5m4nVKs30wofPLfM
	 OOgRbzyDO7gwvDPpGfHq45baSXirHkOpBYhp1pODLn9+3Oy94irdNNZ2EZN2zKH3U6
	 0/fbR09AcFaZrpq+ITo3qsCZ4iv5qcdsQKg8W3FLj9USn5ZWQXMgXi4OXOpfpylznE
	 HEBlFIX0ez1/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5C9CAC5AC
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853339363.16674.2637110473406880074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c4c5a03502afb123aedb69cc92f7c3a329b1e6b7fbc07fbacda6cb8e006f53
Date: Mon, 22 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758533393
