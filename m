Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C861FDA
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765504974; cv=none; b=As//qEwbdWDP78xvTFQJ/8xj6eZEjwPVIItg2otCqNekg6rqwDtUMYA7o9lkmJ2hKLfLuUFetO6wEpCkd0hTZrU6s++1NWObWtgUEdAR84GAjfGajB6jpQKh7zCdMxahg7Vlqsmw6uVCPj3x4eH/pNPqTd9jbTmMZC+TS4mzwEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765504974; c=relaxed/simple;
	bh=Vn4rGOzY9gZgcYhcjK1BvTLqe6KO82JuEfq0o8cr9Zc=;
	h=To:Subject:From:Message-Id:Date; b=oZ7jq/XzebzgKro8Vwolm/ntqlenDPV42kXo0hgRCXrpDG1xw61/oAAFuFYnwgN2jcwqgaWMVfy2S6Vg32tbOwBTDDprxetr9dfAAhGk5PkVZvguiSrYK3reg0uxQP72c65MAWHfuf4YngToONMcOTQUgwkVIbGAPKTisi3FYDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLQnkRto; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLQnkRto"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1130C113D0
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765504973;
	bh=Vn4rGOzY9gZgcYhcjK1BvTLqe6KO82JuEfq0o8cr9Zc=;
	h=To:Subject:From:Date:From;
	b=QLQnkRtoF+NZvwjbf7TOj0HWWqx3Vveh51iATgpi3gJoB4tewIQJekiMOhFnE/2xo
	 DFlc3W4u8v5Yd48RWxBp9y8hn+bEpGHq+ttdxjCaOUMpfa3QN+cJsQWPAMrXKOxPgk
	 w07J6ttgo4ZRIZQfe0sVk9O00hdcEWLgdyQMLLtWEN6YmSdCWRAuJjQblE/m6a33Ia
	 zfggmNJnuU0klnhzyhllwEwNt7wA0/b5m19UvCnkyWxMKlYr7wp6qInnPn/aeVehC9
	 zKw7wzQvqAT1dhgDJwBDYVxQJ0M8V5SZuqdB2mhbcDFOTPRkCH9yzg5Nwq8ffk5xbc
	 /HNLABACWl0eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE17D4335B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176550497363.11593.7860187259092877207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4280904e01622ec9f1ac586c1e267a89aa72476f11fe1af9409b73fae4d1ebfc
Date: Fri, 12 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765504973
