Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D2D205E25
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756532394; cv=none; b=mnVfn2qNuN0ahBKO6E7B+WnAfbZ518Kb3cpFmS78zF8NdPDPsX3UtuvGWo8OPVCFqmdY7Wn5VPIDHKy2dLqdd2tHT+BScidqFaXVYxAmhK2Puk7/XmtJcFwtY5wz345U5Nt8Jm8o1UBXxgxbBUX6a/RGCYcPNU6SlE2N2zCIEuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756532394; c=relaxed/simple;
	bh=3MgqJPidB0sTVJZWSvpmuIgVGBo3DTtbtbgPsqJ1ybE=;
	h=To:Subject:From:Message-Id:Date; b=CYZs/nLyL/K4OyPvNPjPMxLC2hNgTBFdyL0/c1z2iWJEgyEvHqb8pYgRTwFBd6iH/ncVdu91fG8jGKaLLq9BLQZb4atXKAXqsD/Am7p9PE4D/vrAOHoFfpRU804UYbSfkRb9Ydw2eZtD4MeV3Fvh4Wzt6MfN+5Vn7Cw3qHOu+lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGcuMLnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGcuMLnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC033C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756532393;
	bh=3MgqJPidB0sTVJZWSvpmuIgVGBo3DTtbtbgPsqJ1ybE=;
	h=To:Subject:From:Date:From;
	b=cGcuMLnu+WbHmOBbTE/9l5AC6gob2eZArhEB6Tgl/+IPoXwPwCO/WoGjYXemvHFwy
	 siQe4Ec84qg8gWByerevQa/xkB2T8ddeh+5xTg8vmLn5THLPtjTOpJ72p0n8081fyZ
	 NPlXbfbGvfYYHdtVDi9O97c6RzFZPh8qstzyTFOCxxiuLWPrSjTRYZYBzSCXwGk9U1
	 ev2JHrxjpT88JumKNrz15u43A3H4M8K/1YWC1VZ54AV0qYg9q0yTfBmhlgnp0NPz2M
	 eRmVAAX7ACQhwV0C+DsHHqvB0QYi/CfdOh1DZXQmXKxu/2Ck0gzOK1oKUfOVWUcgnt
	 eaix1jD1OgLxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A547CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653239357.10026.5215929695025271387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2335505ce7ba0c3312a7fa2d39439f5809f1295e7128c894533806d17ee854be
Date: Sat, 30 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756532393
