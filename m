Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149D528DC4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781051734; cv=none; b=TdTF/kFhI1izoNgKBkC+o/5Kl6X8bIfEA1Vu1/NRoPAtiPFqeG2wopnJFpXHVGvc9LYzd5hHOd4KbbmB3O2iIugNh0lWlyacMCXRAotyb9gpv9ohUr+iDnQyau5L0Odjcjc4ebZM6auDi7Ylt2oWCOe0nYKv5XeAbguGmtnj1LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781051734; c=relaxed/simple;
	bh=IJ+rCXBemE0v2C72pmH0IxgWFw+3XiBPG/iYdoT8Ulk=;
	h=To:Subject:From:Message-Id:Date; b=tqVWzqPW8B3v7fZPE9S/Jdw7tScq9xTSvCz9c1aVG6+TXo6cQFMwxqy0+IvrthVA09MYY+otcptyFtquD2PtEAG4k3Tri8jdbVfsdbpK5v1+24PmTHwIuuJz6AxkbVJWP//AfOQm/eB4kzNQXyG452TXjIT58uzjOL5QhzIvLAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCTatpE5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCTatpE5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ED0C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781051733;
	bh=IJ+rCXBemE0v2C72pmH0IxgWFw+3XiBPG/iYdoT8Ulk=;
	h=To:Subject:From:Date:From;
	b=CCTatpE5aeyZoViDataUIa59ZtogQzbeidTtzHUmHW/8Q/Eo4xY0QPGG0QRSmKATe
	 RzK8LUpEeERd/dyzOnK+Oqvf+/7fPfJaWL9QdThp4BomS245ociNq556VurbK15OeU
	 HFYvE19YLJLX/uP4gUFdTtKppiZzbnY4y4mgvJQU84tZ/anhVWQQ52oTGOZHxBtcSv
	 KpPZFJ/IhTUXLBmUQiRhRZMxucJp58pVwKJ5gfojVDdBt3TNtC4VqsjPZ3d50VXcmf
	 nqmK7r2yBD+k1zcj0AMJW2dZskYsrsDRXTwBbdjoPeSdf8IxZTHUMW0zg6Rt0SILMm
	 02pnA2zxuZ4bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92AACD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 00:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178105173368.20437.1782793504975299740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4a57f644ab6c7b4c9d6ed2c640d454cf27090e67e26927cf5c871b87851c2c
Date: Wed, 10 Jun 2026 00:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781051733
