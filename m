Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D42B2EC0A2
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775158534; cv=none; b=Fe+Kg5iDuv4kLpCiNUyGZg6vz6ZP1oGr8xEBLHPXUy3UA9EnUPJ9xVfARCUFSoDeYh8B1nHApKPQazuSuxVW1C772RbGEKB+fSKycIOzpVDpBYv9Rf2DExPRhLzXuibfJAyyJFlvczF8gspRf4f8eLPuYpJqkFnd8ujLtlK//J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775158534; c=relaxed/simple;
	bh=+2mrnVWinqFZFPxidewG/l8QHJmZ7zNy74JJQhODd1Q=;
	h=To:Subject:From:Message-Id:Date; b=iZxDbFHllAe1LI2MUFSutTiCHD5n5268sR/C+BpEkNZPFp39BiX9GhATAvz23KSK/CTOZBYc8f6jpo7O+dV1nt1WZNoajrIOYSJAMqtTIKvAPiOU2Myb/dnkMbwgDDNOEbsw9J6p1+CyjMD6dkNi/cLUtFOZoG9UMF56BO3smK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcptzK4a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcptzK4a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0F8C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775158533;
	bh=+2mrnVWinqFZFPxidewG/l8QHJmZ7zNy74JJQhODd1Q=;
	h=To:Subject:From:Date:From;
	b=XcptzK4aA2v/z0QIjrziIX6nWB0EIYUjgK7WzCc6JSJ81MVX6O6vrqy6fEx/z5EF2
	 ZTJpEEr75mDnU2bF8hi3Ydl2GrUq7KRSx3IDq3HAKm/WGq+SkVpsvBGm5wy/2IAtMk
	 8C7nr85lC0syOZ5JKBuh42pjbSMl7rPNbsqb6/RGPHy4IDF+9YJ35oppaAypY1KWkh
	 7ISWk692/m7g/78E0fXHsAO2Yixtf9hA9mSwdXpuD7n1SzNGPrWBggvv4/p3oJ2Ttj
	 oDwiynbgFwcsm5zif1yJfE+qveuUbwS4v5YxAHA9v1+gncQkgMlmxHlZPiCPoAGanh
	 HSLV1FOP5Dqzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC8AD6AAFE
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515853369.3669.17619476403767335063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1101b41875a29741c78e25a60cc41c1e47991db937cd104ecbfb0ec6e694993
Date: Thu, 02 Apr 2026 19:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775158533
