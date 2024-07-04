Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9B323BB
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720053923; cv=none; b=Ym3Iwaai4vUCGFHRfLs4nX0o9ZNnGxWX9HeaxYXnh6eTZ1yEpDgX9jwwFRkylaFxS0SpenyN9aEcxLIUiCJNugEbwb+wO5KXObLXDVRkPYdvB4EfttECR+Oym0oimrLE0rJdA2J/S4TE3VHzkW+gsIXbZBi3m4uVyCUvJAFCgBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720053923; c=relaxed/simple;
	bh=4uXOlDhKU1mO8wF2ZyQGtJpkDbfmgyBvgdXLVq+Gw5I=;
	h=To:Subject:From:Message-Id:Date; b=sgLhteoowTGnIx6vh5+TwmSakoWy0HWs2tZwHQOtnyH8NzKVmPmp8lu3NlthfvjqDHBp6ORVDT7XnsL/+E0JcVAEHrNYxaP66yDtBoAaW6ZFksLuSiQH0kfqyqzEwX8+mJ91/nynXjq7Ig2QDD0AOanwTtaar2dPiI3SRPNoZYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upYxHBhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upYxHBhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8F7C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720053922;
	bh=4uXOlDhKU1mO8wF2ZyQGtJpkDbfmgyBvgdXLVq+Gw5I=;
	h=To:Subject:From:Date:From;
	b=upYxHBhbHL+BoGF9618KHGhK6pcas5uJ+3vGYkp2BPiTOnXU9Wey6E3Zp4kT06b5g
	 IO1TOQaV/O34aPN14ROPDaYwufeYpEeg3x3yIgo8a8ji5usX+c/z03Dy/VVzuDZ0V4
	 Tp6k1KW55JALPUOQ/xbBLIy6MFzPX670LdPLiEFnM67mWHVmpUH8bGgVXJA0ecXyUN
	 YnHhQ+JyNipMkiiWrsw9T+SuVRHDs4F3sQlB4BtQU1KYARRUh9JE1eS/Jd9kuMpBPg
	 j7Qgt6cksHP5vISSP7Aa4Tnan3oG+HvrD06Kv/MLhVZzNXYJxI/wtC0hJsxLaqzPTW
	 Zf4p2t/mSBOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5225C2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 00:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005392277.8993.10528455762344608615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd3e98a77b97e623c2b02790e4007dff6387f136b1cd98bd38f9a3c2ca13d06
Date: Thu, 04 Jul 2024 00:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720053922
