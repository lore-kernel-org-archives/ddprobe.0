Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED0523817D
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759980594; cv=none; b=K7oTPPXGEcaaMcXj9DHyRzr3xavo/iVGqsuCLYKmpjy059fZKTnOrYTZaHEqZ34iEBJUYDH2HMKCUhUfIO6O0zC9nUn4VG9z2N9cSrcOBy2onmWLY0hdO5edYQ4TPKcEPG0I50QeEGJZm0lgxETBdKTsK8SAEq9GMSy5gynAFfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759980594; c=relaxed/simple;
	bh=wYV9s0UU7IkffcF8rvOI+Vd5kkG/BQ8T1z2cd+Z2r6k=;
	h=To:Subject:From:Message-Id:Date; b=al0VVJYwKsoWQ9XN0uYfiX8ry9TI29f52j5o28jIDv8zMu9kbeIHC3a/bvdtlr44cO2JHxPn47fCbtO79kVWVY0v2ugyfbWhg3K25jw2u8N9slVuZYIGxtARKunB+fg+MbOyxvpqgu3dz5eSHAQcW4yFzNeRwNtP98Gq1xhSwig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7ZNpD/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7ZNpD/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A323DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759980593;
	bh=wYV9s0UU7IkffcF8rvOI+Vd5kkG/BQ8T1z2cd+Z2r6k=;
	h=To:Subject:From:Date:From;
	b=j7ZNpD/obf47gunbT7s3CN+AsVK5FaKmemF/72cA4dgYYkkDSVM3Zf6FtNl1OOnSO
	 N/98xYoKJVvb0lmkFnMIF6odNSoV54tevxfSGbROx3Y8V0hUWwz63E2HhxtYspKrbY
	 HvGzwD/uAMFT4WTrPG44+aaZ1j7s1f6mfxu7sNhqIxinefwO+I7c0L8MxdRX9F9YqG
	 7tvR+Fs7sEPNCPT1nCtcZf5KDJe0M3oOUF6M1JDZ57Oc15SR1XdwsGjz48wGAbvZex
	 dP73/zeLohzZUOkPFIpf0YllHziTM7sKhXhnqYqyI/xFm5359ksHS6DW/y+gY60h+j
	 0pQXoo0ueFt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911D0CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998059358.14167.489040018078258059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0ebd2dc1ae438fafabd2f512f4927c55ac39930091c5ab81b4bf150a475e9e7
Date: Thu, 09 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759980593
