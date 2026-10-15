Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662E3550DDE
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792084234; cv=none; b=uh823HSaSqNV7Yg+kHQdi3aNpV3FonLqe2wAzFHDJpguqvHYbBn8VGMQAbn6/W5nlkpVoiBB3Ls0WcJpdIawG1DesGuXlVugvWEQE4KVhx7yHN6IJMbjygT9qPvN7b1UEHD3HlhPfWR1SRSxmktObSbHwRKRhzi2M2qk3Eyjj2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792084234; c=relaxed/simple;
	bh=4ygwqfPt0fMm/oKdBSlMS7hTWLjNIHFjrP8d4JvDNFM=;
	h=To:Subject:From:Message-Id:Date; b=bhAEyvQJXwfuQgrF8B8ObpzcNGpKryKQSxqWlSIlpaENj+3tuNhmroB9ypQiD1i37B56LL8jtreVVIaWd/KGJnnr0bLmmhu9QoProsxia+jHct796H/ypwWWw6wrd1bteJPA5mJ4GqsjscSLpN/sNyBmcVLBPVseZNKvgGBGwM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7tnVlef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7tnVlef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00D2C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792084233;
	bh=4ygwqfPt0fMm/oKdBSlMS7hTWLjNIHFjrP8d4JvDNFM=;
	h=To:Subject:From:Date:From;
	b=n7tnVlef6+pbIUxMyGqvFZnNoTTa7y5/NR4X34VvXlNDeQ4MquKpPg2Ch7ni2MBSd
	 1iXQHHXuTd3DjRQHnh+Fah1tqhe2yw4uyRe0AKHKUCCiYuPhrmWW/M1j6DUfjp7nY+
	 n/ABOqXV8eCx9mNTdsqbzJJl80FgIwu9uJDZP9AMHGWLnGeGcl38B0fnn+oaZu20nu
	 awg0oQ+XRhnb+ZQ2Bn0JnEVZLVriWvi6oDd3Nx7GuNGpvf2V34zlMikaj9zu9tdtax
	 Ys3FXcxRZ/pqtqQLwxgCSP5d0FY8iQXnhlATutYqCg3tRnXBoButgclIoh1VTegfx0
	 QFG8PMy0AkeJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA572CC6B39
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208423368.23008.7018382662417322515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22f1e668c7dcb2ec45dc550b30fbb589a3cb1788e6fb4e5491202befdc67023
Date: Thu, 15 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792084233
