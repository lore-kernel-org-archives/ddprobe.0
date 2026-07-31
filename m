Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F40F2222AC
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785527434; cv=none; b=dAv4wdf1EMLsLo+Xn+Yvxa/h814UXifHBpqREPwIvtK57rtIhwRZEEQpxCURXt+dNjxkFrh/CxG/86lJdVqxczV3iDu3qsnzO4k/kGYCwFSyY8peAQyatRKAh78W110HkGwee/ZXT3b5mKpNDtzfwFDgnl/1OiB083qxvtJxeNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785527434; c=relaxed/simple;
	bh=KJGhSyY89FF1O911ovWEatHZWL0/jIHr4ao87GHX/mw=;
	h=To:Subject:From:Message-Id:Date; b=S0vcr6ycSu/budEFFb5S5oUw7UEGAd803OV8WFa5vUJhD8QEo8vmZ77uNkiweD0qWSuzNtZNMkYXnYIbf4wpB1Q56nnXkxIBe6G/eTewv3wSRQQNdrMtl8MhVZtlcMkTDg8Se6Qop9D3FFbD8QlihvM5hbE6/my41VDRE1UEoY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b1OGAn9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1OGAn9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CEAC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785527433;
	bh=KJGhSyY89FF1O911ovWEatHZWL0/jIHr4ao87GHX/mw=;
	h=To:Subject:From:Date:From;
	b=b1OGAn9rZgs8TJ7Wrw0lwRpCtDd+1F8j0OT3DJow5o+E+YJwk9HBYn2RkW8lqoo4A
	 wexJMj/MOBGH5ZD7SYiNspp92/LNL2D+bNP1ixAODS9emHylSmaDgSTSocxEU67nkw
	 pq91qM55iiKgQCzCH9fGyaKYckIGLsxVppxelE9tChk8iycSVBccKAE5FUvVDqXkBJ
	 huAK4lQMhyyGi4BEmIErPT6yuEBNsV7kncjyyTe99Z81TVgKrSZlutmRMbA3udEfxX
	 fOo0obO8FlUTsoYLIprYamQZMuPTtJOdRr9iib81KNAYE6RkAcWCgv/tETiV3B0gJV
	 ZQt0ztCm5CW6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0624C55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552743368.7624.9682914794361980932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64cbef54f87a583d3121aad98782b16487ae24fa993031e7ad5cce72cf1e0376
Date: Fri, 31 Jul 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785527433
