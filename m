Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E27F28E604
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749037194; cv=none; b=bYes5/aKsNj8gd5PnZkaEenqrqivoc6g8XQM+utfTaPOgLBh7nyOpeOlKuriKIRXwcxZj8NyJ78CPC6fegRoD0r6cASTdB/RhmCi9yIeLiAi3UkaHKOwrcjRK9aVJmYWir6GBhx1W5qSxWrhGKMqaUMskODgyoeK8WOjOcPAR+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749037194; c=relaxed/simple;
	bh=GReSg13i39MB/5ZkL2wmT6Yy10UqtNRSnbquclWxb6w=;
	h=To:Subject:From:Message-Id:Date; b=RjLqvRwwjEyWjVbgGlTUfDRE6RbhC6fYT5JznOSNmz60HZvwuTEiAtEiEMKkl4qGprAYeeL+EqW0ZTigoRVuZKMMNV3fm039+o0LnuVCu7vR9/GcYVC7BD+4jc0THZks0ffNQfPpygynCvJefFeVEuDHB5eopnuRmxzjEN75zRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYiHtSPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYiHtSPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6512C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749037193;
	bh=GReSg13i39MB/5ZkL2wmT6Yy10UqtNRSnbquclWxb6w=;
	h=To:Subject:From:Date:From;
	b=NYiHtSPvypIJno2QgB8oyQjaxfPzlDWsZAJI20vqnOAz27dGmVGKQngGQwmlRdqo3
	 Owp+LC/jaHjYZH4rlh/i92Grs3ENfFt2qBvwqfNEdsv+GuCfM5J9N/dEjNUqKbvJj9
	 vh8n9yk032FBURDblGu4yWwPnATO1m2UzKWv0AvT7LJA7nolQLOCHZqwvrTF4Yxzby
	 eBP6KeNItcgbcglsV3eHl9/R9RfmgOS9Ye6RSEA9r86gmAh8n2KJrYIVh+rq8fVNje
	 5aPivf6m9YFm+v7tHsGEA7uYOQVCXnsNchCIOuOgy8utJYiOI+EgWOVLRyEzzJesjM
	 luc6mD/NyWPoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91655C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903719358.18361.18081056942547251406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39896f95d1e97e4a939e15242304d4a77a81ba3a377592dccb4eb5440ce8b1b9
Date: Wed, 04 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749037193
