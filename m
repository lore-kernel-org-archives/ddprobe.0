Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2527E42A82
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777870054; cv=none; b=azxzrsSrrE9DDiyRWRWNj+YA3uNfNjnaoiAN192peII0XbRyxHN/tlpuzVTelQKTTVVnG7lsq6Pmv2h/TkuKI+gz70CW4GRAOGLmzf9GldU7GMQ/6vL85MYdwgvpxDZAUIGVyjaAJ/YqO+ZLoqxtZ9fHQPpXjz2DMMIsrv4w1lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777870054; c=relaxed/simple;
	bh=NJdSUZ6Nf1sm7y2Hf3gWDlo0engMMI2PMQaoXk4msjY=;
	h=To:Subject:From:Message-Id:Date; b=B3bFQhZVEBn38YrvoZEQrv5sfvc7x268M4VD2yq9hmYpe6i3JBJ9MCfEaPBlsy7wCWqKP5t7ar8o+Q66JC25ix6CHZqqgQECp5P8Kz0fqcnuISEtcMRvJdgEZX7GAkvYKscARfJ3Caca87tLFcrXdNg0TC4CxcNnsmJdUkIgn1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gH3mlvPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gH3mlvPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE41AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777870053;
	bh=NJdSUZ6Nf1sm7y2Hf3gWDlo0engMMI2PMQaoXk4msjY=;
	h=To:Subject:From:Date:From;
	b=gH3mlvPJ6iTgmPCJh9ezggNKLCC9izSejJllfTAQpLQhAoZbKa8tGoneVC5B7nVo5
	 Ri44QM+02e+XhBY6q5aPJ/AHYThFBmBY0er2GQjmw7Weus3N9F4UXSgTzlaFARCulL
	 E6Ybem8aFlQ7tF1/G0n/v+/WhAg6HFfnzbk7jeMj8tdyYsKOLY4kg4zzJ52aBcc4lz
	 R5EfEAvWMbgCHPr7fKsCxl7U0YNbwdE3tHsDDJjPJV2RGHA2mN9u5spBJVwtkxOfwe
	 DlJHJd13xX+i/h47q1jRiXXDg8Cq/rIvqgHby4HF9Q5bs3d+da0257a81eXCcazasR
	 83RiBXnL4l88w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC51DFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787005368.18100.4538185673763630040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a380485d1ce0ffb77021164b5d742cb6c5b12e137ce0546abd6f298d7ebfe6f
Date: Mon, 04 May 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777870053
