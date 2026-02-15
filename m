Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3D72D5419
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771152294; cv=none; b=lBfSxoBDq7873Uuiz3u6FB2YHjOayh71ma8zaO1LZBzREaEAINI40Mvph9o6iTurhWFmaHT4NWcZMs74Q9BKDyymSn8wCmJeW71OCh325ukRexJt3p5QtZwxiR6ouoHDnUYCruVTo4JjQA7FbIIcZ7C/8hALDQuuIaSzMiK4/a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771152294; c=relaxed/simple;
	bh=7MLmAG6K+TAg/LGS8XEUddz7K2bmowphmJ5vZSiorFw=;
	h=To:Subject:From:Message-Id:Date; b=seRx1FAqWHoVfMtyya3gq4ytbP6J99kIoSyOfKNrkogB3UTpKY2TnvleGt7p4Z0D1wdmiUfhsxIii94+ZvvJxAVE6hZPAj2G4240embIy5LXBZYAdev3lYR2aMYfpKw08Jm4IbkEWqp9Ym/8xGF1pC6RuPv0AVYD8JQfA7AKuto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJsW8Hzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJsW8Hzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA192C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771152293;
	bh=7MLmAG6K+TAg/LGS8XEUddz7K2bmowphmJ5vZSiorFw=;
	h=To:Subject:From:Date:From;
	b=VJsW8Hzb/hoeaA+iippa50NS5fgeNsqAWxazVZ5qe8DVsMqcjfXGRi7LrZyS0oAkp
	 c6hSPFfEQSAxZr3jbTqPnYGfQJK2ChKso3ZGcCs7HIPKlhmtlxcPZ1G9pLoHUoiyqk
	 bg/0oY+ivXSYY1CCdr3ij//qbJsX3bZEkg/3Tn79i3iA8X6egB/B4GpvhuMcVULpVt
	 1R5wYOeo0NpCeXRXjtXsHPIoTzsbApEQIn1bip3WOUI5kXxpnCaJ8CPD2Tmwls+RTl
	 LItKBQc6LCsNGYDySrtYdSM7IEXo7RiiXnN0S3WRa/W7kgCio5+TwSBihvczem8N6D
	 lDVfIDxNIx7FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4C0EF5871
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115229360.23819.1947932739289848467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0ecfc9e42af1f2a7bdaa1608e2f0194ebafdb6c1c326edf08e6b22d3ea2748
Date: Sun, 15 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771152293
