Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDBD1DF979
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748826594; cv=none; b=YKlVjV3coLNYu4jlbI6VnmNopFqY9+naCqF2hmejq7HmLMXvL2KBkl7LrRph13eWTInNn0qI1zDxoXdE+4ZisPpyv0/nLO20f3fUCr1+gN/8JS7rPmXEsHEU058IW7LDhApaBPV+UquSMyM7atJsj/WVeTyvJpZ7PTyibLlsJZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748826594; c=relaxed/simple;
	bh=kYJTyZ4zOUF33xm2D3dSbZ5NV3eM863MyxtIctFbt1Q=;
	h=To:Subject:From:Message-Id:Date; b=HqV6R1bHeBjNtuFF8ckZDenx4cRHVMvIQcsfAtWDlZFtI+a//mC4+uCGHNVgJour+F3iZl/YM5afsKHNCT/5KVWavjPJ47VqEzBePMZRnaRlIA9I/D/+KY5gP0zL00jne/rb8rxF92RiYl1Q7ywOzpm3839GBfU2R/ZYjZNgtmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbnwG8bf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbnwG8bf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748826593;
	bh=kYJTyZ4zOUF33xm2D3dSbZ5NV3eM863MyxtIctFbt1Q=;
	h=To:Subject:From:Date:From;
	b=kbnwG8bfeL3qFamURq9LdT6xLvzyb5uv8pQg9I2MUBDnse+ZpREeik9jy1r3NndGm
	 XVy9d/sxStntuUI95fE7lYGAP5SfM1cRfXPyLdc1xBuLMA8EWpLZAsR77IruWaHlEB
	 69gzT9O7egX1wfLITIzVYK9ftycV2dM8jr6bafz48PNfPODyvafItZD2gblX2FFCzX
	 Cd43oKuHLt413Q1RR8WQrtWTjhG/Czgu4J+QUIf6R/GOyqVvTGeHNVhj2Fg1oQnNC/
	 pWv2dJHOzbapaX3s+P3tIQ7I718thagErqwKnc2DBqUw5IW7fn/35ucKyK7nKHoY81
	 ZmYwT3mOW05lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91070C5B555
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882659358.28197.12620677592412135339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e18d38f031de57c5b50133df9e90cedcd013c1e1759f716cf9c02c872d4093
Date: Mon, 02 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748826593
