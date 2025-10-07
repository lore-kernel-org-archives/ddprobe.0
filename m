Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B7C23C513
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759872594; cv=none; b=n0TwIlVyk8rOpq1GE993OzD9ysph0cjT6giiZeZNVubwLRdzeAtAGFlN5NvrPP/n9Ebkj7mvoOHHr8n+bN9UNJzeeYeBf5aYg48+VgslchtKDgFAnKLCMENt/0zKwyYoawyaTImPvOR5Qm6eNtrmGKeOz4Pa01h1FOQEeVKtT+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759872594; c=relaxed/simple;
	bh=xAwWQ2U111/RhwHMYzIERLBw/QgGCyRuURmTdiGWI64=;
	h=To:Subject:From:Message-Id:Date; b=GXaSSWL6Zp9o23rYDoYiMvap3fojdAugTX3pgULkiBZzseeDZ39zyKw2zqaQUcZqXn+COF4dG+v3P2l1td2lM5Rt+qyne/e4w0xb/BMbz8J7StSV7sD01xEU+Rmf/cmy+aZ+yhvY0NmU4Rdu9uI+/NM4i9SRsqyc5OeSrUX4uGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5WJSiM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5WJSiM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A189FC4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759872593;
	bh=xAwWQ2U111/RhwHMYzIERLBw/QgGCyRuURmTdiGWI64=;
	h=To:Subject:From:Date:From;
	b=Z5WJSiM0LDl8+MziacgIyZWMDI9gpnVudjKsJAspma+9KGnYn4fmiaXDLK15vhRML
	 K+NxeXr19/Y1J+KSaTD3PHJOGv9KnavFQQ9grv7YvUSYDuZPwLm4jZqCSUEOaOGx6H
	 vtMh62Bg4ONAjWhZVx6MXYO6UlExUfYUhLEeqZOGpmocCU0JV4Dqm0WqvwXn4xcf5t
	 57bLxTaHxu7bB/KY+NJ5HtT6miv2GmmEMq0euomZuXrAF+5j48tBHsScce4trZsVvO
	 JcQC+pFJFMcauZHb09yWKvao8WLbsOjHDTSenDEHn8QX6q3lKkK7ZsU7l9zUCDoJDd
	 sgE82Vi/GUUrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BCCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987259358.7509.15955534169647213410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0231b3b7e66422ff1fcb7fb4d8aaf4503ce7eeb6c3fbc60005a0deb2d24906df
Date: Tue, 07 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759872593
