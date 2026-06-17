Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 820C13F8233
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781699194; cv=none; b=fKV6u5p//KGMbsebbffS+w+Kgo0pzBOVXIywRrZsqnvOCZmmOe6yv10JT5xQb4D3FmoaIAaIeF+QYTvOklpryBX9siT8jtaPLfdCArw8jTIAqYA6/x4VFonEDtKTnxC+nguH9CmuaqGohU5wD5oIvjPVrYg5/a4sXSB92S2JSvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781699194; c=relaxed/simple;
	bh=5w+w7NFcsEeJS9kRZ6uFfWtBRxTlDUzTCCUpJ7/SJmg=;
	h=To:Subject:From:Message-Id:Date; b=CJ6faSKueP7fHtIhKFBfBvRk+wGbwwVBHgK4ht3hk4zV6MyafsyzcbQGmYNosrOB/d/V6BuzmTsf8dgawD1YuFV3tHN5yXo2UGPHHef+r0M3VyV0a8MUcXhN19I05DyZyHCrsd1e7rXj47a9Ov31ur4F4ZKqLQ8AWfowS2nXm00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jf+Q4AZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jf+Q4AZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A11C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781699193;
	bh=5w+w7NFcsEeJS9kRZ6uFfWtBRxTlDUzTCCUpJ7/SJmg=;
	h=To:Subject:From:Date:From;
	b=jf+Q4AZL4OM1dgfglS33NusVEWnZJ04xvsYEfWC30KeGId+dG4ISlkJmu8uH5s7pa
	 50sanTyrc1gJPr18mIo30lD/xOCLKXB+qHpmo6MWJ2Ji10zTLd/VBD9Ul6zYpmQD/a
	 KdeuJyRJB5iaCd9dbx6jklnmUPcbKO1luER/wRAZIFFSMO8yw5M6+p2/W98BgPNDrq
	 4VGCdHGRRtHewalR1EdZLt2k1qQ55oqGWj3k1jRJ9zN8oQkjD7TIuS9LyVf9ftXDzm
	 K0ZcptaxmyYyLZr8zeKATRfpPQR4BVH35/DztoFt1uiwTmSeV4VJe28nRNUy6PK5Oq
	 ke7eecRwusQNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC328CD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169919369.29690.16956901239329688987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9523fc122138074c0d685f7367d2e9bf25e09ffc9cb461a84f094fa2fb05378b
Date: Wed, 17 Jun 2026 12:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781699193
