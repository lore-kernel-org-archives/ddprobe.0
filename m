Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3DC3E1695
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778943034; cv=none; b=qmwuNCskQKJ90feAramNI5PQFmeBo/xVUbAxP5JfCCwTTc3mBez5BkvrFoF+/L9z4A9JoO7BVwTv0UGUFF35uog3VF4vZM6UazSeVLnaLRQBL7vy7XfrgmQWnACmWCEd3DkgLVffbLmd4XwWwSqHZUnX8GzGIdu2ftpukJAJ9Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778943034; c=relaxed/simple;
	bh=CIAx0GkG0uudIshUTDeIwZz4yy7GHy4mTugKTFDVaAg=;
	h=To:Subject:From:Message-Id:Date; b=L6wsvbruUGewVYiwY6xyYXmgaTmMUeaxDKSYrFfJqMel/MvVVuP4jAWgWlKbHGG8ICQY6R35JsxzynJITM0hb8TkuHm/QfAsXIG13/+ILOEOVixPF4QwVKOs0MRNQVWFULbE9KruWS+vk1jWAasxl0+QCVeWinI1az/s67jIfzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+wfGgNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+wfGgNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0ADDC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778943033;
	bh=CIAx0GkG0uudIshUTDeIwZz4yy7GHy4mTugKTFDVaAg=;
	h=To:Subject:From:Date:From;
	b=B+wfGgNQesftPptq5xEwHt8lFeiXiICYz7wQBWgRB69hbS2idtmkko2UeGRn8LeRO
	 In9P0YG5yIO5ZGON91LizpM0EgSvs17/Ayz+tAqo4OPdWmDvbjkZLnbeBpyRdh7gZ7
	 V1ikuOEOUOBDtcE49Fibz2IAoWLPYuMEDgK94xRoqjUMyANFWkNQWbfCpFJ7OSzwsB
	 j2mvWIyhPD0+mYOCN2Y7l1YXMUVhxd9/THIpggOxRdYwgIhA9qAV37MCYXzxozKVKE
	 yt9KtCHppklVXAmVODrhg1uKTXoqQbJDwU7xuTs3UFhJQdVMn7RnOqAfYVEsExhLNG
	 mqbvTqmjXEkuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE677CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177894303370.24440.5524303850765415687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edfb064a65ff071ba36a422d45708e0070716380658cb5773fb0845e463f99d
Date: Sat, 16 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778943033
