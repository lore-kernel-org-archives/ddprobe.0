Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEA17E0FF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736564154; cv=none; b=hN2xAr9pjiDgvZrhCIpG6FuTwHTzLzuW6domNDorrmR2SeqW93Ko6jLwNTni39PBAib1msLbdrF5j6xNd2QH6gaXpxMhHDz7JFyaIjtcfFUzci0TVp7ERotWXqhvrUiwNgS6+kyskft76IC3iPtKkjFTta46rBg1Y69ckawD57w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736564154; c=relaxed/simple;
	bh=iPEDMXof+CXG52tXdNh8rC0NQAwmaZZeSBkSsGOFtys=;
	h=To:Subject:From:Message-Id:Date; b=XKJj/W18dpW1KLHRprJB/nLbVShV84YExnOQZghw9F+9W5ReyZaDkg54GjNj7YkpyUXhM7Wkhh4MlkOWUGudNrXEMI8ZcjGZE+bloFhQh8iZwe+FGODSzK9koMuAGkRNFa2407PisnS6yQ7SQ4bTsploCUoQAPwq993SzX8xD2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLm2IY+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLm2IY+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFB8C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736564153;
	bh=iPEDMXof+CXG52tXdNh8rC0NQAwmaZZeSBkSsGOFtys=;
	h=To:Subject:From:Date:From;
	b=bLm2IY+x00TwJ5WPvj5TPopCl63fjkRFIKIClawG2jum8EfD4UyrfLFTfxj7v1wGi
	 ZnuQLF8HUuJqBPkY+xc9RxeTz0hK/WbnLia1sf6oY3UL/UUbNdG/z2Hf4wx1lEjd3j
	 Mh/6IbadCJchjfGC3X1J0pDG7niDS9NUosNfzLCRD55SXtCSV1GiyWnIR4ePHiP4ai
	 R/fGUHGatvXR0rgQJUaORuXVXLtx+B7ay8SDqgFl0S1dRH4MT9us0+r2mwOSlHRV+1
	 69b6INu2v6QvUkmR4wd5TOAE1Rlin8D8E9/xzRF/u1efUwhl/PaYWCx5gIS1ImIpj+
	 B1OUhM701pQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49BDE77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656415361.19374.3542584956666509299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062b5174f4804373f763369dd0087ee54573419aa1e972300e20932dc780dcb8
Date: Sat, 11 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736564153
