Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D628274651
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754773194; cv=none; b=YewG2sYytF7JB70K3UpvBiZ6Q0h9Y/kjs/rCUyXu8DmynUR6/ez+NyYlII858IwQcMvF9fuAbXqZzLA+fcFF62joOO/Pium8RixuDRWht5dJWuxYuBWHihtpoB/j4G8Ynvz8pcifQCzeBDBlMJ/O4uiEy3I0Bh+pY5XZTp8us4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754773194; c=relaxed/simple;
	bh=H4ts4sd8wkWV2G2K8ub52DQZwuuaL65+MDjiOCvh+Ec=;
	h=To:Subject:From:Message-Id:Date; b=uagVlXUMmQ2offtggpCHlVZyGX5TkUkxPhVAGq6lbRJriUVf4gZgo4BS/ZvJtBPdJw4T1klUvz7XCpVmQ+vVx7JSU4SEfpxteNvDHpiJZ52hEGezZcAEWv7sS2k2vL61qhWYZEU0CinFvqBW2YQCpvLF35fLVZBDAQ1LIOwdsk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXRzmyvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXRzmyvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D351C4CEF6
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754773193;
	bh=H4ts4sd8wkWV2G2K8ub52DQZwuuaL65+MDjiOCvh+Ec=;
	h=To:Subject:From:Date:From;
	b=pXRzmyvuGPIPjy+HNFCkW/xEksMc1if1JsLH05BDm4sLTnXkNQWV90JETCduDuoXM
	 EG3jmclH/a9FFggcZFgzzYYQhTX2Hb02V3wTVEv0O6RMsZgtAJCjOwca4C5MEfOAJM
	 mk8Q1nT3nCBv5BC6VHWM4z6xlivbWjMf0Mvvwrd+l/4tj5vTCol7fanU5UWthD3rXF
	 jnxSQs6oz9zkznf7UZafJvEJ0IRSu8gqgFjYhPMCFPugKVyWMXrEkJElH29GJvuDZ1
	 L510fLaPTqSW8MWlrOLzhdkNMUqqAg4FzHlam0HcGeraUdthqlNdjgLYUP7Cpd1X2J
	 tF+Nf8wHFOtSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E49BC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477319357.31529.11856270148008912521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2bdb7b048acd6afda4cb6c346e903bcacef120cba63324934b75e86f473c382
Date: Sat, 09 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754773193
