Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FE73019A4
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770636834; cv=none; b=Lhj9C3KjRMP7AaM2PwXTAMldIWdOK2dhp2CuITvi25S6teVBwBqcdRHOmYzlvLSh/tv8Nc6c+Mp3ftpktrw1FmCXY6bvZHX0mdF4c+ABg+4IblFjVfIBYklx87Hl3jNq+UdCX6leooGdqztpxlDpM3bbdUbQw/7Nb3M50/PZOBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770636834; c=relaxed/simple;
	bh=rliWDiTsKqyNyjph9gV0g5GIW0r8WuaEfcZy4diTlZI=;
	h=To:Subject:From:Message-Id:Date; b=AlTjxQ4+2Q5yj35k3XBt/DCmkvZNklJBsNvez04RVIORJzJ7DbNB+sXccvUuHs2PFS0ndhICDLN9F8Yz9XiDK3w9y1vDl1p0evgsTukBBSHH943SuHkb7MAFwwxfnTNiAd2bu7bASx0fxhSkOhqhHsnzg/XPr9dGcmCI0njtJfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CapdqGIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CapdqGIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5492C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770636833;
	bh=rliWDiTsKqyNyjph9gV0g5GIW0r8WuaEfcZy4diTlZI=;
	h=To:Subject:From:Date:From;
	b=CapdqGITIYRRzDDSTp51YRjWhRtHswnyg8NCmDOpIn4hpOGPkanjZXicDOkxnl7Ja
	 m6va8T4jgPJjqgiFyUkY/dOPJrS41mR+XqSrotZRIFxGDZp5O9wTmzr9PEgACSZCTk
	 T16XoQ8PMwtHrpFXpCwKNiPkaJqBBxSD3cBDxHCklcjCrxnJb4eFmcVLWezHYjAczM
	 A2xDAlamuZC7nuaVK/wbyd5gYEo0Y0XphXa5lo7AtJ8GTOGN4yHMZKmh8g8/de3Ocj
	 Y3xSZ5XKAMko87ks0ObkmdxLtnGEDOffmla9MVsPmRzizTSxpq9qURi99oKMoYmglI
	 PMgj4n2ISPGKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BB0E7E0CE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063683363.2200.16512328610731193105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede623f18aae0f597890f1dfb1121a08f28724c6aaa68d2adea04597081f8668
Date: Mon, 09 Feb 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770636833
