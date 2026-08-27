Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDF533A9DA
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787805034; cv=none; b=WJ9KijcIhWAqo0E4dDpNOBZXvbJTbvTLKNleL1hCEBI3U3qifUDtTH0hmkBMDb05Ln51Duh4Lt7v7xXFr5efY3u2qsEk98wNkSWC/GpajD3lzgOkjkQfoSxUTVCs2pd7cR5+jCHiqB7tN6ScTJA6FwC/7HeECMS05KB7leqyuBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787805034; c=relaxed/simple;
	bh=6rd4rPjeL9n6ibbprWdGWWuxXQjZSsA8hxvt9up1lzA=;
	h=To:Subject:From:Message-Id:Date; b=PNTkpLF3a9YzDs54JlNp4Lwik0aNJ3PUbhNiX3ga4Lb2QQlqBtFx3k/UTle1ECvuYTZ8m62zs1tikRj5QE/21IITjHTqYwBmAyYet/P8uF6YmHot8+tbV7PnVD5dRyJlJzOJVoAWwW9gsv0sbrhoJzN9U+cBeouug0uKLi+HZd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5hEiG3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5hEiG3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3634C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787805033;
	bh=6rd4rPjeL9n6ibbprWdGWWuxXQjZSsA8hxvt9up1lzA=;
	h=To:Subject:From:Date:From;
	b=I5hEiG3rbkZA2mrI8hbnxH1ahMi021HYUh28wOmNdE3GYtxgXYOjKccsG41+Sz2jY
	 0Xn5q29h3j6DWqDGtYaw2FSQfNjS6trJoxXD5xW4ABoaiSjTfxzD5zb1jEbvwfN3Kc
	 5P9Q2GBNtVrzqNUgmgMT9PFVyMwslspTdY260srMtzDm2Njh7Bnd98Ebj2OLjcTlmC
	 8YSP8rbzopXtJ2TE3vrTMIpQNryZjIosgMvmT9CfbRJoUxfWLn1oqYJmTxXzo7Ud1r
	 nvEmbElWpHPi4KSqfR/h2xJNbxbPdU0QjWw/1NFDFVOkhruY8Edii2UNRI0vIkWmGM
	 eDyxAHYEms1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC58C61DB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178780503369.7022.13045914219730215319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1d0989849319298f185ffe595cac6e98f721fe9f2184e00ae7a66d1dd832dc
Date: Thu, 27 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787805033
