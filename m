Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBD121CC71
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749551994; cv=none; b=CkvoZr3UN1GYiu636NLuYclzAXd60NhoZjdumWXOqcil1Z+90rYyLJWM05Pjo6cl8OEkqRyX91V/m6AxgVad7Inp51Y3Ksv3R6ecuHZSNDNxKB8NipJm58aAUg3STEWRrJHqvuuQrAPBGuCxi8a7EkRiF5zn6lNsyPfHWgS+Q/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749551994; c=relaxed/simple;
	bh=/VpOTFwElSrc8JLNQLPX1jMuaV7E/uHfzp/hOR6WL2g=;
	h=To:Subject:From:Message-Id:Date; b=XMZ8BtmeP+TQpy1FeORugJ6JU5P1g9eN9R/zvPZAIpTY9w3RAOOrqSTLDzkP16QMMpXs4mB2byDqjbSYSEGOf3v73gnTvrEVLeGp0SM6Gp2y2nvzFVc7g+5vFP8nN79YsjTmQxQqYaWSftKmI5IvdTN7t1YjO4B2j96EvQk396o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXo3fDEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXo3fDEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF58BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749551993;
	bh=/VpOTFwElSrc8JLNQLPX1jMuaV7E/uHfzp/hOR6WL2g=;
	h=To:Subject:From:Date:From;
	b=XXo3fDEONqKga2cLSZCNFIoREv8HF1PV9vTmVjM/M1oumxJfeo2qwpHrhFPvpgtrW
	 0WKvLkjcsDhUJvKk/gCWTVEWntbnO527b0qhcndY65uooCYqJWgjuF+IzJxrZJb2f/
	 MCeBp0YOXtOY5i2wN44GGOFxZBQgxZDDpXbMegpFfaIi7VTA6ApxTvbB6mSp7clmTu
	 Wjw1kiiK5mRgei9COwVt7vovKvJI4uWXVocM2eUR8ndfmNu2LSojviaJhzzRQkZ+y7
	 YuB/EGOS7HF+6EE/9Wkc/FtrVMFFTf0HP2uLJowQquuxFl5+MZNOS1/PUaV+3GH915
	 Arvg1utUYBHqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99850C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174955199359.13129.15559025845529814439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e2f4111d23d3c1fc0c8ef51cd05778ed378bd1959c3ebc172f73d99b7ee0af
Date: Tue, 10 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749551993
