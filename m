Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D5B3546E6
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785375634; cv=none; b=Wi7thpnQEAPAV9IyR0i178+mYmyBB6eiOKRF1s15oaV0oA+TuYNHAOjdgQiidDpSgdvLgDA5Os/HT68Nf4Aj0o0S3azKRIxv2A6Ftp/ZXb4JnqSmz/9QRQ8+ZBd0bG1D12NLNvzV4zIZctse25Vns4Rzq+YldfoVMv3EbGx9Zhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785375634; c=relaxed/simple;
	bh=d4oJ14e5D6EQP954/4ZuyzlnBFKuTe0IS3y7D/LBunI=;
	h=To:Subject:From:Message-Id:Date; b=kR5EIdoBjJ9yRVPRhb7yigl0VsAwqcxDuX2J2tdqJ5MyHiCXKV9RYV1HyGvoprps9srhziogQfzRmtJmvw0pDI0RPgtn18MGGFSMwvwB+DMfJpQkPSJI/XhVaU7v5uwP0DCsMiNaihtKsENgO+1il26kFlg40m6yS6pUSsx/lXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFVA6uFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFVA6uFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD3AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785375633;
	bh=d4oJ14e5D6EQP954/4ZuyzlnBFKuTe0IS3y7D/LBunI=;
	h=To:Subject:From:Date:From;
	b=vFVA6uFZSCXgpXcyE1olC+X4zBJN5kleq3pPrCiWD+wNQIWwh7AaRI7BILrDEHl/i
	 YYigF252aT00izMEjEi2rsZLG9pK0lZgtiHilsHi8bXPvAJza78vqz7f/xsKXMe3Ns
	 2byvhzW8wzbo+uhnwVCe8jBo4PMhC5EZpVGuLYKatYiRw1tvPJ7PeWztL3ozVj+CG8
	 PLzmLMF9El7zbo3yD9/PDw8NyQY2y6YajGhKVjA4Ckkbh/15evJC/35K/XcCR7QgGc
	 6WPl1KLHJfRGadC14SilotItxVtIkWAkEHDF3IZPkZNEPVpXAgVWkwbHfIfifzh376
	 4U9x/eK6Khm1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A833BC54FCD
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537563368.11138.4852312271941404629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8900025013b6f9dc1921ff3ea4a22a99719b200e567aa924c9c75aa69342842
Date: Thu, 30 Jul 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785375633
