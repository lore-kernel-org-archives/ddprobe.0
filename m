Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E742ECE9A
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760089794; cv=none; b=GqLBlYPWHiACx+2jyDPM5sAzG85PFsKEJkQOJ6GWIMNaRKEHAElpGM7fIf9CzmS50iIgWxoDSum9e/wqdbStAMqL26x5Oeg/aOQS71f2e9JtVvDdOIINK5ybD04Te27XDOzcT4LSI3G9ywKxR6LEAFnPRvV8ljD/1OvVKFH0NqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760089794; c=relaxed/simple;
	bh=OsS5pNyb/azUL8lE2JpnvxQnwrn45yBolJjcPitgAiA=;
	h=To:Subject:From:Message-Id:Date; b=iFMLVZnShzONxA5+pajBd355yKZfj/QClWZPgqjAv4exgkj96bqAUKAvEsscBaO2R/gVPHUE/IMO9neJVCBELs2LvjOOBo+WfcbvYEw7aiLMCKSTWy/NceodhBUSLQ6IVe/seC+KU71URDfNuY+TI+8unVULcLmQdF4uB6ocnyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HppFFmyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HppFFmyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4371C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760089793;
	bh=OsS5pNyb/azUL8lE2JpnvxQnwrn45yBolJjcPitgAiA=;
	h=To:Subject:From:Date:From;
	b=HppFFmyHv4aGUVM05lT59v5X0FIyn5uDhRi9wS5oLzZus9sIUSzv48Iex37UoWS1d
	 GfjlOz4ttUqHsx002erpbfX2hfO1KL+KScKjZjETg0iwSCcruqBVrzbWgMU4KrZw1Y
	 /aHHsbThZWZTK6m4SlbbTVOHUD+Fds6eRzorVi15c4xmvXA0a/MiRxhkPZTqVVqiZn
	 4GOidTcH6yZsFesb23DV8Nh/6sf42ti+dTrj8DqQc0UbEP0WJi9jysGQpAp/jsuTwu
	 4eVGnHJ1DUyE9IyXXJ3GMvw5H/4hYTOOXvv6HiSwdHqoFQznE967lE/tkWTdBTYohM
	 D04wuSTnZdqZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9443DCAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176008979359.10538.10316899303220354234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf194087a58e97a21cad58fdf91e9dc8f0a460c0410714f77b9fba22bf7cdde
Date: Fri, 10 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760089793
