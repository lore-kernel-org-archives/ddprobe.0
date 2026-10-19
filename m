Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580B14E06CA
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792416634; cv=none; b=Vjb6KTK85gq0GaUjlvKAcLstQYhfIliFcUb/FXSqFDlMsqwWlkuUPvJmbWHQtfywmUMv2505rkoDyFp0jVrRlmW31n5xBg8BSpsAmr+tW9tDvKI/EaFR08cNaM4TYYy6ih+2lrJ2HcoY9nrIYNHy8z77oud6zRDwoKtanymMCgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792416634; c=relaxed/simple;
	bh=X6tRFoALNS3RwvQ1EnpMMUW2HtXHDg5vgZg8t2wrJ2c=;
	h=To:Subject:From:Message-Id:Date; b=AoNnuJoTVGJZFcvvkJOzGHX/RJtKr9e3FINt25/bCyCy4LtVFzVF39MK8ifPVdez4KV5/eDgHwZeySWjPJJjRwVt/UNK5rAag/zo9w6wpg43ytDOy/rC+7zKk7J6wMDPXuMYLjSRrbgJgjjP7Fh9QahUcKW1uzm9eC4YX5C1cyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfNAtexK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfNAtexK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9989C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792416633;
	bh=X6tRFoALNS3RwvQ1EnpMMUW2HtXHDg5vgZg8t2wrJ2c=;
	h=To:Subject:From:Date:From;
	b=lfNAtexKMWmWJA8CEATVMx9NnTHDZ0Y/KhbI60E3g7D9RTGLg/IXt+9Dz+Y4dkn/J
	 fPOEm57yp8PenGR3xNsQS829NVneNeC5/WPkfa+bAA934AcwBu2tSo+ilIZ1qYpYhc
	 XLpsAib0VLlVfz8xJ6/FyPCCLxjc1aISSK4aGsr7ace5WE0H1TakGROOXc0xcaLzEF
	 IAymNMnB7WNAlR2/CO3fGewe3Hq3U//L8ow0j9HaKy8t8XXSDCoMh/IV6B2LIww0Wl
	 tgaHGgrtzsioJIyGuXHIwtNvquAWXudDXPlff7D3B8joLXCTvk4Cxkiamui4bPX0pY
	 0GY0fsaYf9SQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4B5CCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241663369.12990.15740991264208516878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80cc9083c5c59f21b9ad88afa5ec2c3838639577244254a4bd1fd14895b1c1a
Date: Mon, 19 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792416633
