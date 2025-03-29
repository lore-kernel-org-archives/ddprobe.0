Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C2C23774
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743218994; cv=none; b=uBtrDV4wSj8aulmmOnObgSVNxG16ZnS5ba9pphqTeTIlDXLnuDTPWBFjEY77fQE4hqCjYfxKDzYPYNHK4Nt1oKMpP6WqIbnu/5WrvLeZPb5JVnYsLv7biHYZ4Xht3wZDA+v4zwpUU5a74NYLPS7qYTSdYbNju6xze6UXwaJh3Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743218994; c=relaxed/simple;
	bh=9OAn4bhmkLF/yt8GhJ1pGYAmFlEvCGa4b1sMX45C7qg=;
	h=To:Subject:From:Message-Id:Date; b=HqN13edRDpJXxOIVj52ANv/KoRLrRzIyZ5iYHarDPKOkQL+TwmOenMjf/V8sGhT5cRHxUvjapINV8kGIHfMuy+BJFmjmOTKRF9FL/g3uNXX/layzXt7jvh+Otz+YDXqe36eNTHTMu4xf0BkdtXCsS3ZInZFQWpKrRxNhkmXNdjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vw6ye75/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vw6ye75/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B592BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743218993;
	bh=9OAn4bhmkLF/yt8GhJ1pGYAmFlEvCGa4b1sMX45C7qg=;
	h=To:Subject:From:Date:From;
	b=Vw6ye75/C/Ielkp5/0mEL6f2R7PSN3MvzPCovaoD6+tFlMkKedbpM7uZ1S55k7qQ3
	 CPCM0ss5LgZx6brm0iQLl/VZe+OatqAPaWJRkFrCs4ZZk+eY6oSfnp7P4O///oH8pF
	 lQume9WQfO5ez7ZB5xhNHyouz4VMjIoDxRzfFXVjB5vYmYzFkeB3Koc3UpCu0FqyKx
	 1sksd8wIqmTOn2xHaSTLH1ImNxv8C25jiA/4gcsGxBDwBIhuROV6AjUNZgqDuOufr/
	 uA5bugQmQ36B+Pk+0bMAsrOpkDjHph8ICzTxwSp1RTacBjmGMvnkxWmoDGFtFCQWLO
	 g4tp78CiRZaoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999BDC28B20
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174321899358.21880.13064432858416301555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2489eb0b09804a57dfbd9c9b4ad86b9169652fafe6fab5ba4481d153b35a7d51
Date: Sat, 29 Mar 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743218993
