Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C553126CC
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762245594; cv=none; b=VwQDt2iaUwMGff7f8H1Rw/3ZwWEi9cl9VenYSp/jwdhPiTrQdMr4fmxikcsY18avTvzTnBs33sPsK/m3BN0ydnKVfkJrQwLeEoTMeyobWoOhsed0zrbBtKy6wfpdAm3MMtV317CAM+VOQH9EEtzUqqlNcUHtTgcna6d5Hq1WxjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762245594; c=relaxed/simple;
	bh=MzZxM4+Eo3gwrwmKzqFNTEiuHHIgow75vz1WrJO+E9I=;
	h=To:Subject:From:Message-Id:Date; b=j2acvdvC5b+zplp/BBVPAXIUgY+tNc6C52YOtEV6sPxj54yaJLyWTkp2rgnGvMJFbT8CYKvOjR+eL1KKtWictrL97HhP7NKGv5ZYzcQiXeZ9mpfHdGveduBfaDX/IrEuUGv6VSikVxc2BqgrxMiWfaglOL+CQk5MQhh+qohHYAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFvUj/Mm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFvUj/Mm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5405C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762245593;
	bh=MzZxM4+Eo3gwrwmKzqFNTEiuHHIgow75vz1WrJO+E9I=;
	h=To:Subject:From:Date:From;
	b=jFvUj/MmwaJ6pM8QxtM33kkSK47OnB960JoE+Mib/9i89wvP2M4MkQBYAmDaLgffb
	 pny/lUZ8D7tz+y7nOOURq4DgYSe61ciZdySHc3nvPyXfR/8KgE6ogpI+dPasFaEhbL
	 qGuv4n19Imi31+OxtGsd0dyrihyALtWm4gsFq0+5DNJY7Za/P8f3UpPLRiqNanS30N
	 VBDT7P9ckQEjDyqwWjs+hJjBIlBRjbzTzXVDf0AhUqrt/gx2m8Oj4Nuu2K2+IYXd9U
	 UD+Het56rPpTXXiDec8V9hjGLgvRwQSVbkEVbSORO02NYpkp2mUq5ES23bbmEaxt7u
	 o7qIfpcQ3mw+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C26CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224559359.13311.12772883473192622476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36aa9b37bae104196ea63f3552ca383a0d2a1e21571c28f744a01e8355548aa
Date: Tue, 04 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762245593
