Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B42158DD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719945323; cv=none; b=fTYZag6H04VbDtgmYuwqluEBEGYoUE0IrTWN/hGKdVOiHVu0EPYeKrMyqmE2T9kXHsiZosmjsb0pBpUBpHnQHA5ecALaJNqkTh0bGjjEbG5BsSNGmcQphjg7P5EC9U59YGOzfxL1N5mS9EloaLW8TG5hPfbgTH7cDry0geexFkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719945323; c=relaxed/simple;
	bh=JAT6D5eLPHgRvzc0OyyG/2GK3FXDt1grCkWJP7Gbpak=;
	h=To:Subject:From:Message-Id:Date; b=t4OBVmTsk3WZCLtHGYYbRbz/mNEOX5fmY1CdwEkKmmOhmMjzd9yh2MOI0lP+LYZtyPILyX4xeTj/Q6+aiFQeRpJpcPc6UcOgm8fJbug4fqZnlGWoe4vY93Wk5CUk+vM+bg5N/jb64lHRp4KA80rCwo5FG4bYS6PkPDkHMDNB5KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBXFMty7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBXFMty7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E116BC4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719945322;
	bh=JAT6D5eLPHgRvzc0OyyG/2GK3FXDt1grCkWJP7Gbpak=;
	h=To:Subject:From:Date:From;
	b=iBXFMty7kMWpNAPVP8ALGUlH4bbSQLIclVctJFQg74ptOzM9JZGHSh06YwXKXgRJY
	 egD5NLkHXFGsNa06UtcOLMux7nUaqxWF9I6Tqe/Qq9Qn3It20qjjhSKAghA0ZT1Wn5
	 VOuXfsnJDLth19AeKqGls7xDKB0BGVH60d0UqiRoJf0AspjyXNgSCew46tIwHr5f6r
	 JCGhiaLgP+wNv5V4apsDNlxLwWeNGqLUPB4Yajs2ZqRyFbP2PF8SzDsiBmovicxF4d
	 /JSVpk0c+/C0ztp2nGoYeE+V0zPLn59K5Y3lMBbI5yiJMsUYMU/CY2de83QSB0v+CF
	 zprxMl/n0LyHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB870C3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 18:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171994532282.1279.6127521222690286960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5df894148ee9928e484efe7d59a6d3613cf824546c60668a7735df3e9f514f4
Date: Tue, 02 Jul 2024 18:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719945322
