Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6A4219A8E
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761190794; cv=none; b=lGKbRxf2B+TT5pRuDg9kpgri3YbtnSXqDYVbz9JP51mGxNV0QvTRPHnBZdfLiqOhD9j6doIqg5gfWa2ewBPQeq4iARDvemTYnuILeES/AjMH5AWPbOZPXQPxle0mW8EwbFdTZi+JarPAcUqhRH2w+ab9Z/8/MbwwwRvvZ+ie3EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761190794; c=relaxed/simple;
	bh=/FkULO08OOi03SryPMOTEua4nMGfVKBfaQ37CBrCjTs=;
	h=To:Subject:From:Message-Id:Date; b=uCGtqs9+UTuhrApDK0omfc7lUngxI2qMRdon3yOaSBLzjRu/+ashdYTGMkIFhYHMi15I4W6I6sY1wp7yUkkutGot+oe8d51Hn4p04x8JRthofxtroyUMKTreN7AW6wTvK1cogju/maNppeOtA6VIPKZ1hBwMbnBg8fOP+HLggI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFofouzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFofouzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDFDC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761190793;
	bh=/FkULO08OOi03SryPMOTEua4nMGfVKBfaQ37CBrCjTs=;
	h=To:Subject:From:Date:From;
	b=FFofouzJB8fZrHtQIlG2PvaSP8CNRJoAS7zp9scFFseofI+t8m7LCsKB/gu0lesIk
	 +4xShF1gFaJrK7Wq0Zzb0Vct8CKPL5A4jI52iT5f86WHtwnUG80dIJeel3X8RrrzEQ
	 7KMVXSex53wqqtF/IZ4y1Z/AR0TmuxbVOhtfOUkERr5uhMNCBA6tNDbrPdezkMRkiI
	 dSB4vPkq/tLwzCfbuFLBssII6UQRPTSsczkgago6z+1/nvgbsdAeXTjTskShWQI5ob
	 ZE4q+BJjyG4XHf9AtLMpz5zDXlQotqC07aU2nHLKI+SGbqoW5MhM50eOM1qnuP4/DZ
	 N07Ymn7nKTpAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A67CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119079360.15620.10676497816811403837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27f6391afe6402b1cb0dc0abefe527c638a6e513d8dcec43eb584298947914c
Date: Thu, 23 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761190793
