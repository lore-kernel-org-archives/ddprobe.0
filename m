Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1F42DC779
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745996394; cv=none; b=i13J6/f/K05Kyrg1xNfFAzgFErRxvk1kiGGLEYbU4XzJrzE+dPIcvJoyvvTSwp7PScLF/kwBgDlDkWucUHiEc/+ObzD0c9dHT12xB3VDjgGKhp+M1kRM+vvfKgkmN/IyKGjUGqZZKLhoAMyg9Ll1FpP5nGYEKH4WskTr+zZ1xLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745996394; c=relaxed/simple;
	bh=BwoqWcPVNMtjhluKT7Ev8Yp+v3cx5hmviLDAtAPMHhc=;
	h=To:Subject:From:Message-Id:Date; b=HOnBoWGn6CAjYUSFciNqsadDVH+8VmZ/z1SsG/mWZo/kpJtDFudB4zfCIHoV3bti9BJ3csY+/sgPK1IM6hj/Wr2MN6Wf1iIbv/jStndc6xuYr5ktptnkPa+73vkQegWtTuZ7KdIFqBFOFexgRDlptZ2MJ4g7iJ8wF80ZJYRd+hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZXOAVuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZXOAVuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A218AC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745996393;
	bh=BwoqWcPVNMtjhluKT7Ev8Yp+v3cx5hmviLDAtAPMHhc=;
	h=To:Subject:From:Date:From;
	b=JZXOAVuq8UW4w/2p9MAtk89zx/nnI9HR07JRHJBCoQaHYNKnW9FFRMx8aCaB+69TU
	 rKwpzGaxFIhu0vb4mhujAtlEG4MbSHLgglK1wP9Nd/L1a1dXm+DZVJc4v3qh09uq7A
	 D8Beo55yLQwjWDiZfFw1BwkphGBdlXEza8J2nDPF2O7F/geBknSvGGg4gKuYaPtT+I
	 F6l0ErdwkrTkQ1OV082034XCIfPKRaxzo3bh1Z8iTA9v2CNRm0pBO/f+bfSZHt2fTW
	 d8wfHehYdou/4yNsRONM1P7NWlUy30U+NBtWlYQpmLTsckeP8lK1KTrjHODROuK6KU
	 1UyXCt52f06ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B5C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599639357.16530.70902053939614866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487e56cdba163e2f775b09bed0a78edb09095e4e2be1967a6cb0f880b7e06f79
Date: Wed, 30 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745996393
