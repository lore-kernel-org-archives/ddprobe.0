Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA80537F8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736735754; cv=none; b=R0pTZj+vZf7BXWdnKMC1C2aMfD90lDgFBLjSqFd+TlqNrI7cn0AMBOHk3yCcDmb1bT1/ZDj+6WaDhOAyI1rYV/zGcEUuBQOEyBjE5ZMPPsn9EziSyjsavLor1OStkvNBbQb7L9zRSQ0LQXIoo7kpqMB8amjhIILWToT/u9FKHWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736735754; c=relaxed/simple;
	bh=pxx35gXYO2PVBX5mg9UYoGcp8lAuWn5DUugYKaVjNv4=;
	h=To:Subject:From:Message-Id:Date; b=lsOz4vHxBcwpx7/rd3PUG5cmFaTsH6ct7CH/iCBklJSg8kL/A3gRwCWN3jHGY1Ym+Z5VYblTyzbSwNsSUHlLYSyF4nAALo/S1KTXgbVgyJKyIHxhHVXGP4x2IE3HJEkYZnaSSNbhBYRymuAYWRGGFZM5tib9M4nRo3ZUWY8YTWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfv3um4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfv3um4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A373CC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736735753;
	bh=pxx35gXYO2PVBX5mg9UYoGcp8lAuWn5DUugYKaVjNv4=;
	h=To:Subject:From:Date:From;
	b=hfv3um4Y62zV02OmlrPSsgo5uBMjPxHMebV3g0bWrRmCmdmWJ0KkUJdhdgEvYKoSB
	 zSJPEpEaQdkNqURhmvy+pT4YN8AXA71A2dXRono5wtalPfblmU+/VmLyRrrhu1QSVt
	 LsOwPtOkpSwz5N5lq+EzhdJPMe4zZdIUvJ9ddZsXPUR9OkZvDeUl6hE3Zti6zncnze
	 Go876cBH6FqZQKPv0rjF8LG4xR2MEPGsN5UuPjtJDvHTCaCnPNXjfrFEH8E08g5gT+
	 abiSvzqr99hyLLE0DLc9y3r1lYsjW7GOZsCPVBTXBmOAILpnoVU0709rQ+6VuqIf35
	 tdQ3hmZI8aRvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A6CE77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673575357.3506.18161333007820289753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b1cedc241120cf6bbfc120cffa8326e5251a0f02ddb1b5fc5955872d382b83
Date: Mon, 13 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736735753
