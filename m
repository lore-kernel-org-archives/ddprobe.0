Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B291A9FB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782093394; cv=none; b=IXHzI93Xgo+nUvttophOY1cBsuM/McB5kvb021WlZlWvHz07tY7wHBNCsxf6urbB06Ig4kG43nGoZwBoCiVokWsutHgjJsVJ9l+A+viiGgY91C7PnA058WoWQ58ZOuXAXqsWE/r/jirRnIVE4N2m6xjSvoIhcKdD/h8qrv1kh0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782093394; c=relaxed/simple;
	bh=skkn87ZExQ7bswq1D8mZQZcZBtaNt6s2xifJ0PVnmZA=;
	h=To:Subject:From:Message-Id:Date; b=oyAU2HNPaXjs7KXYwQGLv8XbkxOfBIGDKq4lNmzs9f6juXphkXluPabmvvEmeVqMyrmIaTG75h6oYwdMDyplNjvPeUQI0Cxe5SynyTia46cvRYBDKIo+CRMxIpA3mO3wY4jdZaoInkZC0KNT1iI0EhFkpwjr5MiUfH1jBADecDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgUkiLE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgUkiLE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EDCC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782093393;
	bh=skkn87ZExQ7bswq1D8mZQZcZBtaNt6s2xifJ0PVnmZA=;
	h=To:Subject:From:Date:From;
	b=MgUkiLE7kVQNR06sZL/YZ6ddA7ZaVUS/a+bYmLEmiYKN+ZOpTlTnvk5iaKvSKYbZr
	 evIwigtI5rvGr/Jbk6c+kUKsL5MJ48PEuEf1h8WuzR37/qKGUHaiIE7uwM3918BbZy
	 N6WYNMLhmC7WwZxBDG+R97hjFmX+2u7v9LZoF9m7qVND8VGAtNRfnvYFxQgaiscRcB
	 yOwsdskqY+krIYF7Qo/u0QoW/uqG/dutIwW3jcCboLaoUDvIJ1O7a5+bo9cfvuXtTp
	 +d5cnoXQVNJrz4h3bdDsjGEt6PzrBn0PKxiOCwQEPV1dlCCTB7cnpfUxJJrSyjKnIN
	 kF7cRIHZD8T1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5E1CDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 01:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209339370.6983.4832159592228249589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3019f56d655a909f07d2fa1e9f21b9597f3da91c7278ca0783c7370f744b01c1
Date: Mon, 22 Jun 2026 01:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782093393
