Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279951805E
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754872194; cv=none; b=eGX0xloXp3EC0Po3ulgQfN0MhLyfOE6IsRE9s6HIphmzw68KdP5OhMfEOu7TDgm5TyVtpYAYM8DPKZa7DRWZlwXTt4VuiJxVQ8+lNNMA1iCPfq1xayHUquzagHj/Ekk2P8yO54hbr2YWcRBVUrCoJfHtGlxIbd2WZfYBSmoQUQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754872194; c=relaxed/simple;
	bh=xi2HbCVHZpyzECTAufTOBo4vHZK1FrBej4cgeCgCpoA=;
	h=To:Subject:From:Message-Id:Date; b=DzrNGz08w0cfXlIf+4bXzqxJYxdFRE/eLYZkVug+ABWcDd122Ul6hSxTK33WzLmH61NFA2wbwDxKSiS5EW8HKjEE5dUmRYJd3CGCIerjT37+EuaIBTqpfQ6xxmIJ4fb7i7aAnkMEzYXIAuu1FLT4bQif9yJd9GDovAypy4dMOhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHTlqiww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHTlqiww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F8C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754872193;
	bh=xi2HbCVHZpyzECTAufTOBo4vHZK1FrBej4cgeCgCpoA=;
	h=To:Subject:From:Date:From;
	b=mHTlqiww9Mil28vrsDzMgDhW09qo4KlL29rzSsxjxiIwUxMDVLINH3R0W1U+C+cFI
	 HFbeEJWs5VhO1QSvxcCUbjYuWuZFuL1Qn3hHe6uGL9p6fT6lLMW4NOpI1DeP93dFv9
	 /+q8Z270bJ4s14tFwDDMJ5IkSPXO5k1ZSoVNi3R89nQtmqqlDHVPcXssoIZmYATX13
	 CTs6y1GUPfYztskTVNxviNsbw1aUQHV8cBcRbbJA65M7r8AZOJZVvsDX4RXEugh0yC
	 XpE2g0dzZhG2qu5ZiYlFDI6rvJ7CRIWT/f89kfrQFWptqpQrhkFt3XncpKckOAPec/
	 TTi0LdYGaTqXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BEC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487219357.19847.2899863184722748843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2fcced13d2669d67e0605bb8e16c04a845b8ecbd911fbf76f5779f66baf65d1
Date: Mon, 11 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754872193
