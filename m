Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C882AD0D
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760223594; cv=none; b=a4bgjPCfcvQSIDc+bm/aE4NwaqEk++NmVY98+VZBmHCt9srLqrS7UlhbnoMZMbS+/OyiI6I4LbG7LvvGy8XFMyAZ1GFwnra29cbjWCCPYDAclHRmCYXa7VUbyNAMVtJqBaT0V+uWdWeo/lsfSw/vI6ipC9pwsM5fP1pdjMFwjq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760223594; c=relaxed/simple;
	bh=P84DrhHSTSIbGUeo2UP/ldIXoo6EGLW4ugkKfh+C+pM=;
	h=To:Subject:From:Message-Id:Date; b=Tf5WDEcKFO88rKaomfo29vUPQoYc1w5PLKWLHQk5MZ9ESdS0BaAy+p3X/ZETDAatW3Emqiuro2LP5U+/4C6mOAHwLDYCrey3FZ9cB50uLo+BXqM/foIVDSvM8rNHmxdP02npP6FFafJJTElep3gDDT71NZSxKSYd3toTeIO3oMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLTeqvy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLTeqvy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB89C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760223593;
	bh=P84DrhHSTSIbGUeo2UP/ldIXoo6EGLW4ugkKfh+C+pM=;
	h=To:Subject:From:Date:From;
	b=ZLTeqvy3II8xwbhc5rsdokl+zAXNzHOtsxGhO34JU+6WYsZTM5HmOAb0mCu5mx3qu
	 SsHw4L1nK0h+oTnvrRfXm4KLi6kK5/u/RNMK/N45Tnz0HEEXNjwZyNGBmtL12q4IIG
	 BGUXrPdjWwGhKyeagb4FTzIeNixZwYiIo1JkjdJjZZHz3j7LZO0JGA6ah6qCfYH4RW
	 oJW3va2lSjoVLBRTH/+xAvhr+bclMa+TBVqVxw3VzFeq1Bi9KENT1iuOtN2pD6uFw5
	 coEoSACgafpDTRPnn+jxq9nzUYwhv737dih2MM1JA4SYvcFv050iRfECTgIYW7oofs
	 VoWKC+MpogxhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BD3CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176022359358.29285.8167023696136283264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3c87efe1c9ed2d7302d7766950535bf0b3ffcd953134f284048872da294b5a
Date: Sat, 11 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760223593
