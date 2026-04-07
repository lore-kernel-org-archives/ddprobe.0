Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C38D3D16E5
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775581534; cv=none; b=NVsvh+01U32Y/h6V2k6DqRgo8MbcNgo/cMoD11jC5ZzihSMLae0Q7pktU/IW+kAlZIqs6Mv4bUVGMbQYYtOXWRdfSKxKtS/cA8b/fmFVIOdFg/Ev3+QqCs0pVkMnCJrlBhTSYfZtcjlKEhz5mCRCv10OipR6BpsAVj1R/irbC2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775581534; c=relaxed/simple;
	bh=io15IGzO4QR5igdxKukCuF2j315a38TrVZ9uPvpivoE=;
	h=To:Subject:From:Message-Id:Date; b=iPo31R8WtYm/DGNbmJ0yAA47SL3O+ii1CV1Zt5q02yadnAYuA5KktCxNX4pirFW4P1MJgqj60mgFU0VZI6Ot+wsznXaWQ/CCCoB4BXQyMu624pEXi67xeNjDAUFGuhPa8TcZyrowdh9zkEGqkAot0Jz0Wgc14jtwQwywf79/eAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5nZHs5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5nZHs5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB96C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775581533;
	bh=io15IGzO4QR5igdxKukCuF2j315a38TrVZ9uPvpivoE=;
	h=To:Subject:From:Date:From;
	b=f5nZHs5/WnGkbEnx4Xy0Ev5kJ0InDqwSVnKQypmguF1dtvXiuzOzwRhHtuIyM3RVT
	 ltvqDGFcKZs/g3eJrHgcYIkQmzlFBK3nsZ4qCp8IpM/Te7o1keMA5fAMkIge+rkY2a
	 y9EYNL2aDQ1xdAQFhe4/mfRqVvcOi5WbXevBstR+4vakCR2RlpSYgz6JCBIzUctRm3
	 2vm4PmS0KaOXnhps+E8w5sI9fawb9Z0IwUu8vsxG/RHDb+Ot4uUUsRZ77UISP9XnKU
	 PI8doQDtnLxqjX1F2Ddex7Q3upaUHX9KNHXJvVPobvTwGwTvVHN1BG1j9lD0/6NOqD
	 5nXnb6lgwvEhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D7FF512E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558153368.7698.18041330334510246738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64fbe62b35af00403de31398596da77ada6d4b3bb275c6e999bbf0eb892f0f6c
Date: Tue, 07 Apr 2026 17:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775581533
