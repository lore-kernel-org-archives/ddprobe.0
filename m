Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2538926C38D
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756711795; cv=none; b=TIPqfNo4AwKKr8eaVQ8HbZw636LJ7jQh8QviotWYF86alRU4ymLGYlE9AfUkG8+4vFr0TTAc54IGF7EcKnodvpAlnlgyBojMMG6eJvUBaeTAnuu9QiDxuDGetQIFS4esH8e5ErER3JKDja8BtBn2ke20phQI5BIBDXlYGuXmUIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756711795; c=relaxed/simple;
	bh=qppIRbV8RkyMYw+pxsz4F5rWswWZf7ZWRIeP52KV8b0=;
	h=To:Subject:From:Message-Id:Date; b=FdpQebWaxxXR8wOiQHsjF2BIm6jQis0InQhYYvxstmR9f/fJgXpWLlJwgVkbGQlroTAqaC+wDjsEmaplGXC1uHgEL/eev/YC5raO2n/h6/4pvC0515jy2PQrxAbu/XgESGoCLmG4XIkqzraW8gpdhOLlN3p8nNB7r5mQCEpfdLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LinX+Tgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LinX+Tgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C9DC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756711793;
	bh=qppIRbV8RkyMYw+pxsz4F5rWswWZf7ZWRIeP52KV8b0=;
	h=To:Subject:From:Date:From;
	b=LinX+TgqVRpyjGnqWauzZPCSbxdFodMx3d8dNCqkmKzHimtz8KJF2lIkfjLsq56YU
	 HdcTqbK4RkquQsaZr7xSjd9bVTi0kAWHS78eXwQhDG1hKTNJ3VSqNuHeikWhWOd7YH
	 X5XkxeUwPogfs76Eb680GdH7gYXV4XI1KEC/4hEAyhmtNGXPlbndu6qTGuOlQ+CWFi
	 n9mlaeiCIHmlpo+ABsMzAfP+AoWUigF/ilWnjP+CZf1b80DZk13/y8OSioJKqXBvTn
	 eLg0YfxwTqPLnnOwzFzdGllfnLu0bkOOBN/UIB5BOVzYa5bv8doXBjQjedxZ6J8YWt
	 Aq83kg+Z5kmEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F763CA0FFD
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671179357.8916.14517185875326267584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223620ff3f4b486e798043b28e35538e6f266f0cf2ba884bda6971684f1fd478
Date: Mon, 01 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756711793
