Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3894357C93
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739174755; cv=none; b=dJKMju5kigyw8yQ9RwVmK+k4VBJ9nIhxfWnQ2GGP6HKtgPImP8/bhnFm5eguxIU2Gf/rJYQfjlU6boGuOgYda+Y6GIpQjt0+BTCEiD2LCA7mQFR/tGW/0gXhJ17nLt1mwqPcSj1VTV14/v9Ic36ftY2/mwB/Le6m9k1qGW251Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739174755; c=relaxed/simple;
	bh=DQqFewt9Q2FP4I8xg8Nwo7vaudXfLfEtG+DJ4ku3/q0=;
	h=To:Subject:From:Message-Id:Date; b=cXY9Ic0XeDFZ2g3CRJ7LQrSYiSZbeG/7CkoZIbtA8XQ7Q9w04jY4+FTJ4Vq/5C9c9dPe8+Q42ys00GyKE2Tuq6ZP50bb1bcZoEwpDEU3uGUwTkwjgknckjBJNGEioUEhftgYb2vzwIMKjWJuqDVAxeexhnNHUZvp9RjF190MHMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NpRVa+Mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NpRVa+Mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B87C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739174753;
	bh=DQqFewt9Q2FP4I8xg8Nwo7vaudXfLfEtG+DJ4ku3/q0=;
	h=To:Subject:From:Date:From;
	b=NpRVa+MuDSPM4hl9kgvL2cf3+Vg3WAuq3JBj6qlN2FCdZA5Sfo/FeNzgHI3SlS+wu
	 XkyOWVGz07B8hmsrTAABAvGoRHvSz2t2EsuWCnewh9tybF/vD+rMSn24fRO1lHF22H
	 hDA8GfHJFEDMNBXVq1nHUp59VvsO6TAY6RuUKj2ogL/EJPiwMcWj61sR7H0qBCERyO
	 vu/WBUrjyIdWj1B5ado9ZDfM6aF5eV/EAUZu+f8eHtVfhoC3NovkcbPPNPbAoI52By
	 OOZVJFzkUBVkTItoxH9XPQxMFvIJWQco6NHH7Igrz0CzzTTy0IOUCS2zNOwjBYjic1
	 0JQ6l/vS1jT/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002EC0219B
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173917475358.28776.16405725989689299154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9110c2bef8346c0b8757e498b099ba3782366f3e1494e989812a197554b14b
Date: Mon, 10 Feb 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739174753
