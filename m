Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B16121578D
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753189794; cv=none; b=h7WdJgmREoLbWMqij2O/SE65mG62SXSzER//uaqLU/idYQX38wFJZXjd5/mSf8agzP1ve/QJsaWbkYGBpW0adQv9+MVwu1MLJv0HPnRHcBl5NreMdmk46Ll662xVaX81zuvIILy6/BHvj94cT8pdDmO+9FPQytZBoE0mQ8voAp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753189794; c=relaxed/simple;
	bh=tA80/22ohwUJ6Niq6a0KnSaNas9h2Tfjs0pn0hgq+yY=;
	h=To:Subject:From:Message-Id:Date; b=X153OZdQn2Z1ufQbXx05X1Q5Mo/nk3M1mwwZXNHZ7Kce4HYYcUr+X17Q4rSxT5UfJSZno2YLZq/sWoKZbgHhMkgrb8RYAqTcMMD58iC0/DPpF1u8otfLv+ci3q8W4P1Hnfb14fWsUv6xhVgjVXxEsE5Qpb6+jRu/hdrmwoRE2+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy9n3PHG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy9n3PHG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A007EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753189793;
	bh=tA80/22ohwUJ6Niq6a0KnSaNas9h2Tfjs0pn0hgq+yY=;
	h=To:Subject:From:Date:From;
	b=Wy9n3PHGz0C/L+6PlFo0vOrsBz+SBcPIaSt0jUq3orPyqyaBrpitZkS0xpsXeKrLB
	 8T8qBJWHp4jpQucB1oJ7i9ukMzgE+pORQ26pKNbCNqJiZAA+FBDHufduq2Rw2fJs/6
	 5z4SN2WjLYReHnXrFzRdZsMP0PauPzhXFGDwfiteCUFbiHGJ0kZ+V90Ky7LkFb7NR6
	 0EZcVjxEKOmSMEMQ0xtndUxhsMNb351wLgtljgMtqNOrdBgdrqPJw/ChP76X56ECnG
	 UvYyroSMcwmYZH7APi4XzMf5Zu3jSwBTXvPmNmpJ46eN8LfkGdxXGc16jAo3eFTchq
	 cYqqVs5JMartQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90517C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175318979358.19107.18151820479055202161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7c44a701b2e1d7445e3a9108e8b4a405f91866a0497f615894add6b2deeccb
Date: Tue, 22 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753189793
