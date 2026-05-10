Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277913A6B8E
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778434834; cv=none; b=kCbd1DTPhJfjq+1tx5WdA4NVAyKH7wvUTQFsHGV/u8THywCLhKlzBtgM3ITm4W/pJsp9532I3BOK80vjLqH9ZYFWZoSZ6oHNMC9vWsYgN8bJ2wMdro87215BgPqS5ezdWpDOniyclph5dQEl94H20UFrjV+tXyrws6cKuUDz/cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778434834; c=relaxed/simple;
	bh=H7MqQwEDKOxZ/ZEPA4YLdEhxize7PV7AMYOPG9Q2KTg=;
	h=To:Subject:From:Message-Id:Date; b=haWOhTNNdgOqFYL40kHxuYK+IEdvarbgsYH6bpm6qidk8ND/2yUgWLFLA3UCAfl83r7T5rNJcekZOqazJEikf96Kba0VMGCEH5wXo4sU8VaF1Py9aI0BZw10I6cEvn8uPA06rXcAoF+X6CJNTL201BknGviOn4bqP76cTl+M1aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmBAOaKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmBAOaKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C452EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778434833;
	bh=H7MqQwEDKOxZ/ZEPA4YLdEhxize7PV7AMYOPG9Q2KTg=;
	h=To:Subject:From:Date:From;
	b=PmBAOaKFICfD5LaXX1XreyOUVXWVcQR8pbj9DLh7bMpeZIZ280ms3L7/vPxGSuDYV
	 9JRVGnhpFz9jLEtmbgNSUUtz2X2XtunktJIv/ALVsVx4EiUtQube/IqOWT1Cl2n5h4
	 3j9HBJc2p0czQkh9siRjy+vqgGq/SYUomv6Ipx3KalccFDRdrwtuqowctuOlHUT6VU
	 to/Wv+d7TBjepCTAxRg0jQOgkyPgaWLYwNenNcEz7wQ4SJROi5lfwLjQxv4R7sZxwG
	 6EvKduCSJgdEbxAAz3BPYshYopS2zPtVptWiqPF/2JGzsgiGov//dTxfitk/FKrvlj
	 i+b6dq/RjGOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D7FCD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843483369.5030.15843820626959976979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c4e9690cc3da6cd882a4b4a0dadb8bb454810cd113847ceb6b33d2a064d553
Date: Sun, 10 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778434833
