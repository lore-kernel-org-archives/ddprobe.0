Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349DB245008
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775941054; cv=none; b=iIBJjSfLKYbu9CW7JD/QRhNPL3LI0jmGfHDOuazOwR3WBeSEga5ETRda/C2wlfgmjheRx1D7mmND9rCowgl4L8Qsj4QqSSJ536NguGCGqSCoXLKD00KMLblUxJ0JLgjpzKyc6KgNTEaDapPujSEcjkn2lum4mxj2srV5q1GoiQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775941054; c=relaxed/simple;
	bh=uOCGq8h1bKYBiLXbVVKkkcw3bEhKvPUTibqEk0ML/B4=;
	h=To:Subject:From:Message-Id:Date; b=rDB9jr9NQBctzVH02vo02mPhrE+sTDi+tIncKpVRnmJ9wfvX4uPwthQbzv7AMObLfB31Ezd1iVYQYcyMettiwEX+Ktkb58n3dFb+GUmrYhoVeqPy5LvDc0SZKsINNlP80AzhlKlJ7TFUrVDlgbbS6hBtvMMdy2eneWMR0SQHTmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgkXVFdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgkXVFdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC983C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775941053;
	bh=uOCGq8h1bKYBiLXbVVKkkcw3bEhKvPUTibqEk0ML/B4=;
	h=To:Subject:From:Date:From;
	b=pgkXVFdc3IbHQOioMVJXtZpKZZrUZxRff76rLMNzrdBHJzcBhgXSzR4jCw/HnupMP
	 qR+JZjKUyjGZbsK+2gNcGefOycnojFIUecdCMFPaHUXaUG0LHphiYl1k7ZwL6E7B8t
	 cH9dFhW+GeL5d/dayliRW6ASqbGGBi26Vnb1MTfIn3sXyiMjrcujyjHHe7uIj5pRku
	 5cPB1/3+T76zcIsgm3aYsTsHPMFZneaUxQMdB11pU1tSvaV+l0DPagSo7mtWfaOOo8
	 tN/LzG05zAySTqvv1JJnOVsbOyb0MYLVJphLHwSjST3LoaoJA2e1AvsAkANQqPOzLX
	 cOJ57FLOPiEiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCC7F3ED67
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177594105368.1803.7691772688215910953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7498652b47d37fff6853a14b4f35a6e6daeabf1b6f277a05dcd39151ad4f67a8
Date: Sat, 11 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775941053
