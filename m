Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351BA175A62
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784769574; cv=none; b=fqSRo39Z1MkX5Mikto6S0MsVGb86rUcRFQD1vfG+EzpYWcqhY0VVwGBdb7qBDvN5quwK39G0KhHBc2DoQTKkoikDgo4gX+9iEWP/THvy0GgqiPerQFzG0zHoPMlZIhFJuzZlGmFwSoPc8SaJe9GUpR+28pcqJ8kQ0Io05lyzAwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784769574; c=relaxed/simple;
	bh=FKYm5n2FQpj7+u2gxOggbDh4HWhL9n1UU9qURg3Z8r0=;
	h=To:Subject:From:Message-Id:Date; b=DURQPpq9TeP2M/VSCDOvPwnAq96wlGFt/kmYsaCH4lhlMcS99uOprtciMQKWSwlFtUPioSShEpEpeqBoAxOhcF85CZg/om6w+MdyEMpm4Eq0ZriB3u5KgyeyUmZQBeuSR/d8UTE9O1TPjpQVmnuG1LHQvu0aY5tfnXa88yCwDC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbcrpc4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbcrpc4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10FCC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784769573;
	bh=FKYm5n2FQpj7+u2gxOggbDh4HWhL9n1UU9qURg3Z8r0=;
	h=To:Subject:From:Date:From;
	b=nbcrpc4UhwIrxTq1IBmEn9Gb9kRiW9AwLngz0g8dXV43nQQxNH/TT3QTlAL98+i5G
	 PBqY26Y7WeHiEtgs6/NqhSZ7E1bZzKkA4KpIertBTfQGSWylSvKT+wg89mmuN48uBA
	 Yvb0O/RSVXCjZgCxFHdxho9xg1A5BXNJWnzdpVN01gmNnIB3A9eUbOCzXODaMUwAcR
	 s098O2OlvznyjjLj+WeleDOANed1k9+nG3IqSFu3e/dduzzR3piGws8ikpl8oE2tED
	 8ajPn0t7N8bHHNIpWCMgJDna+lDJtSwTpYYgMlPVEww85g80kIUVRJJkWP81EiCYfh
	 QO1ClxBjRynmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D2C44536
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178476957368.344.14120080742443175914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377ef90f08e020cb804cf23a3d7916b370aa9682b0dc705efe08f077c3284a13
Date: Thu, 23 Jul 2026 01:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784769573
