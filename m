Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B961386B4
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753643394; cv=none; b=URf81ITCIb7l/UK0xGmdqLwZvsaw5S9LJvlWNcff9DzCdCyU6RkVCiJKW6EL0BMXTfBta6lFzRc8gjTmZEVyf7V9DP3KDmXsrM0BbziLlO1pZT/jLEACf35uyixk4iBhXMcMR93ST5rBObjs3MvPhvVQM65WDDv4gaimFNIxmPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753643394; c=relaxed/simple;
	bh=9bXUcNThxudLFZHZSP0NYQcWQI5tvLsW33NcKNuRrYA=;
	h=To:Subject:From:Message-Id:Date; b=q074fPXwFCJAKgMpd8PWDRVuKr3+S9N+DSyMlDw0UXD2V7z68lhk9JNFqfbv6AIbMlsvImzu0tjfU9G3XmZiH0tE/+jz9UtqL4urklr2/myYPUsePJM7E5+h6ao2ylhfpwQE0VKKcMCDpFefFxGkSlemH4fPy10YWA09PF6Dtsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXUf+JuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXUf+JuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDD2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753643393;
	bh=9bXUcNThxudLFZHZSP0NYQcWQI5tvLsW33NcKNuRrYA=;
	h=To:Subject:From:Date:From;
	b=iXUf+JuISC6torjSOJW7hPqjBUOCUdQfq0jVHjCgGgNLIX1uHc0UsOsvkflLThQHI
	 27vpudybciAdW3k5jb8x0fSam8eHWSZ4+UznSqHzFDdmM3uzRMo24fG2EA7fvQ55mP
	 LnQijNiZel68TbKjenEmLpfKjFcEraSuIoIn0cgoUIG3zCiSbWdQQTyKDt0ZVPJtMj
	 GUzIfCvM+jOQ2SyYu3Moq/Axf4niaSHG10vPQJU9JxHA3FU+BNjS4nCTtopo4TxEmz
	 lxkFBMbW/ocQ+N4WTXBBTZU0vXHNej7Bd3PeoRMYxUUfHVVpcKm9FZWGN9uJ/eEpps
	 6r2+EfjiHTrhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCD2C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364339357.25019.6737704293811480419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c065b07073fb75867ccf7f13546aced42a1856f223f73cc4a7eb04fb995fc6
Date: Sun, 27 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753643393
