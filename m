Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C60013633F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737179754; cv=none; b=hYRYdVzDHDrogRtx/wtGNXRiY2a06pF+mokwvK+IhV5u2QlyjfmuMLk8dasXCaTxcO9Bi/7TQST1Tijy9N2KExCTf6pdD+EUz2t483XhE+yLsZLZIf8L7iCMKhHla7Z1DBfzRz2lhwKgXSC6qjcBpePIY/sBLIua9JD+W0NssRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737179754; c=relaxed/simple;
	bh=a1dEJUPr3TXgCXmxCwtA/Tdg3cxs9Gkzhdap6iZJm+0=;
	h=To:Subject:From:Message-Id:Date; b=SdFLrTWazNVG6gFuhqtdGNacfcToLd6wHOmZFXLNEXk9xw+QIE/Du4It5MbIDQ1PKh/RS9B+YOCIVwhfN4IMxO8SgLGCUFicsFyv7DmG+XUjpaRJRm7eD9eqW+yqlxBbtWI/GUHN15cPL9bqBv92hOet1ZpS6pBLcUjGHwDF9bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZA1I1oZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZA1I1oZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6310C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737179753;
	bh=a1dEJUPr3TXgCXmxCwtA/Tdg3cxs9Gkzhdap6iZJm+0=;
	h=To:Subject:From:Date:From;
	b=ZA1I1oZ2MeIhaNH3QJCj2Qxz6xFx35gbf7gebPJmGJhrRmrOhU1HWOlDKhwSTa8I4
	 oyh6EehQ7pnJfDgTDeG5Ht5EtiB7woCSIQIHpeGsVz4bgrTMAMOueH7Ktm41Ym/JiI
	 ouv1Cc7CPWRXiF5guxCMgKjQp9XFkMqScCIDQxqyPhGzolyg7BPH8MSDtWRAMH49UX
	 7UJrQ64VkvPgAy4iLXxuv6M/IgK8CLQ09EIVpepB7oVUPuRM9h+C41f964AcLRNupd
	 cKQMl9I0ErAxZvB49be0VjSOnZvAcWH2EjIvzA17SsAHgRFAdk103EByh72Ous74wA
	 oNYt+pWJusTcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9314BC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717975358.27144.6792872209385538070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f8799ab2847aa89675f52126242a3e1a2e989e70d5a795f6dfa0638d35862b
Date: Sat, 18 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737179753
