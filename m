Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEBA19EEB8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718630903; cv=none; b=Dmd3DMf3ni1nbEwKQs6p8ngIpavOCcqLwj1nYF0ZYfpnZ+UEzFKyapcq5GwQw7mNJ0ZSOb57KnoVZtjLRZDf3aBZZGtAfEEArsUvovIzElRWZSgsz9h6nD8EVJJbNsirgJzPWlyD3nj1fGc7TKde1L+yzS5l3XvsFAqK/Ntgl54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718630903; c=relaxed/simple;
	bh=zA/vrYYi8CWypC/SNF/XLNi4mrFlTD6OymT3z/EuGxY=;
	h=To:Subject:From:Message-Id:Date; b=oAbNtC030OJvp7kfNnDumGn2ocgwOlEPMg5EdPlI1vOpUuVGGtJHePx44nt54bw0dJCWVudofMYJhcksOLK65yF2WBsdXA9+xhIceP9rpk+XQVk8oJSriMF+eo/4oAO9B+Ye7I2LR6Cyxl+x1PgvhPpepaNzxVPS0l1sIL+A2eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKzRBD4e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKzRBD4e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E13ADC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718630902;
	bh=zA/vrYYi8CWypC/SNF/XLNi4mrFlTD6OymT3z/EuGxY=;
	h=To:Subject:From:Date:From;
	b=NKzRBD4ei+GrDCs6p7U/mhgHlqvJuHM1fIApSIJ466qm60Yuw1schfcP5ddtDqWJQ
	 YyQssbM/gOUSiPUcg2RWz4N7sYq2mZBv/f3oQ8+A6P8aYkcEYqznv3miaAi6NJTJ/N
	 /vPfdkXc8PZ2wdoeVqf8FeCUw5fsFp8oWwk/31CXXT0tfehqd7v2QWoeUVfPO/ivYe
	 Z7d6SfTjaVD89QjCSDTU4jExJ7vihbii97/daTHnOfv2hnB0MTbabBcUEv+qLa6lOT
	 GnpncELqzM4XPKKorhqAW2Wy4GZw2hJed6AfHX+K7dxYHhJywuKl0fNgilmix6l0Mb
	 nF6KxeYAGy8Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D46C2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863090280.25177.5851650128081286919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8197506dfecf94bc7373206578c2410c4723763f7897cc8e6a12852117f261a9
Date: Mon, 17 Jun 2024 13:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718630902
