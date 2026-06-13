Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F942E7631
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781393194; cv=none; b=RE0zikF2xnlgt4icK93i0xwyo5nuugh6NKTl58la91R+kX+Ty8hEvxZD1Fk1OlUmMaIbjIytJ50N3dYwuMTsvDncdSGEfsL4BJMZWQBfhc+ybHKoCPmd0R4zkEzYgnlqFq0B6yad0SonNTSZ2GA7mtABxHljTVPaKtJFbdKKI+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781393194; c=relaxed/simple;
	bh=KaM8xe/UlqGMZix3Zoo17d2+B+zF+4slf6o/QKvYYho=;
	h=To:Subject:From:Message-Id:Date; b=paVe4peBMFGyc9HAFpI5HdtzyrMeBpTA6BcGptmYwLY0wyI0sGZNT8kmufUVAdCF5SzkoelOYbs20HQSK/MnNVPcLIma+v19F3ajAgdzT9jtNoYw/eCuTYLKhtkfinIvRl7WG73Ed7fFI3I3GD5zxPBAX5DfamrcE7mgYORMWqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T52d+ztE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T52d+ztE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D71C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781393193;
	bh=KaM8xe/UlqGMZix3Zoo17d2+B+zF+4slf6o/QKvYYho=;
	h=To:Subject:From:Date:From;
	b=T52d+ztE5JG1rykuLNkFTBnoF8fA0b3OZ/0/UdzsonPWRJxZRsRCqcsnwwMlQ37Dn
	 jdaXB/PqMnJHmUpi1pdmEYG5VsVp1PG/e4/VCBo3ezN+w/aSGfk2gHUqEwG0QHG2N3
	 mYg1VnfqLAvvM97mTRAZoZmXgC1HSrkitUdtQhZqnrZSewCKPipZ4ONiXw/OaZPinD
	 MKTK5hYe/HIvq6+6Y+xfcI4lZCFjtyWnUsCZUiumGljgYr4O8lsbVBrnzcsJ+a3B5Z
	 p5PqAS9ArPN+k3rp7JE+ZxsmMppGTvrULQN5mHY9Wy0MYoQfvFdCUz6oODLhA68y/T
	 SfnTkVsf9jo2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0C1CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139319374.19035.10852790867887994703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1cde8f80809174bf02d3f8643446315769ac7fec7ab9b4a38dc29bc39d9be0
Date: Sat, 13 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781393193
