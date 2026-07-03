Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB311B3B19
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783043314; cv=none; b=gh8FZ9eQhQ3p3nIcSbRKyQonEDGOIZ9MP6rfpKaHBDS5CYG510IArBYXyIZepbB2+Amn7fa78X/y5JuM8St9F2Dx6cnbkqgLmJtVIXzs8e3yDkkDXxKCUy/jH1fbbBUqfs7/9MOQaktKq7fyD3mphkQ7VwiN51858ReYc8y+KZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783043314; c=relaxed/simple;
	bh=uvJwyjsRQEIAB2VFbdnKjkAOCD6oIa+L0vURhC7ekoE=;
	h=To:Subject:From:Message-Id:Date; b=K2zXanM9VKrsBFh7nEscRAaQXFa48KnJ0zYpdKSp2gmu5BRSiy4gAlOU+EUMCSf8Bcuwa09eDtOUKuYeFMfYO/BWGdIk/fvqn9TnA9ZTA/lZEAC43goVpzBAeVG+qbaSD/EICnqQGc1hdeH8k6lC0S9RYKUxnnBiF4Tuwi2cpbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwHRbYLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwHRbYLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD3EC19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783043313;
	bh=uvJwyjsRQEIAB2VFbdnKjkAOCD6oIa+L0vURhC7ekoE=;
	h=To:Subject:From:Date:From;
	b=cwHRbYLgs5txJTSUpIS8DbhjidbWisg/VX81UttNZ/GLHxbShKR8PJHIbhC9nTB91
	 vDhM1HCPGBJZLuc2Qk7l5iHHY9zIvUjIBCOFQLxrQGwbagp0s3PzPI7yELQXeTaaao
	 x5JlcJStZozUq5DNdyJ8e7oqqF02Jq2AU7NPMShAUHYuuR2W3LhUKq1v/Kk7h6I1Dj
	 tv1mrRCdEGjpJ5zJJDMyjwvC+6uc0ziM3dkB4w9Q8aUzJZ8csntugIKos5v5sI6wjL
	 mc+T0A3vnOrvO86IZchBM6iYNto5DGZmtWTEYjUJ1KD8n5rAMvQ6gnwtgKizyk3UwX
	 hO5vCkgzpFgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8E5C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304331369.1469.153680360834627116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d57d5b49caf597f8b9ac9205b661a733ef33d0aacbf4aad686aaedb3ffcf56
Date: Fri, 03 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783043313
