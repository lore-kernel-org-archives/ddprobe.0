Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA2538F24F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784224714; cv=none; b=sZ1HDjNKp/R+xeie6df1/S8DAGkQTrlIPLorl7xZE5KFRp3y1wVVLOramg7CC28P94V4Vd5X8F4IfpD/bMVODZlwS016aq/JA/0SvJqaj93PLk9+wr44RSjTo/jMWevWSNJNXYGGLpbRjH1CnDs/+v3Gv+suQgFKK4QPwYYxeK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784224714; c=relaxed/simple;
	bh=HNRzAI8cHD/of+pcB3vdtlQEOLIs/Sg2A3EhNbVqQDk=;
	h=To:Subject:From:Message-Id:Date; b=hqO8Qmyn26ybjmj3wWINVRILx5bmh7xfBPvnJ+xsIPnrEuM2+P7AX9DGY2tm++h3JaloZWzDnMcrNodUJ+FA9RwOqcNgqwIFvYD87Uu1BP/FGkJCsdqoLgpwZW4gz5bJa3O2s6k01f0ZHVzSkaF9B+5t0pOcTC+lRGp96jwQFLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4fjbRgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4fjbRgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3FCC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784224713;
	bh=HNRzAI8cHD/of+pcB3vdtlQEOLIs/Sg2A3EhNbVqQDk=;
	h=To:Subject:From:Date:From;
	b=b4fjbRgK1QIjhxbk9sG+hyJ4rjgyrfy5onuaU7GuEQO49p7wZjVTDBQJxkWWLz0MO
	 holrhtB5fufEKB3gKGhJkieWH+qUnM9TtOgYepv1b22MUNNHnVSjEk7uRK/onqF34Q
	 SdTgTRGvLKA46TDRA4i11n2JOLRGT31p079oaUZ5qxz5eEsFuZPljterpVoc3UOYq3
	 je2y3ePXIVv0ZAXw4Jw91jwzMMHNtRzIozR4hlhHTIlVl6pqpRamifhX1Kxauw4hRJ
	 mw3wlGNF4BSgPWWQiYPn3J6C8dkluYpME9VYuks7oPObMYwy0eqZXGIQxHwRAyq/0q
	 DcyveJV8CZSNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D1C44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422471369.27898.2004255290697214755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b003cc26cab4c7036207f0e410d6b2a2ddc662b79338e4fe90873b074bf3a4
Date: Thu, 16 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784224713
