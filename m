Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5955E158A25
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714767743; cv=none; b=C4g0xF4niSrz/Hug6jTOvy6tG7IYtFdzKcNuDuIJ25JBnOY5wADaiicP7pGum735lxlKaxjRXmS5CO/njrUivdZMb96utgO95fCDY/GgLoYEG7i+37bEoL+7mZubqAjSPqbwyr9kAWxnydHjn2qUKCsN6ywjF38VhptBVwl+6Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714767743; c=relaxed/simple;
	bh=D01BuB4fEk6TGSJwrnzWJiouiuks9YxhUJ9sxa53j84=;
	h=To:Subject:From:Message-Id:Date; b=UGFo5rDBP9cEcTWeOJqVSvzhislDG8LH5eMNqS2IUhkW4dIniyi4Ji1iIwrBN5qRrYcFjug9v/pNKS39R4NVpT2NQz7zpKsV2j6bMzl8pFREPVQQo6yjdPL/ZilM0q3LgcGzNUSA/fh5F9EuVpWVr2Cf1cXcczKQ5Dx598GQ1tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRsQxgUN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRsQxgUN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE72DC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714767742;
	bh=D01BuB4fEk6TGSJwrnzWJiouiuks9YxhUJ9sxa53j84=;
	h=To:Subject:From:Date:From;
	b=fRsQxgUNbcLmZaWwQzsnB++7Q9T+BUk14bNlmSZjqJc7Ipm04FafAdm6f2BS+cEow
	 VHjd8dA9YKYeRCFflPuGRNk7WJ+x1rKJJYoz2IUnmLSjMsA+hryoVg7jf0nSgYVf35
	 45YQ/QZn4XNp+Nkor4VjJyvYCuIfEKxTGGv2jk/gr87oxOSHu6AOOVS6E4XW4qgmcv
	 LSgH4xY+ZoC/sap5Zwr3XZZsPYixDxU1q4nxMBgddErd0E/5Q5xuICON62i6r5MdNl
	 ObobYpvimnDB/3wy4xZMs+wk3gkqaYSUGSOLhuuMUjT5oSY5CnvmEdafbZJ2K/zkwe
	 +H3obuVFc2t2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0568C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476774277.22676.1270205110676641698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c62ebeb6aa7f7375a021917e7e7af824bee27d6ccc00efb5c94cd90748df62
Date: Fri, 03 May 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714767742
