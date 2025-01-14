Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D4B1FECC6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736884554; cv=none; b=l2jL70p5qKy0GLYgakFFUtEGawAWADgAaihM7F4PA8jq2tBacINBzMpxRmn2D1q7EZq+ltOByzEOirjC6GQgB/PZu3X1ViW7nr5aRUXyREjQp8ZDOAs4ecXZtqfAKSOtAn0g6QAiJmqPm3HeX5LDRqIyZKspb067qXsdCFAGd/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736884554; c=relaxed/simple;
	bh=TtpXcD09Ly28Q6CBZGbJi8m/lRLXTJ+9MJUwNzu7jKg=;
	h=To:Subject:From:Message-Id:Date; b=CKqqclMCVA/Y+IYECGCTluj+M2NFI2va9INXHKmeNrc8iLdM9RWRzcCk/H2RlbX0xSVy4OwTF20bp/VyiNFXy0uN6diu9WS1RAoYm4swiaP3yz+MAA+4TaBnsyiYYB6rPrzSULz4XYNZVLGqqnXMJDLz+NSOdF3M2cjidjxheyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1mz7CX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1mz7CX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD5BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736884553;
	bh=TtpXcD09Ly28Q6CBZGbJi8m/lRLXTJ+9MJUwNzu7jKg=;
	h=To:Subject:From:Date:From;
	b=k1mz7CX7sXCBF8ywSwFSHDbG0V27Uw/8pIeg86bHCSPi1UAYjnZta8iniFFtdA9dp
	 r7pGN4PZzTEFzqKdK9YRUZHhGRtxlXcp948mcSTaZTsOGeqT9KrQ5roItfBiSo9R8C
	 U0FAiOIL+mojWDwreLp9HsJ4F+gizLeQSwUDnAmtZSNkT0qUmMHxff2p7MwQXcCrHK
	 sUw8Umkxnp9DsX4BpFoeTuQ/v0WC7cDOinczVusbJ7cLKtKdGII3XXh4cdeeQ6wQ7r
	 2pWcbEXzeuQftwMiqEmk2jEa3Dgvs8Tx18ve1kSi3CtZxPZJ9UwFmQTKVGjZvByxFR
	 O7AKxBzmQoLGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A0C02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173688455358.8593.16611083827232743069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0250c5bf03b8708740b55b01dbf7014972692b5f72d09200d3f5e6561ec176b6
Date: Tue, 14 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736884553
