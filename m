Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212C819D880
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751888394; cv=none; b=b6FOvWY/mSEqeUbJlBCKq8ifl9gqcadoc/kNNhS4EgomikA5m1ufaHBqfgLcHyAbPFGYxKqQ4OxAzD26t6ejMrQ+zRi3BkGN1nkYClbTySzfaEoeNVO3FKNTFEjVZNT4lPAKffHrJE4AMwCyKJLYv75+XShmJCdHNX2ZwYVTsIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751888394; c=relaxed/simple;
	bh=XY+jOFQV+IAeTI2Va4gKVifX6hgoS7gWnXlxyocDRPY=;
	h=To:Subject:From:Message-Id:Date; b=nO9jMiuxg4NZmLzaLxwNi4K+aDeVAssLhUF76LzFftBHKMy/C54LoU6lkGf8yJw0c2iqSc6kNo9b++oKf++6RYkDLVql859MWFkI+PpgHOQmNirqLYf6rMGcQ+Z6W2UPRunwQh7QHYDoQU81UGH4dm5x2ExTInmW0QkBAkQQEX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHmNCDFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHmNCDFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D97EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751888393;
	bh=XY+jOFQV+IAeTI2Va4gKVifX6hgoS7gWnXlxyocDRPY=;
	h=To:Subject:From:Date:From;
	b=fHmNCDFn1ycVVLC9Iwx4xVlYj46I+Np8gYdvlqKuBV01irlUK/Xpzs8hpcDDrNl4z
	 4P09CHoHbKSzlJgSF3HgNIjhMC6gH+HjkH5mJjz4ScrDTU6lvlYCrL3hODsN3a1ByU
	 5L7SkPBe1eycEo9NRGgo9UJDiavI0h1RE9QOU6/RHo9DdyKYLU62GtpTu5cJYc9yFH
	 vJkLYF+Bd84ogFbb6x4kyEeimJmBs0u82l27iESV1msgi/mnMfmu1URt8EPEdIDhG0
	 jinkmJ8eL45vkJ55YSEbgIMsokTrWXjLBqgrmyoppCVfgHHZKjxtSB4Z8iPPesNa1o
	 s2FtCQYJbke+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F6C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188839357.27994.18151980339143637615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0501badb673f2d0a4f84007edfd64e7b5f27d7f50e4abaf09981f754b411f625
Date: Mon, 07 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751888393
