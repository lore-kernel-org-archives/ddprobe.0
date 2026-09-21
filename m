Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424114C9E06
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790012434; cv=none; b=HhsA7CvNanF5SpcgWMpRWyt3WcF3Hmzbgd0bwIqYQxnHUuzAanFb8Bdw6y737qyb/cSw7zIF+6JoEhEn2Z8hwCf61jaX+poMsJC/lJyKo40eB1MLRD0iB6qk+ZF9Y/hLwbDUmDjGgTj0O4WXxdWSCreAGsmcBtoSTzlro86RsnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790012434; c=relaxed/simple;
	bh=DE6SdP2dR2IKTecKK77Qq6/XC8KyaniFN+NcEAD06K0=;
	h=To:Subject:From:Message-Id:Date; b=Fyrw3O+cu5C5fjIdf1/UH7f8lixSJN4rlJofe9DdNEYre54CDXfNxMJA9wPpQ9OXMWvbbXjGUja7AYdBKqUC2zR7HHHf6bCDUpjIsBMKzJIBtLyqomxqeCEkVw/zzKR1ZKLshBj16JFQ9u0IKsVGozop4D6NRMJhEzS21MpSjPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXStD3Yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXStD3Yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB264C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790012434;
	bh=DE6SdP2dR2IKTecKK77Qq6/XC8KyaniFN+NcEAD06K0=;
	h=To:Subject:From:Date:From;
	b=jXStD3YtM7WnGonjk92Jir3UKPocNRPdXNUJfNIalx0Ylgsf/2KC7U/uXJs2+1Eju
	 3udTOx5VmTM3MLHzFpPReceVWDWQRD4132nin5rG8mpFNxzSVzDfZbG3DUqPHhxryp
	 CH5YaXsPjBtOiYroMMHOSxF05ku9qcZgRgOiTsvpnkzZqffjt6cx5tGISPrIXRBEPo
	 oKMEVTkdvGGaypYq2qnFxQJNdj6l9TjOP/8VHD2ZyYRiUPveNFdYzB+8vpEy4spBSj
	 qKHzQR8Yc7vxnhXCRHWBoeg/oorzQOy8Fw3uXZGJx2pCjVKvMHabHcz+BY4Fe6PRH2
	 Sf9TbO+d15yrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1813C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001243373.11169.10147543694138222685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85294a927ec033a89819101761cd2d0a8ced4f91cdfa6a976675c4178b463278
Date: Mon, 21 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790012433
