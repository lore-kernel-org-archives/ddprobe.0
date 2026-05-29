Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCC935E1C3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780049554; cv=none; b=Y+tCHzKOZGWi1p2o02I35FBJosRze7hTmRBCVGR12UvlNzyTo994oRwNDKLxC26ue6+9QTqlOYMvnuT4iRy9/rvVmQq+9rkY5XLEpw/gbib5Ikuql0nf80xlVKi0mD69Z6Ng9meu/AqNF47dSfKjgtGSrSV/OVC4nF0CA/Pox+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780049554; c=relaxed/simple;
	bh=beg0aaNrYQX1kfA8rv+tO4sx+V/pByU+GLF2T+8Ot8Y=;
	h=To:Subject:From:Message-Id:Date; b=LYzGVi1nKHTiQq7cJIO4eXLM4XRAZKYDCzjdmh1Uv0ofLK1tJTRhvVjtIsiezfFMtnkVComP0rydRP4l8Tt3C5oW7qdJ/v1CThmjkYVdJSAiTCfsVVj3KTDvKts2Uos4WodRmI3orD+LeDC0+pad12XT5rv3PhuGsII51a95JHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjEInZmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjEInZmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF8BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780049553;
	bh=beg0aaNrYQX1kfA8rv+tO4sx+V/pByU+GLF2T+8Ot8Y=;
	h=To:Subject:From:Date:From;
	b=bjEInZmzs3I/jpUnnN/oeqm6E92VVtDG2fgS36rURl60QPOU6Tez1Fd9TiL5KShfR
	 P6NaFhm6E5BfvxEwv9jP698kOdS+6SX6wJ05bsLIFBasBdqzxC54ajwhVqKMoePkRO
	 fg5iQWgDxivNNvU/rEY1E97z6DbQE3B9j0Doy5kFvvKEv7HMObaRCJ5+KNac2irVXc
	 +DB0AoMxahytbmhTeygcyCx6b2XvZ0AOm8dQXIbbiYzm2e1QNqc6VZyDn2GXWZcRuU
	 03R2E3hzSxiWavnr4ettLl+wy84PO6WuWstMMr//fq4Bm1mrSNv1/Rc2Mwh2FOuJfI
	 ACiNZ/hEh2jWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2144CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004955371.19592.5694727916226164965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56750ba3977f1ceae2a3bb17974fe943de5947b850ee0077f5660d828a894ea1
Date: Fri, 29 May 2026 10:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780049553
