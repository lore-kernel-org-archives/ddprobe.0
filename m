Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A3321D3C5
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755184794; cv=none; b=h09PfW4FcLtVeLFO9oOvYTz7xbdHavZJPTh/6nbN5ZJNzlDfO4HoFt2iYp0WUXN5XdElwCE7xPD4mtH3emLM9LcQhuId1hiGqWAxCVWVHAc7ZS1X+RF/1eT+g3MKkmYWN4E9aFhviJuAUyp0rAYhR8vHcz6/Us32nsE+ZRvrcOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755184794; c=relaxed/simple;
	bh=pcRZolqtEBjNZ+yjXJPR6GE4Cdc0YczKyMQvwu1SQdo=;
	h=To:Subject:From:Message-Id:Date; b=V3wjnlhRcgJmQIKI7HfgB34ljzY18XVs2ksi/1QA/Ty1DAZU/JoZTYLfxfjVIOpMzIAr04TPDCkGWFfEudPHg0S0ayKmRYXtM4mutLRY7cDWMczmjYsKztM8wmhdknlRSlr80KRSO5n0K52rD9NTJCqPCRfiOS5IiUbxxAJhtt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYXxug/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYXxug/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C859C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755184793;
	bh=pcRZolqtEBjNZ+yjXJPR6GE4Cdc0YczKyMQvwu1SQdo=;
	h=To:Subject:From:Date:From;
	b=EYXxug/gEkwtHaYMHJD6mKvqM9G9giNhY493eknY7FbrJGiyVS3libE9NiIOnyx0L
	 Uyop19POvsuNYrEwbr6ERdQei5vOFJRx7dxyuhsbMr3PquFYSA0N/x6WknxguF1sBx
	 ggSGeMIUlCe7rGwBRV3Ry4/2IgxbQvoceHzUeA1UahoA9U0GaNmP18aEA+a7NteDfA
	 oNX0HKWIx71IegVSV8yzCwu0YvTIKwIn5nkwu9Ah3FTYKf0JZm0jZmNQ6QJToJ5RwM
	 FzdXFk0gqZfjcykX5d7TvwEUIHDSjpW1yuYT0pga4j1msXrh2M76p1mrKxKVXqjZjd
	 HM7f9fFO2YYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F204CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518479357.29316.9103034482047183162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45eb70c50901624f7cc604a83bffe05c798dafb3e5473a212566d0e0b6f36b62
Date: Thu, 14 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755184793
