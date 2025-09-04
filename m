Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2289B25B1D2
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757014195; cv=none; b=JAyDfTDTUM7QmnspjQuHjQxmCJxwUEK8n4dTuEP3r1St7JwC2DPXMW6AT3bfPnnSfzd1NwaUxifF9jOBd8JsB5C2dtDf+X9DsiNc+n3JJxCuzPztgs6B3nvqtG8hEUskfimXWtGmkRYHG0rSLU1Hv40LeZ+f0MWt+eYLe5hD0YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757014195; c=relaxed/simple;
	bh=Bp4o2L5rfq/SSJLSzHT6WctHSmUVzjQ3LQU8FSTAtvo=;
	h=To:Subject:From:Message-Id:Date; b=ONlyzAQcZjF+WMMPWWjXa5IOo2tqxkhTLP2zNqzErEI50dRjWMR3ozup/bGDcqQhq3RpjQmgbOosYvr/DM43tGfEU8ka6499p+rY3GgfeftspBmF2U37lrSx2m/K5AHwrgrcaRfu7DxuSghElzaD+Uo2Z3PZZy77+Y0fwEmCz3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ti3qw+yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ti3qw+yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F66C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757014193;
	bh=Bp4o2L5rfq/SSJLSzHT6WctHSmUVzjQ3LQU8FSTAtvo=;
	h=To:Subject:From:Date:From;
	b=ti3qw+yf7mNPG77UWNOYyJY8mSIpqz9DK9+Ek0/hl1Uy3ikJQQMknOYvVUEu1iBXj
	 6/RyrRMKUyTgh6NTHjR/U6B6NQmwN3D1vjuKxa2Mf8MrsI7jP2Q1iCgU7zc7NKq9E0
	 gl3hHBanTwxiBln02HghuP+zKja+0fK1gr2hCzhqXtomyaVJcnY0ZVMcnbbVAze1gk
	 WWPl6J3YW+dmNkx4OE82w+nvnPd/NTuQRrGBt2hkg2FTPpXmUarB/wywcW+JLA9zDj
	 q/hRkKJnagzRHcG/7WFvPVu5As62xRv/IoY+WfNWLYgNYV+CV2qfU0O4y2VU9Ox4JV
	 1zHBb6lixLU/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9013BCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175701419358.6004.17207363998651974733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f637f25774a5e06d810e81d1da14815b56f30939f02855fb268d5ebf6f9b9cb4
Date: Thu, 04 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757014193
