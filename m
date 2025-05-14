Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D9E4C96
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747195794; cv=none; b=Q3VKOxmiOM224XfF/ln84coUqi8D8auDwHJbHG+NCaJ6ptkATHc4lVvASSrVSP55t5iVW7JpAOwhrZLQfpugiPpLKYznszZSyhoUzN6+FbCM5r7u/nuvqjU23Xj/6h+A/C1bfkwnfHld7fwZ5z/ms4UJ7k9gNEEUF7TKu9jbEx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747195794; c=relaxed/simple;
	bh=/BfJy9sUg2R6rKoA+rwrL3K66HHsuzLHOKbQbbLV8YE=;
	h=To:Subject:From:Message-Id:Date; b=b4BqXI75kN0ZT1YVQK596zqYhC7RJHSNXPJJ8yQDRX2zV32ciiQsg3PLpDTGJCT1L4Ec5u0mtsLCAQGwu5KQBv38dSByGx/nsgb204HOgscgBQ4qlgMI2ZWOBRUYDfgQt3Dum2isMrqis0GwA9xDAbRrtTyWYdumIXbM2kB4wG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYSSsNhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYSSsNhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F0C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747195793;
	bh=/BfJy9sUg2R6rKoA+rwrL3K66HHsuzLHOKbQbbLV8YE=;
	h=To:Subject:From:Date:From;
	b=WYSSsNhcvt+4QlO4DLySeQretu0+6ijmk8hcXboeNS85wZlKWd1uvAPQLDsnOKrKC
	 SOqdddcaSED1aoWuhFTqyPVTtjgSUY9kQ0za1VEh4UrMh56iODNqrcKcPw8HN9qirf
	 vSfJYMzpYTPOm/jwIRelrnK4jBJwpxaIj8V+N5OKhId7PBhgfda6wJGjJOXUgl8sk5
	 DvFzeI9fHrLeyKQ45HiCetInzLo+RynOYWXLhBnV1Mw2s3vqznNgTPwbAxR4hjUld7
	 gN0WmFgCwJZ7fUjzzkePm2d51pI4U3GpQB8TWulHlA/rjd1KaLDaaMGR5Wb1I0gpNb
	 5Mzpj5CnoPUiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91372C3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719579357.17397.1446451177512405404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782bfbb4299a5ece13edd23ef747a4a8ffdfe263027e50817a7e48b93ed77803
Date: Wed, 14 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747195793
