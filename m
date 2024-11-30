Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4345878289
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732994754; cv=none; b=fSPL+X52liFifPepRrPJKS3EtxebBurH6tO7Kr1po+UR1Z0/rvSl05XhJKl0q+CnWBbHiJKTInp0er41iJU6oPo3c1rUX4ipPIjkIgx6stcAE6AX0RHL+Y499JRAm6WTnKR9Eo4VU2WjVAwlCq549B+quQkApWVXMOudSKTkX4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732994754; c=relaxed/simple;
	bh=+vE+EHuDoA6Zt0rWkD4NV/7ibrIkC+EKVP9ThBx8rys=;
	h=To:Subject:From:Message-Id:Date; b=kRF2v8ukiRmZcA9lb1CncK+dLrA3xBB1qlWfNeqsUaXth0TckAptCzN5NVIrgn7dHkiBs+wCOe8GMHZ0Et5p7691TbPyVaFODnRRQkaRtt3ff7rwgwTd4NBj6k5zbfeTOHD1CFHUbiDUWhtDlAUaro9JRCcy3Fcjr5IePJM2ciw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bO9puH68; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bO9puH68"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B044EC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732994753;
	bh=+vE+EHuDoA6Zt0rWkD4NV/7ibrIkC+EKVP9ThBx8rys=;
	h=To:Subject:From:Date:From;
	b=bO9puH688mj3SBD295oXfdruTl4frgU3BmM2fE+7d2uALniJoyBb07FJ9qR6F8WpV
	 HsKI6DKvFtGVarF+HrzYK5A2USfszfiyagx6+bzFObDTF6GMttXsO8y1Nn1bOX7ibi
	 RnSX45ThrkSfm+yVhVTjPfBrRKWBZMbgvQW/5o7O6mG7Q44ZWDeD2YZ14+YN6fxQJT
	 VfdCpYGZLJ0NyEGQWkxLUkxY4dpeJtwPaH3xzWYr2PAQD/sC2LGFVvyjpUvvoTQUL0
	 P5T3P+Z6ezhe9QQZFLYVjFonofj77E2yTyZ2fJRacNDTw/YFiNj1m4MUivdr2KgZOs
	 5/uppzCgfAi3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996B4D7360A
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299475359.25226.16858926257572754371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31a9afed5acfd34ba47e025e172e96f41d69dc0ab97d5888085cd8475f9b8fc
Date: Sat, 30 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732994753
