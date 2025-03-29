Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCDA7482
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743208194; cv=none; b=beYiII+S9BkzKRUi6sv/ONNNhrl+PZCD2VeP8E75CRfTSXN7I/QPcwLhE+EpM0287Wa9IghCZc96PCgl4h+kZtrwtf1gbF5h8/UBewIjwGt/QGzuDp6L4Mr8XGNXaH/9j0ejmvdVSDAJRTriJNbnKnMzIQkkdQVN4IW7kuCORqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743208194; c=relaxed/simple;
	bh=uUsMNXXEVJf+a5gR2ZUwN/YlNqqjcHa3hSi2HIHjw40=;
	h=To:Subject:From:Message-Id:Date; b=MXYyL1dzcoRI0YLSDJoKrBcJXUkmZGg9A6+zEs/xzBmi7NJ7Pg9LNq2UiwnXaI1lSqiIZSV1J/IjavpEtWt5MYjzdVlOKBEIJs9L99OI9AHXWPTluSMtsbE94hm6YR09iQ6IUhBQYtjbYtH0PZwf7XLX1lEpf0FuudPE+YOU+qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApjXlQwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApjXlQwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE02BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743208193;
	bh=uUsMNXXEVJf+a5gR2ZUwN/YlNqqjcHa3hSi2HIHjw40=;
	h=To:Subject:From:Date:From;
	b=ApjXlQwiYV42tKcWkqXvPZYN0MhyX9Twe+HejTGStYr8EkRJEmic2HvMtyW4tHAwx
	 FX5+R+FtTsOV3UkCEmgXvJLPS4LnidQbh8blqJL2gXKvjRFKoadrVYv7D6f4U5hXJt
	 MSAwSAIDu7LxsvWeeoi8jTe8+TGmpwfdXyXcOSqNLpZCANisFk33KzlZlmLSmeQWbq
	 e61oECUMUNV3cYF4CJJwbi/tjseQZGH9ul1qqqdHBElZMOp+LS7EuFFMnlpztP9/l9
	 iVQRPgYu2hbrOIoQZPzKvuoFwXZ/octGOCSKmAFuFPFt2FAaIxqDtINHx0HIHDHDMy
	 UqKhmTNR8zugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7968C28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174320819365.14257.10185368529327679121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ff4fc5a9511ae1b7cb9e5c68196c809e46a493286397a2761e2fe5c0190fe5
Date: Sat, 29 Mar 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743208193
