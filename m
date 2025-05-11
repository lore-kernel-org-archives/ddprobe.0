Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90D979FD
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746985793; cv=none; b=LW0mecXGmlDN++1sw84nPL933/45C3Cta0hRZKSbQZf9Q081TQC6rRXCFjhhxpDYLSYzJPkDt6sAPoZo527PiFZ5QMcSJ53M5X78WtFKcGoqrTcWp0PWDzcuIPgy0lg2EPj5PNgHZGR27UjX/YsGvTz+zQMomBHPLmdxkgQ6L8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746985793; c=relaxed/simple;
	bh=GXdXiqMLbzYWneywHPLUgYKcfxy6OKIgJeN7te0cgZw=;
	h=To:Subject:From:Message-Id:Date; b=Zz0EXvmQNdZyP+Z23dLTzDC55HzhycdoAsKl7FzXqVXyMyIeHjtISepFo+ch+vFgI/JwbSkVDAqBPcyH3nTYOw2AZ3xPxV87TWwsOHr41RFsky3EeAPjqcZ03AYPY1NbsbKMR7pWiLbYZdDZsa+Bd1CXy9u2N7kmTG2EPM0Y/Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpunRh+W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpunRh+W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F403C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746985793;
	bh=GXdXiqMLbzYWneywHPLUgYKcfxy6OKIgJeN7te0cgZw=;
	h=To:Subject:From:Date:From;
	b=rpunRh+WhwclvlBJeRIiuZTVmfFbKxTTG9slF96SxYQhoJG7kXM0MAJwbCFdFy1X+
	 dYdBIeWz+DbOj6lPgeTKq/pzccqyX5lsrcrhRiTHC0HMxHJrpQoXuSZVtJoy0lBa6U
	 mZ1nsxbeXVfAq22RQ8fJJKPZ3PZmbVxxwM4T6qNk8rqxPeIa21XLHZfN4pkmjg4yVJ
	 FJeSYPfKIFfyvPhoLH4F/bCiyNg20+KZ+OlD5F57IWdYVphy/qg2r548nRvE1gbcBQ
	 ftv1zENADUp1p62hJr2A3o2/Pb6OvZkMdDYAASNIhBf527aNKf9KAIgReox651nnwV
	 9Q291FVYzYhJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCBBC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698579358.23528.2017511682295386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12ff8a1f567f5bbb133f68d44f5526892bd5e42dae7792f8011952ddf34bb3c
Date: Sun, 11 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746985793
