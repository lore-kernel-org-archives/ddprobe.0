Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4353A1E0E14
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786277434; cv=none; b=Y+KLtNYl/0Eq+iUvN7lfg4cpYh69UO8hF9b+MnUHUl7RLXeHQwo7CCN0lta+qudF+lufpyLOhkPaJKmvMc9zEm1y1VPTX+sDekJfxNm7nXdzpuL9yzPbbZMFUN6ymvPhWFcVBSU4KNJLw5qt/EXz+f6D5TJPMnangRO16ObTj0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786277434; c=relaxed/simple;
	bh=fuMFgSvHFyl/cS7Yza/Gt4eC16nbMQJeu+pZnc8xw1M=;
	h=To:Subject:From:Message-Id:Date; b=rGfR4VxviIbE2qVeMspEyg/fFi0uuL6dhbQ9F9TSvS98W/wr+QDkXxrjocr2LyGM/ug3LAo/kDvvx2x1f5NnczfcwmKDqj9VhJ0YQLBOktcB0e1deFWsorXu6/ohF69ZqSlEQ+kIWa6BuRv+e4neWJaQbLpDhZL7f3bTtAivsJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ALd+dDDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ALd+dDDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41BFC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786277433;
	bh=fuMFgSvHFyl/cS7Yza/Gt4eC16nbMQJeu+pZnc8xw1M=;
	h=To:Subject:From:Date:From;
	b=ALd+dDDnuKQdkojqCFkfRfMnzqCj45qSNVJA0wFRaHnerqF9ROazckfIHtYbG5HHI
	 ooOvkgcpeEKaNqvJZxczXNbr8uFfUh35ld/Yc7djqs9GXbS548B7v+PXhczlJ/tYMb
	 PbxP+iWRgLAcEMVgHW8PhFDSMS8aipC9+2lOPxuyYg4foaz3brAKA+UcPVg/BaitDh
	 yjWiL9leyH4H0fF7OJxHeGQnR3ckMT3dFg6xvsfp25YVhgpTb6pQ81jkScOqXIEMiC
	 cTmC7BgTtgtV6/+B7F6WQckbM2GPUiC7j5Q3Vu/Soiw2NdNl0yMKd7GsfS/3nLro+t
	 gstlNS+TaD/cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1531C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178627743368.27618.16361727511682084537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3cd1736bdc9fd9f253519a944b37fa07b24597a19818d15d29c80bc888fc2f3
Date: Sun, 09 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786277433
