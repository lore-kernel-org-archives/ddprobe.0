Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C57A273D83
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758655794; cv=none; b=Mc9E11EbkEyjeg/2ACgsY/TylEdaeL50bmrpC5Vvv405sEzlYtG/3tUlCxYxzA1COyRHs8JkYbOS1ECpkj7Q+RzOZmBj7w2mw8kVqDLha/WpN3LcmK8Su5fy+IgmGjyRnCbU1Q/5kIt8ShV3Tciq8pEKnNpK1ZjL1EH6NnyjTdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758655794; c=relaxed/simple;
	bh=AUPbxLT9EI5w3z8IGy+q31pc+7ryS+hCH5sOrZMWvWc=;
	h=To:Subject:From:Message-Id:Date; b=gNT11RUthLDCT8icPLWlqxImmpzvJSu4KP9Tahzc5/VICrW/sWJWzJG+E791IwVRNeulvufdNBV6kobxJ8Tu9FQNsPxbQLvLODOCLQihJz9C6hfAYKM1K0b/5nb7PogPKex8UXWYdZkVuBoktn/d1bRP9PteDjTx4PGr5Whr6Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJ7lgOD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJ7lgOD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF45C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758655793;
	bh=AUPbxLT9EI5w3z8IGy+q31pc+7ryS+hCH5sOrZMWvWc=;
	h=To:Subject:From:Date:From;
	b=YJ7lgOD/Lh2sAZo+WM9C1VPJIalUknefPgMmlRcGey22n9heqdubEMmyv5gUVoUgk
	 yWcnTup++M3rx3puHgQAsgLb0hda1LsjXGqtBNYODgMA9m514RkPkjObLtaZpfmwr0
	 h1Aqwco2d4RaOfa0y6TfcqjTVl/RyA6ZPaCbWPrvbJPGbKG9v7NT6WKUDdm/TImSng
	 TDjX4lhdiR2ofQI5jFDkjt0mwIku+wa41rAUpwDw7S5r+FcbXTCfo6L7RRFFUutXQT
	 sydMT4pzdq3/TjGaR9xflADOucNoHpfu7kKL3YBTritPaCx08X0hFnF1aIuiyy0tFM
	 d6rHhTeVHipYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD76CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865579358.21999.565751247201984394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34263749994692d9f854537f11137dd3a9476353e7db93d75dd2623fe1ae1e42
Date: Tue, 23 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758655793
