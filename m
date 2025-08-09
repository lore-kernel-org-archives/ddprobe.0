Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466C113B5AE
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754725794; cv=none; b=eXQdaqhrU+U6vMrMRpISKf6SBxsR6n2plcurfrbCXXe62zTkwIiMTzPWWfQD69gIXe8GWzJn3uXNAFTpO13qrt7HQbL+e/gwqKpcnhXzsI7HOn3idfZudHAUcqiVPdVsQtnajs1aG3C+Yc+Y4/FkQYYUnRwiisocc6V+EbmDuCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754725794; c=relaxed/simple;
	bh=BVgqewEEJi1VJSGGpPHqZ70OS0UuR4GBxI56kzBRgs0=;
	h=To:Subject:From:Message-Id:Date; b=PBGhIx6PF1ceMFniaN+9NO2nQZqhVp4sFAaXN2v8ylVtLgq0eL4s7qHQFCLCCCW4LxRh7eCgtgqgu/Xe1HiBFEY9X4OHmh+7rmjv42xkqmygxVefigY+Wzru8vWOkRaHkdb3akzzlu50T65DsGximpQmmKWKA8GJdKg2urnUzfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YaGmYe29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YaGmYe29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB8DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754725793;
	bh=BVgqewEEJi1VJSGGpPHqZ70OS0UuR4GBxI56kzBRgs0=;
	h=To:Subject:From:Date:From;
	b=YaGmYe29hBLUIiVuCjxoBxz94xySbu7qd0IYMcqrpe7gCeNYsutnRWl+/5t5p3A7c
	 bG95qR0inyqxRD8gWYjR+Ob2UK7bT5hvxl2/xtN90wuBXHU1mc9bBEkINtiAkCqhQ0
	 MQ+voAa79CYcMZAN6GVZEwBuHWd+2kAF8r33L449rQaFhfdyv0wSLOxeMHlFv+5pIz
	 sq//Jlul6vpMQ5QMLjH1878flNNlWyL/Ekcsw5KDfWJGN7q3o7uxGqEYFB0NuVEuPH
	 zvv9T4QdzXOwQea7Vz56pSUiz7WXxIisQ+2qk9FgrWCTfZrilZxt3tW36r4XSYRJjx
	 Qo/GApWn/wolA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E64C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472579357.27283.12897833198792740940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c68a0584187acce3b1708fff92b3bf5d3281d1144fa0d60781909a488db8ba8
Date: Sat, 09 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754725793
