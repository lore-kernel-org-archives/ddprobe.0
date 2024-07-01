Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA2E381C4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719867923; cv=none; b=octOj82wcloyKhVIoGKV/7gCn/Y1hyMyagxRKrwJdma0jVQIDZ7MYwkv0sfRV6rzOhmCATnh2iqzJxqTkXysu9AK8mVjbScvMWzHuSN4B2Du4YQioTPZ6CMh6HGYHlpjkbHBxr6N8DlIDUSEp9eJP7fE/gOOmVFC+L+IugceQus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719867923; c=relaxed/simple;
	bh=4lG05S988K7zri/OKRYz13nr3t9MO2vGq74GxtuimQk=;
	h=To:Subject:From:Message-Id:Date; b=Dx/7Kdz7zSFQQrAvePWZHSMkzPHOSsd/r7wmwETKNuQojgsJxTh/R0jle7X2fgPDimVjJ5pU1DE7tsK9WPWb3Z2InvnlOIHicYp20ru7936pI0o8+inLMTloYoZeOEn6AY9GHQtN6qefzi1HG50E+FVbp9jku0AwecKV/7NAPGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVjhP1ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVjhP1ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32C5C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719867922;
	bh=4lG05S988K7zri/OKRYz13nr3t9MO2vGq74GxtuimQk=;
	h=To:Subject:From:Date:From;
	b=EVjhP1yaNqGkaZqR0Rhx3IAznk0ko8tFOZqCK5YKOA6UHhYBoKG7hO6UnhOMzStgg
	 ly+A4r3BYMLlgRMSJNdD05fcIyXj4sAS5E5G1dHb3aK4eDo8WejDdyZMd1swwYaUgq
	 vPSbZfrUqMBTA9aPjlVAFyFhvHhyvyyrX50Dr5hPHOwqRmvBShFYNEbJpByiZYi58z
	 ghQt17pE5ltdNrZM3B7eMopJ0PBEdSAh5DK81na7o+00n0kLrwtuQ9CbYBKfUgJhBl
	 NU0iWmo00sIWq+/whYmrm0JPBgUSpwaYhrEXfzkLhRITSprWnds+d8+qU4MnZrwMOO
	 j9h50tn3yQDiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F1EC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986792277.9615.4517095837645583708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9a8450fa3324afea19f365eec73ae28b427028f74541200806f9f4dbbd40e9
Date: Mon, 01 Jul 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719867922
