Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5DF16A395
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788577834; cv=none; b=p1cXWW9xB8JO6LE3qd9dwDPEoNEkvaWgNpEOd37iiFD2dxHLZVzOTmZ6w6XHF1upJpvAjAdyArJyZiudpf0CWe5qKXwBGZf/01xi1rd4Ja3GHMfrDOANAHviiDIdMJoKliBuHoVx6qnAQ5LPSYmXsDrVPx4rL8YwDyLSDO4GxEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788577834; c=relaxed/simple;
	bh=9Yf9+T27ertXAnxLe9lWesm3Hu5QsBoaorPJgwBH5tU=;
	h=To:Subject:From:Message-Id:Date; b=iGxTCVtTbbdQp6x4RP1i07Uxbg2nc7RRp6jNgOJf2QEbAKdhQW5WRO3PkB6Mav1FiIikofSuGhEPecRsHV25kc/0mTREGbrd2fJRCrQSZyoeU058/jRZynIUsIKt1bGp803rAeag7vHlFhNF+qOn0cTmx9+aYqZnCp8YS01YpLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uda6380J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uda6380J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38BBC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788577833;
	bh=9Yf9+T27ertXAnxLe9lWesm3Hu5QsBoaorPJgwBH5tU=;
	h=To:Subject:From:Date:From;
	b=Uda6380JN+v8GZny/1WOBo1ph5dagPs2pNIe7UlceDy29GQEgojbltzcYrQ2XByIn
	 aE2clASEEF3uNq6u2U/iY4H5zeaSaYEJFtIWVSqV2xOaCLxMLisN36sbNEVHnCCWsa
	 HEkn5dWUPVYaehXucYq+IlTTO78XMtee43XJhzBZEjvS7ujNAoBjt2hKMTiHhaa94H
	 SYAElq8Uc6/vIHf/iweZj79xLzmekcblV1XEqz8ARoI8tmUdmSIoGeVXcrmy4G46dx
	 TUFGWvGcH+OGsKG3QdiNSHzFecTbPhW84EWWkgapL6WTihZAeycDnJAZAPSP8NePMG
	 tSf10hfqEnfIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1154C79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857783369.5021.12518570537213266788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc967349aaf61ace49600c67874b7bd7259bcde3cbd34eab7d110fe655fe999
Date: Sat, 05 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788577833
