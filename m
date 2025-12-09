Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1D3320A0C
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765260774; cv=none; b=eXMgL0TIqsIHXNN3qHIM6jJIuSKvPyknaPxHq5ejiSrqMlRxGkGBItZfHf1KGOim5qUVcO1KzFg4Smr/HzN+VmZKN+YdeAhiuXEMR9BGSlP8KbnB9BFZqarsksAL4N+MMeYnudP/yTDNpYSOFEEqjjICToKDKgBR1B0G16JJOAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765260774; c=relaxed/simple;
	bh=kCrvVMSI5wK+/Ka8SgCoTshI2ym2tAa0dxZg3zp48VU=;
	h=To:Subject:From:Message-Id:Date; b=MSVdtK4nJJP3wkaIAxIA5TgljvjCv7qY1BrN+nBmVxUmFOAgSY+HPcxf8xd7JkXQVpBFg1UdEAVu+m6g7E7QrM1WlNRkZXsoFEva4C+9LOsfMd8FW7LNcmj52HCNfLQ92rw/WT6GTZgl136uZaiHRyaZsCeoTiWpQjtNqunjrO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=beraMGZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="beraMGZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A4C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765260773;
	bh=kCrvVMSI5wK+/Ka8SgCoTshI2ym2tAa0dxZg3zp48VU=;
	h=To:Subject:From:Date:From;
	b=beraMGZ+u3hX77smeuOWolOh47z7TpDYpFUx+ZhIk4NcgBkhTnbo+YVec3Pjpc2LW
	 FaCz5p97lmkuVWJT2i4JktRO+PfLp1kQxLYIiiGhIe1vg453zoLdpUSEJzqaDjIh/C
	 4hdYBEgRY4rlPJ6gFKQu+pgG5Gm9Eri4atHu7WtjB7Cz6Bj/fp91iY8yG3jHgrpErk
	 ubGGjkZkC4HZRmGuNJAnVijxQ7wn0ebYnr4QEyGb6XN//hSJ6cpE5PYLd744bsHrAK
	 UXSB2wTOxYAOWieJYuSMvvfTQJOttNIaojiScQj4nrAQtN5YtPyR6NTnRM5p8uHwPQ
	 CM9pVkbI7TF3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9616ED1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526077358.6180.9566599213998522708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1dce3db906b68c8059e4431f8a10c637cfe3a3401777c18184b778afb037c7
Date: Tue, 09 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765260773
