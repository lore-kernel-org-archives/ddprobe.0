Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5BD4502F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775622934; cv=none; b=tbx//XVZ9N7oYsJKPVWfgmKyjX6ch1jKxCtGEaPM/vVvcRgGSPc48fM2kzCQePn2Vfb7sCvN3/2egMgiP+VMFUI0Yl4f0shy41t4CZW/s2BcUdAYWvdBvL4RibzSWVXa8bsPVWQvqyspSBw58Vri5xeqcqVe13o/Ph188G3belk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775622934; c=relaxed/simple;
	bh=gC4GlhV5Yqyu22wW+sjtoeQJGRP4uJ2PbdymMVaeTak=;
	h=To:Subject:From:Message-Id:Date; b=dYQZ3Ny3WmTtsYlRpl6aRTNY/nECzSX3v2mru1aKD+iQidxaDRO3I9mJm+CoNGdOQzYesrRzMbl75BLPJ9zuvLySMj4RfABqG+x+0mgTAGv2tgx6Xg73vMgAFYaGRFdhnGCY67AI02XnExxzrlIk6xx+MIXdtkBi6g/E3MjY5H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwQas6bB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwQas6bB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 486FDC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775622934;
	bh=gC4GlhV5Yqyu22wW+sjtoeQJGRP4uJ2PbdymMVaeTak=;
	h=To:Subject:From:Date:From;
	b=LwQas6bBArLWSke2J0IioE/O0i5vdTmc1VWWJAP+LnXkP6XbtmTeHjLgEch0SU7fh
	 uiNcCxHXftWajXxQJraVQtNbyzb9ufUUvNkbn6R+na78zjtSgk8GUfc3ZH1c6AwPfx
	 t6EoyKPwwNgrMfb6UmuO00BKp8j85qOKtF1SAcZmoigA1DpWZkbs5ja/+HKZ/XGT87
	 /UzOquFgN6NFGjyCsXu3SDSVIlVE3SaknQxu0f/EQDGmps/KlBLmPAP+4S4PbLjdgj
	 sMApxBM5exkuAt9QU85NJV9dpftDdgd95VGtrvPVei9x46+hA06/YHk/vf62E5H1Mn
	 Q/vjuHjBTKlQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDBB7FD5F70
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 04:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562293386.5610.6752095783850246865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b46389f0c86b482c936494479f7d80830461c6ccd0a56ea98f89de1ab915bd
Date: Wed, 08 Apr 2026 04:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775622933
