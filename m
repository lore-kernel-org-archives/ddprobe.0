Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AA0253F2A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747019994; cv=none; b=c7MCSdjtGZZY0LxtK1rpYodztoDc8e1AbdydepoQS5tSlxyZwjBkFUqlC+DX+EU929CRB6w87f8cw2k9zoR1siaWOAKiu6zjjtw5PGL/GuRUz9Q2b5VzbJ12hN1T0NKlqx0zTzeqFIXUirO2SR+vtyeoxBRfNPiV2qa5xX0fReo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747019994; c=relaxed/simple;
	bh=Cft4jGUqYOb+zjFK/+sn3rjFcHi1DkPjoxRyI2TtZ1E=;
	h=To:Subject:From:Message-Id:Date; b=qYrIaPlA7mMXcjJC4L5beeqfbuGYNqrwvCGNOBvspDNoEL5Oo2AJgKM7Fny6RJ4miX6R5BYwEMwu6mrSTod426BVEpifTqVKyyCIzvgnzyBTKSsNw18eeRvtP7EFmPaK0OCocJJymXHkax80rHoJYCN87LctCKTlahJShSamHX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiGDSo4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiGDSo4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC8CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747019993;
	bh=Cft4jGUqYOb+zjFK/+sn3rjFcHi1DkPjoxRyI2TtZ1E=;
	h=To:Subject:From:Date:From;
	b=CiGDSo4VCce/p+RL6TLdxXkQIg+puBpdT/MpyNyeCoHkJxgiGUZwh1o6HXIws3HBP
	 XXXwD46tb1ftLltxeq/L9r2fZngHmtAvHoODepzVYAOHKbYjYUvirGbbRhIdtqizXQ
	 Qq8jWyPKLQdkWagSmbNJsYkU65J2z353+LSxcN0NzgTqcic/dKG0HOkFhov/U9iQ/3
	 2HYNBcGMJkNl3keuPqwqHvii5Ms0krE2JIw+raLUBWeh4ZP11LCD5Q3Xv9xpFVkDMG
	 dqg49N8oaqSsd/Mb8C0D1uw6hA8ModDloccCoRVR2L9qJ+CEYLJb+qlqeb3uVwCkE6
	 ld5YEsVQJeS4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B2C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174701999357.11694.13902517371710199407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a6a843132dc752df4eae1f09974f7dc050e521e8dc514ffd756f5ffdbb9873
Date: Mon, 12 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747019993
