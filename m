Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E572F3E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749382194; cv=none; b=Ie+H5T5w9w8vUhVZYv/i3EmW8jEMdbmEaTOwZXHzPw0a5eLZSnzuzF88s+AnUMfFXExVGm1LxTTj9qYvHhrD3JlrOTnIhiKg9pdeBF7GqVsoB+bqzGSaFkOdvHoaS3H0R3ph5RDv4s+E5iIoi0s2v4IOU+OW8dStSdduKL9MdRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749382194; c=relaxed/simple;
	bh=oqg4X+7CeacyF7y/fSgkbEefwQCMl5+j8j8fu+J9C+M=;
	h=To:Subject:From:Message-Id:Date; b=Qps3jUef4v6aZQgRqPGI/IdnoDEDg0m3irqgjPoPzFl0CsSzOWKrMrh/w7olWAat/V9iE5HsTyqM9+9HBuM/I3U5Rv4VFXxDSQnVF5t7uOpP9PG9d/F4c07tc8/TnkOG6CfFXF5IV9q2p6Q9FtUDxdkO0MCaCiERW3CCoX6DTfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4KPhRhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4KPhRhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AECC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749382193;
	bh=oqg4X+7CeacyF7y/fSgkbEefwQCMl5+j8j8fu+J9C+M=;
	h=To:Subject:From:Date:From;
	b=A4KPhRhDjJr9uv9fDgvjZHqUET+H0R1r5fTNRc/tXF54KIIe8eFJanhYHDhZ44G7R
	 bn7mEX7JYBi6Y/2tgVkRt60b6gW7rJrSXnsbFO5QyM2MAFLclkT5P4B+2j0j3M6Ply
	 UKIchZfHO8KnsXzTJST4DdhUma5AUu3t4IbdmE15JJyPViN86r6lmqZNh2SzyNCR8E
	 FqXSUjQoXzTIgY9KNLdX46f8uwHDqm3PAqiqOKVkASaHb249CuYx9+tHuJFDzzMrYf
	 ljU4So8Dazp/qPsmiRXnh7wG0i5QxBp7+rMDgxy4QjwtoX5ViU8SEN2KeFRz18PO05
	 9rLNQGaK8IEzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F216C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938219357.14581.12103415568878079957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbab4d2a792c3efe474e84e2666793611c3cd1c8660cb1c45a2621a0e2ba72ee
Date: Sun, 08 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749382193
