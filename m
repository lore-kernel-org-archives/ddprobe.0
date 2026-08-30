Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E804208D0
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788086434; cv=none; b=sT70enRdlkJxDBypyQ3P7BEBR5OamtnI6at4z/VU8EWCNh5mZ+XUWOM6rJUzaAEow1GNDwrCm61qK2OWt7TZPcd6qFW8A3Fgijt5uyv6WKZQLAzG3nt3SKn3Hb9ul6FxQr0KI3aQTwTyYSXIx+5E38V2J/Gm6EkCP2TxqDOMAlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788086434; c=relaxed/simple;
	bh=T9AoX1s+BBVugoubd8Kc0WiHJCftdKDZRMQSZqRKopA=;
	h=To:Subject:From:Message-Id:Date; b=lcmUHyGA30QD+PXOOC9Ii7GcVAlgeN8qnFlzOStqBkZWfD9/wsnTECZeKUOws2bxbXwt141qK1B5vHvvJr9sObi9bKKSAoFQoQ8mbtpwak3z/Q0zKpIVzBHS9QAF12msHlaMNoRxpdvD7aLL8VDZ8j/M4teqiC0nId2rY5Rcuuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNdimuIe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNdimuIe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8CBC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788086433;
	bh=T9AoX1s+BBVugoubd8Kc0WiHJCftdKDZRMQSZqRKopA=;
	h=To:Subject:From:Date:From;
	b=fNdimuIerTYL5jqoDbuCf2yiEnoaZmeDowiU96pfdVWHOHH5vAUnJAuvlFuKz91GD
	 8biOxeDSHAtr5NNaC0t+U/z7DwoZsxYHk+A6rjsJASDAXVSUismmRSm1VeRpsM3Tuv
	 Z6a+Yh3rc+G/Dva1n+FOOFoDWs7Pb0WCcAhfP8wM97nngfBMXX7ldT6bhiXRMMI+55
	 AB24DWEfAY3W5fBd3ZAslPhnl24r9G8giWbEwXkcqULqbuEGXrqXoDU/dzREjg3QdI
	 KqtIds8B/TTKsLCl69wg/1JrQYFZeyps39Qbdc9toKfqVFfffj2zo4Qn9lmeJ7qb3s
	 NWW5QMpTDePZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9126C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178808643374.8955.16582883082001398709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dc36421837afd3c6ec96f977bc6869ca4f6b4dcaece1e242a1c11dc692f84f3
Date: Sun, 30 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788086433
