Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A684309EF2
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761420594; cv=none; b=hJil0rdONt97F+q0Ey3EQUvMySXkZNS/BF6VzL0h+FlwoFyEDvOmMD7pMJ17LLrDxIPM+RHssDTd3KsbDnMldOh05jPKjsWSWc86w7hFRANit6OUYBeLeickIpf2IlRpqv9JmNkhkwVP4bbn+S3/84aKUEgK5/D7RUf5wZY6SgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761420594; c=relaxed/simple;
	bh=gfqaEbT6eGtXcn8DIzl5RXZK7MMPenTbzTDKsYkbO8I=;
	h=To:Subject:From:Message-Id:Date; b=ZMIU9WuTKRBa2bRQjR7hcMsy0i0r/XsXrmKa7YcrByL5RhkxPSdy3defRlsPTq7Z/6uQ1BG4biGhq1NMtxCG0UkKxHOJQXfag38kKaWIwb0jK3ElflOyanXwv4P8OQp+eCfJ+wac6gYKcgs5H5GVaKmCbc7NI0FoBdPLwjkNtBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZ/fR7SJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZ/fR7SJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4245C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761420593;
	bh=gfqaEbT6eGtXcn8DIzl5RXZK7MMPenTbzTDKsYkbO8I=;
	h=To:Subject:From:Date:From;
	b=kZ/fR7SJ5YUe4Yh4akGMaBhcREkCw6ItXGw1BubG0RGfpkQO8dpTCl5G80FMMAsCd
	 GWPGjfJTuED+UIonvpuDU6hV7InXzlX9ehxLwZ0Jq964tulfBFgaf6cH7oszAZfQa4
	 FQkjnQ1mmX/+6YLS8whPpNnGTIUf7UcGVrng1WpQ1b0I5aOju7ckoajxasj0bTQ/n6
	 6xUZdhYq2UI0OETO0fOwbbFJfsnH32P138C/5vPmDR5SsVMkV4Rx2YHhR7Ka10JaOA
	 pVDTzEdHGiGgsFhYBR6ZMXmuIy/3g8OwYsR/DIzd6QoMUh1h24I3/nStHvrk6/lq78
	 ndy+lkZc0hkgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9139ACCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142059358.6753.12883870778095183897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dacb0b109b132eded70830e5743475a835f8a91b6871d327c54b45fc70453f
Date: Sat, 25 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761420593
