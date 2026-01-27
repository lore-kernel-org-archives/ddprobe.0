Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0675530AD15
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769511834; cv=none; b=S9jgV4kCbvOs8/Rp1LyAtVkdTQ7c/YgfjC+6+vJZlRTORTFQHPgsG6dqbnykqvR3pr65+DZU2gYhSgVCsKN+aQt3CEQS3yoG8VdLK7d1Tl+5SgDILJ22tEAd5qW+oiI3jS7Bebaapbm0uR+cyvpen9HLJeD0u/EU5KheMF8AvmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769511834; c=relaxed/simple;
	bh=KWwzh6YHJxRinFwqxQiyjg2D8pAt94K+DDtCbM1yPEU=;
	h=To:Subject:From:Message-Id:Date; b=i0Pwqd8zzaWnoq8LY54PZeuWn9yWm6F67H7PI+hZ/7PumeOhRFpx0ikVIi7Az2QBJhMptp4eozoZ9qWQ9l3+3XxslPT2IkMTknX+FjyzrlEb7scA+3dTv6NcCbf0qxRJmdV+YY6aUEedbloZQiDTRJi5fTovFzyRpyn5ZeaEutU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4C+ezhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4C+ezhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB5DC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769511833;
	bh=KWwzh6YHJxRinFwqxQiyjg2D8pAt94K+DDtCbM1yPEU=;
	h=To:Subject:From:Date:From;
	b=T4C+ezhnsp5805XKeD52ritYL2MRJtU5fh4nbumzB3W7Y6Y694W61Lu9R5zMiZe1k
	 fB2BHLTT/1+nQt+tBh2qHE3YeakxV3VihoT/dQjeNaDxmmNHuNRAMBWxrkJojxVzmZ
	 RZBPO1Nf0yp4Duf7QpwCiUEr9we5MLj8dhLhVmFftKVkFbPL8CHCjnWnywt/y7JfXY
	 NN/eQ6C9GOn2mmhAj/T58x8txzGMR2BooK62/iz3x/SsNVTMo4baaaoeFDoDavdoSZ
	 +ohrnwpf9FgE7cBMq2c1Us3r5k+0oFXFMrJe6I2qyDkVrjjt/Nc9RFKveGo32FM7P4
	 tSvpx1XxKuCpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE9D2D8F9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951183358.29821.4174936421413627672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcf1edef5d26a68c1fa859570b7c604fa2f33b65cda4b1d75fc1e67731784cf
Date: Tue, 27 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769511833
