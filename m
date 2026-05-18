Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2308337B014
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779076234; cv=none; b=PQUtEEceKgqA9Fz3Se9z2GKb9zMgQfeTKa0zTj9qikzJJiYEXnhQRmXMyCm5quf3XzepHvxQlFAQdSo/24nIW4zVilkZm4I88pR9lRJSnC9mfcjDsDDYIvv/dfeQejgY55GIEkom6OOIyIbXT+AnNYXCI8l0bPF2QylDj/KGbig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779076234; c=relaxed/simple;
	bh=n8cCrQbzE/dnvXYcixG84/Ih1Vi/JsE8P0rl4l+3XGA=;
	h=To:Subject:From:Message-Id:Date; b=Np8L3TE5PLUElqvfwU+4Yed06vxywqb0CzIyI1LhLsmlBSyQu2wNBeUN9sIZBt/od/OZnnwUgwdoAvS4b1aeKiHcegIJhip92XsuM4UhfXZGMaSu0UD8Sxpl8FfoyvP8bMiXTW2NwBT0A+slU4nn3B39RG+ZIUt0xuPyYtENyjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfxBDkr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfxBDkr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DB4C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779076233;
	bh=n8cCrQbzE/dnvXYcixG84/Ih1Vi/JsE8P0rl4l+3XGA=;
	h=To:Subject:From:Date:From;
	b=mfxBDkr2kdyslQzREKRuA6QtW/XVUzRU5LHur6J+ftkimoQ578peisilrMmWvQaK3
	 N2mksfJVL7Kw16dtQfXXsy+AV6luOMQk6P4jr7sggzyWnL1kF8vyf7QMvAgmcSbqRY
	 P4mFxiV6eJ0dd2MozL+3SCMj1fXZY266ePhaAQfSybT2jahd4GqqnyF5TJe/PzsP7W
	 oV9F0JeDAfgCbzhxeCqF7jZwVMWS12N+/boeISrkj0QyeqcMV4CXHqlcevWgIA7bKc
	 XRUpw6IgQnYslTKxmobCabDe7RyaYiWLt+Lzh7SMe0JRVH4PO+Q6xdd8dfqU97w1Jq
	 yP34SsfaZw9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC4FCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177907623369.5809.1424889782144115612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da72121818e87c025c5c8c8033cd69513924fcfb4ca9633e4a65962532c96b4c
Date: Mon, 18 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779076233
