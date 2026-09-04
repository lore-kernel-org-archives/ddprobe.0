Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DC4379EE7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788511834; cv=none; b=Nq2FRn4ToBB42HTyfSpi6Wfn0MsWbGnUAT4HAwB4WVLwLETtflthqqvzeqbaDig9BngkGFoksLzbbGNnGzold8jJVzbV1uv/5cBBrhedI7oEo9UN9TUjm3UlmDUHxkdDwutkyIHQR402Iwu5m2KTjrxwtPe5V0jXXreBAjqaeKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788511834; c=relaxed/simple;
	bh=LAEpEoex9BIoDhmKJrPy2dJIHgZKe/foTPYTWUouE0k=;
	h=To:Subject:From:Message-Id:Date; b=Ved848pIn5aL2heFBnIN06EyWV9ygTCRgWbqWFn0sOVI7eYnwNQyknDf2ITWzLHNsPADsWK8oyF0eTogIo+seZIa6tnVrCbssDgPVb7PVHPN9ksQCrGUun4pj0qbjfZaJlIpMUHYDHZl9OuI4xz2X8UY2Fvo/DGth6Q+bu0Mbr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+5AshpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+5AshpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F76C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788511833;
	bh=LAEpEoex9BIoDhmKJrPy2dJIHgZKe/foTPYTWUouE0k=;
	h=To:Subject:From:Date:From;
	b=U+5AshpWBC+AruOvPmPalmvhASlCxcxWwWxTLp/iYDYDSQJTyp+L8nKsVP2RQ9GOD
	 HcZdrQe+t/+Zq+DChnf85qCHt62Q7x2DaNePw/1t/+v+vdkMs/qr7nTyPhDFTj1CWR
	 Ez52INNblkTtEIPRX9JlUfJik1AcKFSzt4H+AI/sF/SFD/y9392B0nqhErwkEyHQx+
	 nA4x0eX9K+OBEqTa6FeacFmoPat8dZ+2ySPtHWNgH2CFJDGRzu2WnMYD9nGsQk1Ejk
	 hZS/PAxdU3YfFnpFTckgb2PDOCfaR+Fc9JV27nbNKHVurLsHRIPhk/hkxj3K/uOvXT
	 njeqpttEtQQxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD332C79F80
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851183370.9404.597168423371424522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac4e834925745e06982fa2c9139d81344b1cc5fd6f15d1514ea59d7ccbc964a
Date: Fri, 04 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788511833
