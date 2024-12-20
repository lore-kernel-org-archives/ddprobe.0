Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2215D218E8F
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734720954; cv=none; b=SmpNd3Y2wdwULfKeJ7S1CmnhHVEl1E+4ZZ5S2OdBeOIx/9hJ5ne3UgQ/66DxjSXRbCXENT82HQUD2yXN+SiHyq5FqR/HEihxh+/t1O+kSoluy/PxcfY1ppeZdsm7Zg5u4BaKGwW+TkkMkHSBCelRaANMw4dAPKWT9is1gvMlX18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734720954; c=relaxed/simple;
	bh=81tDFTEpSRur8XqBJUZ2c2Xn6OoCtKEIbIRgI7i+YvE=;
	h=To:Subject:From:Message-Id:Date; b=K4L2pdfh+v8TjW2nXKjc3DYopUbXXu+qTCwmM0YGLLjrvmUQ2P7drlha0hi0XtnrWmMYwRpH6vb/RPmFnV/zVTk9qe4w9F1G1YuQJRVEcvR5iUoh8CrzfftBzMOOwUbYcDJ6OReY1RjQgCXVtlFeqYBFQLmIIZw+hIeovvPcWaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8/FjyFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8/FjyFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF50AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734720953;
	bh=81tDFTEpSRur8XqBJUZ2c2Xn6OoCtKEIbIRgI7i+YvE=;
	h=To:Subject:From:Date:From;
	b=M8/FjyFZrgOCqp5/MpPsplOAZ/shsgtTTzv1Fr2EE6Q4/N0F0zDgeuArvcU7GRYYP
	 AEMTIm9nR7SHxlu5UakD7twhew1X3jD7yhQTtq00PEdXPBLcl2B581k9j7sgS/kjNq
	 BXPfxMpZJEmTVzFOkrsxMixP6zYr87NLg2oy+BhzNkyu4VXLYAhfGmp5v4M4mEaQI5
	 VD12DflY0UWthS5u5dxJNR6chlDgusMTTkCTWL8c554Szejl68ZctPx0/nSfSOxO2V
	 PVSzEFxYZ2N8ilCAfjVr6QTN4JdNUjwifj4ICN5+gy4gvKVa+tSJX9F4Kk/B5Ags/B
	 Vgk1kot9WH2WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9212FE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472095358.20712.13997721827422083017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10291d5bab14931effff8770d28fa7714920632f296b4c25fae93a5bf186f8c
Date: Fri, 20 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734720953
