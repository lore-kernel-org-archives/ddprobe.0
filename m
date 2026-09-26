Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A531D9A5F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790388034; cv=none; b=I2r4NIkXynLuXNupRLMN6y7cxVBFIU7aFXTTeXWpNGS274i+OzWkcH5JNYCmPp0ir6H6pjhKu4eDSwtBI8meLbFIKXAt/zcK/UZ6PdutZb1T1rvQtxbi2jiGLw5jffAB7zEgCH5DrMM9kHXKlnJKjIrtH6etjjr9KXg30Xd9+Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790388034; c=relaxed/simple;
	bh=XDzRVEyKpP1yjyTtJE+AT92bnjfTyFtzywfrX3mwCV0=;
	h=To:Subject:From:Message-Id:Date; b=nbPfTEMa+0HwdfY9XcyS0M5YbfjcwUA7ytkTsiwzFB/i0Iv5lq/TAGeRiFPDYT0Sg53nbW0HBqgQwQc7f9iXGUmDe5thdVhfnUgghJPyJhPFGF1N9Z6J2KGskr1erkbUz4DQ3lKt1ZTT8XKqVTY61JIovPd4h8EtkAa6gA8GJXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pq7EgBNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pq7EgBNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC753C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790388033;
	bh=XDzRVEyKpP1yjyTtJE+AT92bnjfTyFtzywfrX3mwCV0=;
	h=To:Subject:From:Date:From;
	b=Pq7EgBNXDj3uV5cLmQp4/7LjQxP1kfT0V3zkDqkFKWxPer++Jz/mvmNHyzjHjhgpz
	 1uAZgkKRweQ7+tDDIrFNLyDrNaEumKqF0ZiwdoLzvKGo2QR2n22ArOZ07skSCWg0D3
	 dLCVhiVPojrbkHDHoJf6MKyuJtokZMntXL4OsJb8S84Hwt2JvTOsM9dT/3p7sFSBvE
	 Uqur5BJR6+JnvtIW27AF+s1pN7vN8YICBYX5zCszIiJ28C20HlAIfGSuR7CS69Ts99
	 uzRm0YBeQioOk1looyCSn841HZl45WE/pMg+qCZZJT2NlPI1rHrbQwNWzK9sdcbnZq
	 T6Q7gbSw2S8tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB18EC9830E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179038803369.24904.5135652620535115397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852f8910d4a9fecfda941f0e53b88fd56159e1585c332e5c4cabe91ea82f3094
Date: Sat, 26 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790388033
