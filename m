Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C14C33EA
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 18:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740938934; cv=none; b=s7+grSl1shNIke2b+gHH85R0FSCnsz2K0weCjWTVaeJmYwiZtuYvnGJHLr/wT5qpjg90gSk+uBLPhCTAJSOmzki5RqoO0vkHs2HwgkyECkCgC+VYYBJb7B9ZyPVT2n4tEi2z9i5kVJFa/BRrZK409r+hEAm/giLuJEPt5dYT7xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740938934; c=relaxed/simple;
	bh=abDBVvVIY+mEZhG68H7Q6bMGTY3uzMjz1wTg7xZqTm4=;
	h=To:Subject:From:Message-Id:Date; b=QPVjNULdXMqudlsF8pvJ+59n5mLG32z0wztCQMMFhRcwWEsq0/qe0ZVrypQGh8UCR7tiXaWOkgsmpwDVdMFTxTLZRuyCtf9kfZOngCGGdSOIwEWCSTNusUsdj3RuHqnlMiFMAvVDGJSZaoR4notFDUCKXnwgafjF53RrYra5ca4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umoedE6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umoedE6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5406C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 18:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740938933;
	bh=abDBVvVIY+mEZhG68H7Q6bMGTY3uzMjz1wTg7xZqTm4=;
	h=To:Subject:From:Date:From;
	b=umoedE6nfMbvpkRAZ3iLF1J7Wa1uTKxycMh60koOpZN0guUQ+wRCVAnR+EPmkTClo
	 rNCtJfyWTe93O4DzFOapmoeCc+pNbxvHLZQj2WTkLo8k4CIjnMkGgebestQ+ccmnxF
	 EmtV1uKuMQoPJkZph1wYLeqH8gmLIRhyVVC1u0YcejY/taYQhn1EebRdc7VHw/edoV
	 ZTnS5qNkFMIiP+kTWn3Y/lIRfwuTlqNdscj619Yny1JSZDB7zjJLhEOlYFSOgeBrNy
	 ZY90ZXNwWYdCkFTvsbsRT/sQwrI2lUCjRYsoelYbsFmzFPJZj+b/bcK+Mk/Y6eh9xx
	 KXZvwxNWup7MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C521C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 18:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174093893360.32725.9531887000873266286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258bd09acec30bcb06f4c371cf69f76c4a6f3401629969d53d1d548509be1d1e
Date: Sun, 02 Mar 2025 18:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740938933
