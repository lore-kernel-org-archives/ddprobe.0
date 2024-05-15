Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8472AEFA
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 08:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715761943; cv=none; b=Y4PQxMQdrQZyoxybtYU6hODbPs2hC9/DvXbPxfmI54qX6lEcXcEtHtN1e6e5FN/xhpa6iDS+OjliLESdefI+7+VTWS5C63rREZzacZtGtDaG3ilTp216fSHIUfTUWGhxyJcisOW5KHJBggmNvNVowup7cu36i/DGAdk+3pzlta4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715761943; c=relaxed/simple;
	bh=dm+gePzd8UPpRc0HtuDiKoRQOWpDNuxz+hW6yIkBNM4=;
	h=To:Subject:From:Message-Id:Date; b=J0T4F+WH6t7yOkmJmR/5qa15dvaYYbZfmldV56tcRffpKYE7GHqeMHyD4bSfHQkChjPMumSWxrCDXq/j6axd4domeAFY5v5CchkxZGixpk5f4MjPK/4f0I/+3/Zcn9ORYVY/JEnss1uSRM48Ib5VOy4KqrChrRjcqlfFkYZLzmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj1MF6c7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj1MF6c7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34ECC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715761942;
	bh=dm+gePzd8UPpRc0HtuDiKoRQOWpDNuxz+hW6yIkBNM4=;
	h=To:Subject:From:Date:From;
	b=dj1MF6c7Jq/CeuDuPJqXuv3680yP43+ZRBj5uLnWWC5/QDzTX1dklPbwV4PuD6rs7
	 e2ChcP7U+0pv0AXMS3/YU1pKuzugiyR1zzHFBNPKewnHBrdRvXHVBhWV+gjtKrJKaX
	 j5it+kmZcaDJcTNN3WsVYl/xIIZLG+NRGgtTWWpEx5nznAvbV986PmQC/WV0ctgAlz
	 r+jC0zzTMWN44wrrjNxQfm/M5UQ2HHo6FzhdruSZ244RAhjBTjkrS+ZK/AJqIrgXHF
	 3RJi49umSSGDoCXqV4g3PRk1oEO93W2RcrMYhtMoB8wM4IwMKLZ8ToUggicXEjNvmW
	 eEABwZCPgZZVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD69FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171576194276.13531.16460634911487041959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78480089189aaa146434ab55a2ea4462be644075060c7b22454d6e3461a55869
Date: Wed, 15 May 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715761942
