Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DDC81AB1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720506383; cv=none; b=seAy5GpKhHSXQm0nPp7i1idCrFWI4Q54xFJ6GFTjlaFUNdW/2qVCOxaJOhkRknP5T4Tl2DGdMDjUYTF3lO0TAP5IZatgcdCPSogfXvCEolQLa2YuyVqMB7k8OGbf7zvpvOHYJ+PRMAFxxIqyUzaglcfmNdEYYx8lkvqwtpMrcxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720506383; c=relaxed/simple;
	bh=2TD8SQVq08lSke5unsZT8zqJwzuUHGkEFyMixkLzP2c=;
	h=To:Subject:From:Message-Id:Date; b=Ran9TyM1dUGlMU7wlG257oGTfgv4QT21cGV44dt7bcH//BGkcdvFNrUOl5d0q+1md/wu8KlXiBCZQFh6oCvdtkUIM5MZ525bp6mHzhM09GpY4te2BDSr/4vPqaWS9+cT7gijpPmrAgBNzuGN3UYT86dCu0MGE3UCYFvV6YEG/NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSBUb05o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSBUb05o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4F4C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720506382;
	bh=2TD8SQVq08lSke5unsZT8zqJwzuUHGkEFyMixkLzP2c=;
	h=To:Subject:From:Date:From;
	b=HSBUb05oZndSok/cuvzyo6TySoBxcg4V+CHPOgUs2HKBoEtF5cNgKeeXu9D8KVUHE
	 5oA3+qkjIJ+8IZT4P7rcobu4ckJtQLod7yRIAj4Cy/bikb9jIARksPk8M2xsV69G2W
	 69KJ82WUwId+s0sWvw2P3GgMZPi5NLAsMTzy+ZVn3EpNNjKNsWJ0r7yQMUnLsz2KSi
	 F9rLyfESTyzzsZ1tT9za99PHyHhozQoAloL2SS4RNhrieVYk6ObkwcntHTuD2BmFMZ
	 qVWTNOyyrgVO03eTgYFw99rKpPnc/xxHblfJMo77RTCApn5ncQMyNLjQAJO5GavExA
	 b3axWufQOSdtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB469C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050638275.8428.3036666214533101129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2eb60ee8f0d833bb54a7fcb6f05882618a845b04ef54ef082d8f21abafd4d7
Date: Tue, 09 Jul 2024 06:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720506382
