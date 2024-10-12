Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D331946B
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728765354; cv=none; b=A/xECfIjS6acCXzZYzEHUDyW+EKlB4q0g1LRA2Y4Fz7SiV+lYMj3McekOjsbsdG+Hw72k1PDnhd69Uttaa20yq5K7sV5fKoEx+K5u1P869wj9ed2ZXm7/R6BZMLHYbk8y2bIblwFXm9txrghI+HiZprDwwS1FMvcUSAQlU6sK9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728765354; c=relaxed/simple;
	bh=CEMX5B7Z0GRg0w0qBz6s209x4BA53g9fv16cP6RTw8c=;
	h=To:Subject:From:Message-Id:Date; b=E7e9R3MEN1K4FyIqB8NAIPnq9b//xgMqRJ5pE0FIbqnV4iVfjFIl0d3RKY/erlqe/9PsynyCUhzrBtzbAS3euz5gTpPeIJuJocUV6GQd6HRfwDsWkUR9dBkRgnrtRLD2NaT0hLCNGsfjxUJjWpz30hMQdNCYIzXPuzcUIncFq+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5vGdYz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5vGdYz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B11C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728765353;
	bh=CEMX5B7Z0GRg0w0qBz6s209x4BA53g9fv16cP6RTw8c=;
	h=To:Subject:From:Date:From;
	b=c5vGdYz8S0RdZKilQnaMRaKrD8NcQkKo+kk8/4kdeBJ99Vwrj64jp9FEQByP4aAe4
	 2jaAiK3ZmDtWbtDDxwFqRCNZsGZWp+mV5eni+tNiWDm0F0CWPMDn+aKqlGv/KIH1cF
	 2l89iigom/r2wTtEziZAwMFTqyuY1lCwBZ+NVSe3X/bPE7fipe4Vz5qvoa8Yvvzqts
	 FrSIw1HveUVwQOvggIoOoIlwRSQ9Ob6z6zW7pxhbjc46s6w4gqZqS0jCukCw2oKmEQ
	 nKqJlz69S923vruaOJyStzAL/2dbM1L8ag5ABSuUZ4wtYCsZvKr2ulR0tDumFo21/8
	 UEQA6iLaC0DHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFBCCF257E
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172876535362.20787.4646548326691044279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79760b5927f870bb31e4da7a87999ff5d67e1755564d4aedb92ddf8c21f67f44
Date: Sat, 12 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728765353
