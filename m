Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF604688
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708739297; cv=none; b=V3nGgSLDQy3B0ZFqerI+SOikDMBzrEv9WKaj6B2FBypEKRVDi8LI28VdI2iG/PkIy+9qX0gKMTwo6N5mok2iYNeNt45IirInhAVk6owSQrmQHvXqbaAFefbSYCm2+isOu5jmC8xHX90q/N3wx9mYqgx8/lYzvsjIbYHmiryRrm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708739297; c=relaxed/simple;
	bh=s2ILDLgXgoujqxsiXW+32UahS4M5RoQNi7yRjkCguNk=;
	h=To:Subject:From:Message-Id:Date; b=hXVBmFc/2pXJxd6CAHScUIthZBtaZFZh/5NVjO3MGLWUgOWh4TgG3/2c8qa7YlkBJo4+6/OpGKEEOn4NiFCBa2ddT9lOdPTqqVP43WvxPJSWCGjLQdj8fBQYjTeIBQG4xW8s6QQEDscXyl/QW9jCQQOO3rFvBrErLsoijOJItDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTMXZweR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTMXZweR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C175C433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708739296;
	bh=s2ILDLgXgoujqxsiXW+32UahS4M5RoQNi7yRjkCguNk=;
	h=To:Subject:From:Date:From;
	b=NTMXZweRl0e6JJh+s8o/A6LGFrY/dxAR22gqimNkSdZq7WGoRQT/Tugs4zhI21gG8
	 0smw7ParGezh7uoitwYt19uAL1orHfFIxBiFhNh1cisl3dqrms2DvpNTvoGYUfKqKY
	 C7ipOPs5RAO4wwR3ERcck7yFFxNOOMDuQskR5QKFbXPTa5ZJISLt0PMi7Pf7Kk547c
	 kx9Uu+i0cJvdZvna2CCPxTyXIKToU768DyB5HchN0rXE5qeKj5fnRgkdgEenaDizrx
	 Bphp2k0CyIPndUDSYNRmA/WGyohWAtqHI1CckL6T4JAmj/aKqUU/Za1a8E+YB2AJ2j
	 mkiRgRIrd7HaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A2AC54798
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170873929639.14691.5173420261503394234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6b0e937a4c5dd1348cde714e35b396d89d79fad320b643fb6a99b693154e2d
Date: Sat, 24 Feb 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708739296
