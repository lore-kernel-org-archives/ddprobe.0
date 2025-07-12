Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB2E45009
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752319194; cv=none; b=AvK6YkjpAYZWK+J71HBQ5MmMH2wArcodn/n3nzE0qLwfa52phLLjx1J4l2ZgiMLPqoEEFgWL+6//qPyz6qlhwARnXiJltSYVHGcMOQFvLWPezGbQrXs8mAqKAHGhS71DhSPJ/qE04naZ3HyOHSR+ypUQHxRbz53U4/DbW5AZuP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752319194; c=relaxed/simple;
	bh=RVgwjEHqzzWlg9TnLg9kMBq+zjD/mwb/vHbWwiQKEUs=;
	h=To:Subject:From:Message-Id:Date; b=Cbq8D8kJVfbBSdUwEHMOjX+Pf/U7VP773VrsxSdTGBYYq0cwD23ObFs2dEDmOVzES3LyGHFJI5bX35rXjqq6JJAqJlALBvuFoIm27ACOh5TrYH2aRCk1XFoJMXH2ufey9Z1YETnuGFMS73EWqsf8lkXwFoXuzluvpPi/OVLQQAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcsJQbHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcsJQbHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752319193;
	bh=RVgwjEHqzzWlg9TnLg9kMBq+zjD/mwb/vHbWwiQKEUs=;
	h=To:Subject:From:Date:From;
	b=PcsJQbHgJpA/X+3fyApCXnkNfuOnoSTUvTn94uaSyImVFahikHquTIf0BXc6Ju+cq
	 B6ZhTJ/tZLA58sC9KpiVO0zoES4Xgx4NMm5FxJx1Jkax9t4jmwP4830gQVEQk0lS47
	 FnJKMWEMS6WNzmyz7kW9BtvSDfubZJKndtIiapVQJ+4OeKEkQ3aauIuhv4FzrUS8Pt
	 iLyT4E3mc1//jpV+mkTWTk2FKgUhya4KPW0FSCOFDS5ZZ2dNxw0OoC7MMB0Vlu42UF
	 5EYV4Zi7UamTD3Bjqf815zjM8tw+wjAk89urT8B8s4e9cSz8vou6uT6TpvVmAhbccO
	 bj5vjy82ibXjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90877C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231919357.1630.13442591256791387827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d7c50a6d4d1abaf8f379027ec23c7afa4c0a9149f0f7ec03425062c1af17bb
Date: Sat, 12 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752319193
