Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D52B640
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767069234; cv=none; b=gtVqkaaEX0roWpk1gCeiG832O7kUZAt89+s2VxQftOeIxdGfZFPPEbjIc4jI3ZuDKHOiqUTdW8AVzOToo+glUtdkngrNw2gQO7XtuoX327hdDF6dInfPGIN6bBKE1GY9J7qI72WLh4uFUO2ytn3ucRcWQV6/yQSKLxnTwZQ3Gl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767069234; c=relaxed/simple;
	bh=+v2iZLrSo5RIu9zuH1SB5LdbpegmxrNhFERpHmakek8=;
	h=To:Subject:From:Message-Id:Date; b=F5LdLM8ZbYOwEiB3ADbHy9nGJD+iPeRDGZ8sZkhlSR+wIgqUxPd87rImA9TIdPTvv07rpLVfFcrH7YhaZ+qWf3dgEUeZj9l0JnAT1/9HK//lJlbtxglmCNK9PT8kW+IjMjJ8/8/S8B2wOeG0MH7XUT9HgP+6Dvi80YDwGXfKDwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsgT522e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsgT522e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B10C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767069233;
	bh=+v2iZLrSo5RIu9zuH1SB5LdbpegmxrNhFERpHmakek8=;
	h=To:Subject:From:Date:From;
	b=ZsgT522eIFFvS8bzb+Sdn1HpPrLD7xkiTigbHAjHx0IQzop1WpCzpHKJjBngYjiJ8
	 1+coK367g/ik/lt/vykusPy8QyhEcQ/HGidUCmNk09aqOxvJ/+T9djhLoAKVXE6BoE
	 3Y5CwQP+Bx59SjXPde8q4u0voQaAsJDRCl2MCMarbwSbMZQdY3LT05VpBAJ3FYEVr3
	 hANqJZixQhlW762V/GDRmG4gw8dHI4azPwZQhmDadxBToAE8zP5N6l34mn8xQrbXrc
	 Vw01xodofp7rziTgojoLcAJfpQHug9vGvajrgF7qM3ds5XaNVYzArSGzol0b0Wdicj
	 z8p2qDAoidf2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BF5E92722
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706923358.20612.18113652245853298162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05e261bf52f05a6e5ebb8725f85624e74a99bebfd4220ffcb0150a27f5173ef
Date: Tue, 30 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767069233
