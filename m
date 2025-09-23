Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D7830274C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758609594; cv=none; b=HfDEjaj0fTtpfN6LAl6UK7G93hJX84p+zVmgMQqaVQmXT0T38TPk6GwUhRF10eDj8f/GRbzSIDFG+x6NqOsb2VpsQ1WLh6ZnizQrqU6DTBLFUnVUckONMZZ4dIqevJGwQAT3FECiq76KHYS5n1RY4t5q9iqi26v+XwlxjfR3MZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758609594; c=relaxed/simple;
	bh=YOXxBFCgp5g4a1U6WdkDSzDzcxNgHkz1kGYlSlf+iAU=;
	h=To:Subject:From:Message-Id:Date; b=LVGdyibmhROUagsvPRuUdfRjqviNJncjpF5ulOEX45eg6cwHCNyV5HGWkOsEYgiPcE/1/RSqAXhGmdLCe7LsLR4Z5XJK5LpXrlQQHfNmH9JGCe1cZ/Ss4skWY83d8pEFSNdHSvGe5eDuGXhaYtgaRWymle28YRg5ILbCJhGSDFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3oJVGgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3oJVGgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A115BC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758609593;
	bh=YOXxBFCgp5g4a1U6WdkDSzDzcxNgHkz1kGYlSlf+iAU=;
	h=To:Subject:From:Date:From;
	b=s3oJVGgCUoezF59K67jl4oWiIDVNDKeMtGB8YrNIMH+WzRWtYBlxzZrwOJ9EOvZIt
	 xweXSAFwI+srd+Gsq8MmPutUMMBOofcyFI7BVV00qqlts3lUGYAGd0J0f5bWFy7gMZ
	 h3pPfBuBw9mqoBXZ5EtZcK3L2cVbQBh8U3Bc2H+pPGFhzXDmnftpgIcuApEuXSl3z5
	 TMe8tUc11P0GfIXTHmfjZPwirUD/EtpNrjlGCUs/m24j3Zruw+ZV5XPXLHnV2/8bAj
	 o8VrjR3pTQvhgaiOHAja0GN0I7OVV9P9KUYF/qmN/vZ6GhSg61oey6HOIllmA3ii+s
	 e5zN8PflaueMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F466CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860959357.18458.3554667930934050952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90467b1f9a4ea4fc08503e0f90cddc875de504b6f0bf3eb73b1d1293484e1a02
Date: Tue, 23 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758609593
