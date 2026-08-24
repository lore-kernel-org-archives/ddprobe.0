Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDC740DB53
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787572234; cv=none; b=P6Z3zMF4s86h6xbVSNv1tfKyxnmKkghirSifWSqJgbCqgwUgFztg/u7OFzXRr+a2/+2U3mu9PK5MDe3lpJw9Rc3XeUjdrb7pMp33ngpvKPXkgwA0TEsh2g4p9n0q0ca4uObs2zJVXOI9cdhPz6T/ic5tMIeDw+BWmYA38n8bS98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787572234; c=relaxed/simple;
	bh=x179fsQauwbswDHLqLv9G7+78f7wIaR+qK0nCvHZlbk=;
	h=To:Subject:From:Message-Id:Date; b=iiER4ktONLMnXRKJ4OGK3kzx5rFE1FlIe4tewxtqKHymKPf19f8GHCt28eOTAN1NYPbF3HFvKNp7cO237AxcHbb3L+C7sWZHIOgNczU3191HAOKIn8y6tbxvhP+4eEaKSoh2qYb3TrM3hBdifApBKFTwwqqGRPatujZYHk/pvYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5UGS4UZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5UGS4UZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9F3C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787572233;
	bh=x179fsQauwbswDHLqLv9G7+78f7wIaR+qK0nCvHZlbk=;
	h=To:Subject:From:Date:From;
	b=n5UGS4UZAI8tWsWPbLLYy5A9fZGgVykIaoL4bjRfS36AZ9gac2VyifbTHg/A5HFiY
	 OTxc1dyZoeB0Uyxf4KVp0KI2HiqBnjWG0NkDLSd45DcJ8ogZGIXehFEqYxP77a31R0
	 c7PWQm4m4TIYimbMe6ef6KiYu0nNhCrlIa2Qtl1D979+3/SeDIHezPfCEdVecwMnCj
	 t+C9i2TDwukDUPRh6Jt3gH5CtT5UHQO2MrxcoFdpsdw+H8lGZ/7kUucjY8bPavOzTK
	 fvHQUhKKvxvhuoMUM36m7ssh8pH/3lE7C3NwfEOyPzbsaYtu6CDN5RhZDCXpYJzaJD
	 R+9Mx8PZauhnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFCBC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757223369.12180.1347168518626508059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c26badd76eed200fc6ff243cadb9de543be782d9935be4271fcecd186466a78
Date: Mon, 24 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787572233
