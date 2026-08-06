Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B7A24886E
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786047035; cv=none; b=W23Pl4gKG1rU4iZUlVezSCuTpy4piiRzQDRrWJphhWqT+ErRWu1znUDAoDm2XGnU6uNBYyDJBvTet5DX4VuRvobpxhhBINSfzDZRvg19YToBeAhZTSBPEp8OcmKtT19fph4TLvaQGWNT3GYLEhoJ+yR8bHGlyC+nQWs3lkmpp9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786047035; c=relaxed/simple;
	bh=F7OVUCwYJhX6KPdcdpg8Al3/6L2leM9Io1HydLs50U8=;
	h=To:Subject:From:Message-Id:Date; b=YFT9dApTRxtYXUUaJlSYwdql9zfyFV/L25DoIQeLajcd45ql+/7a9EN+61DtQhbDZ48jL9zbeQGy6bDc0V0QDRC2npodREV5iiENePGo8f96LMJx9DWgzDnXIHCV9HHyadN219hJAdI7xppAJBkiUqVuR2xP/g0aJlk6AaY59LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZEDeoji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZEDeoji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D483CC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786047033;
	bh=F7OVUCwYJhX6KPdcdpg8Al3/6L2leM9Io1HydLs50U8=;
	h=To:Subject:From:Date:From;
	b=JZEDeojikrz9hsUipYJJKy+lJJcvRyXObc7E5o6vdZHdjVYwDxmueNW5KrcbNZ7qS
	 OJQN8tYnZOiu3xAZN8SSNguPhr3y425MgZdquBihlaiSqpxseMlyQwSd4zxWcspAkq
	 s/mGCmrQ5m1BrG5kRlavya0nTVP8UwDjb7JwJA0GEIMs1LkHabrA5ov99+fjOc3Tpk
	 1h9Bj1+C0MuSnmXdVSHQy9dzh3qFIsDewr6wPlzhGu1+yWlgDY5DXea7HEhlN+UH/6
	 VH7AwirJSowtQmURn4VBeiDkK5UqxZlrrRI/9bnnscYwqiTjVj3rTcXa5kURzOgqpV
	 UaW4wtIxdHiGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE09FC56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604703369.27643.4126266206205752215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e80c0a0417957e885707c5d4610f6bb5256ead6b09308510761c8a742964d3a
Date: Thu, 06 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786047033
