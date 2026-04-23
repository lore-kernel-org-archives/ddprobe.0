Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4A32FC00D
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776952654; cv=none; b=CUre5kadpDopXSKW/RzbC/Dz93KGXdPkiAh5UUKhMuhajHCabU0yC1qe/C9nIE9h7Ae78qmlW+nLoGvvNhkf8s9yz0WHDvjxlMAbiUEiFlYzvSwNiBl8+1OEFGBaFj141iK6CJJzP6XHXR3ACtBZU6BZvGdzwO/jEPxMpm4h8UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776952654; c=relaxed/simple;
	bh=ADc0Zi/tz6FClF3bmY1RcSZNm01knsl4bgUdqJVSZ2Q=;
	h=To:Subject:From:Message-Id:Date; b=f83wosIovf9Zj+SHR2MVpSCNDVoItOridjAFSU6p75sQ9RlBLAwUulLcSkxJwaJdyV39TlCytCRwe6hQ8acRJTDJnedlpND+U72YaCGv5MExY0KDR66kIdgaoJkJUPV7FsYVTOni0nIA70B7i+Ol2hwRjaczru59QADy9iTtJP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4op1pmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4op1pmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0BBC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776952653;
	bh=ADc0Zi/tz6FClF3bmY1RcSZNm01knsl4bgUdqJVSZ2Q=;
	h=To:Subject:From:Date:From;
	b=f4op1pmS4UERiFVkGNIzru7ODIpeX7Lg+yNIWwrhyIgQjHbWPUSmbj4B1sBNY9mPM
	 1h/UcObyuLE5L+RScTYyskVZE7th2yDkQ/thCWuumn9ZwNDpzyHI6uMA1yfo2xNvqD
	 sTX+zHeVKTRmv8kJa5qRDLM8R04BuelJyaMMPIUAdfJ9XEOlMncsa+zLhLd/CoXyj4
	 Myt7p7l7A2qaCgrjcPqMOatZbS5lOXZsDJAtszDAfisGhV4CUKP+UjTvGsee9MuaBf
	 xOPaBVv9tm5ocILcAkgG2Svsngr7c72n2yIii7vxIK/DipIj9cc7HmEMGffte/AHJj
	 ttaNeQOWZbc1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB37BF589DC
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695265369.17675.11512630389235973147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134f014bf7a8b8fa3960dac6344b268ca0ba92bcac8b80bac595778e40107d33
Date: Thu, 23 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776952653
