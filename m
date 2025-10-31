Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D48F23D28B
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761925194; cv=none; b=q79TxIsePAjQvzClI3BUNBfSiwzdOuYO2Ku+L24l3R6uzxJ7d4PJZy7Elm8On++CpPX9N1wnRvD3oCNyTuVgB5CE8j2pZKBpTf0yp7/oRk77sgqBgk3M3FE2sgWdIf/XseE7PvSBfild/PAmPvzqQ+tPrBVsOFXPBHKFeZkJHVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761925194; c=relaxed/simple;
	bh=aykNgXo1xFyvkek43qyrCsopd7dUAFkiqHrGnihqyao=;
	h=To:Subject:From:Message-Id:Date; b=bbUONQn9TiS1NXyypsRYfk2rRjy2duUjW99PuDQK15+SwFrXHhNP1CqksZIScN4w/HZIHQQuDlbmE0qacVMJOJ/AWWaKEP3NM4/l7SEFSC8s6d8RegWj6lRHSNHBNWI/8xtGZnvJKpc/CYPadtG2ps8j1wO1vFEbgoaH7yyAlyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xedx/Y8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xedx/Y8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C93C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761925193;
	bh=aykNgXo1xFyvkek43qyrCsopd7dUAFkiqHrGnihqyao=;
	h=To:Subject:From:Date:From;
	b=Xedx/Y8SACRJ7g+plUstdd6cZ/BsqDMd5mrlU9AhN9BwCc7DZ4Tz4gLpENFePMmws
	 icGgvzym8c6eeEt5ByQEbLfRYLQIEIUgd/YU/LFWZoepXGAORs72VX6lsKmOQ1T9UC
	 s0EP95WuDdc8LyA7vzu4JzS4lmQkyfBUpJEsbe3UYI664tG9E7o0OTNLD6RgiTPgKq
	 1en0282aTzUzGWoE4i7Zn5Bju+Aa95YaayUBo+SwZl+Mb5TjHHg1wXKSTzqO13ZQNZ
	 0NBDCBKIy65WCA76c5iUIBDr6Il89zFaBDqu6JhXZIenFkg6Y/0l6LdG8UsmMdd7w4
	 UUVu+FhjkWXpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFFCCF9FE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192519358.9058.1186165247428546720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ea5ffcfc494bda188c3465178a3af2934443b3a233ef806e4a87c108bc5527
Date: Fri, 31 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761925193
