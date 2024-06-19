Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F0748788
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718776163; cv=none; b=Z1S8Ppk/DaEXnsK6vetAc9ZcJ6LpRkdc/ND15OzAN97hU4CwDkTKllwUUJvTwpqTWnZ1VHT2BnEwfBqa0uqIHrMZ2LFo2aBFNLkRu7mJP14TPFJHjKgS6E0mmBHnHasInbVYRNT1o3mmrtX5vTtJ0ameI7j2hYbwuA76UuT1rtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718776163; c=relaxed/simple;
	bh=99f7AtViSXjXn/EYDX10UCNhssNwg+hHdhw3TxzoYdQ=;
	h=To:Subject:From:Message-Id:Date; b=k5y24QaoGUdcCKVzPtkX792chRcUmygBLqYruk6lJVBrTa+sn/p4QRGCfMI3OBUfdmZBYK90Spb4rsuunckItq4MNlYWASdZVVdJixVRFV7cNNWUqrqHUxqARFp3/ZNMvUp0GyOjHqBwkJWb5YW903pv9gX3wRdtDG0lb5vbrew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=On1ywkZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="On1ywkZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C2CC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718776162;
	bh=99f7AtViSXjXn/EYDX10UCNhssNwg+hHdhw3TxzoYdQ=;
	h=To:Subject:From:Date:From;
	b=On1ywkZ9KWTjCEYdsL+8U2xByHw89Hov61+qWR2F5TgHRfPaTacQzFphmhxW+MXvw
	 cdfXCLr5wsOYudrIfaNWisRlViuv7XVJvpyF+c/KCOVwqZvuRbD3EXwipk9jMHqSdS
	 auwNb6r8/FuFQsl7u9eljbxlyjDtWPMpGQ8zdOYjizy0gBm7o5f3AsYAGMF/bbY/M3
	 xnQHWjX+4Texy0rowjw8M31QCS+qblHcLHtJ0zNIA0VeNUXzK7S5CMXgvbTDdFlHkY
	 +vA33X/WabC6sVQ/PuaeC+TC68Y3VZmeelxx4PkqmP+9YEeIwptb/LFcrnowJsbzp+
	 VzKWExT1OmPZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28CDC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 05:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877616278.31936.3650646586939344711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4c1be1481381ebe5d5c7262e14172c81e32c806a9cfc295a7f932a0b8e0a25
Date: Wed, 19 Jun 2024 05:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718776162
