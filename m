Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372E02609C5
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766487834; cv=none; b=ELl6h7T7ciimbgJ6p/dIvVT3uIJof5QEB3L2cMPdM7T8ZfETVNSOiL45pUJZYI9uR/kKZDyuos5DumMXwX2ECh2+ylOa/iJz/GagaxiptDGUbyq1f4BwUkXe423V9gzTjWp6lsvRRuYpOiooZXIxOm52d8Ogu25yfQKscFVF9uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766487834; c=relaxed/simple;
	bh=aCmjIagNJ1r9d8jO685UCyqSh0uv2SOSl6tvF9OobCk=;
	h=To:Subject:From:Message-Id:Date; b=BxW9ctNrCqXVPSzfuh6vcB7yjiMkzYy6mkm8EyVZgg4ltG7pq9VT5lejsC/s4LiafLIGeZcl/4qtf7VFV+m+MXMwmbLu3PfgSlsD5CpglsDfvgJU+NJnqr97ar7b1/lHeWqx+uhozg66NSQWL4j78Zt0LFN7ZwpIEHNFUokoegw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSP4k0ST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSP4k0ST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6043C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766487833;
	bh=aCmjIagNJ1r9d8jO685UCyqSh0uv2SOSl6tvF9OobCk=;
	h=To:Subject:From:Date:From;
	b=YSP4k0STzomfZzih1jTpCJErDujjvjQJiLjGuURv1WL60OfqmZA8W2x5PxPYU7BAW
	 5wzrid1bcT7GuSeCbiiIC8C6deERG8b958mM1e3julw6PV8MkwoPtNsmLWKXGVjnel
	 USxhJ3zCaahrCDe4qN4+Cn92bqDUCX0rNYoG+5tacetz/tN2H02Ss7zDHZmQpqCJr9
	 zNihv7JZSV7Qj4OxKyO2FG4m+0k10czvGuDqSvy+8/HlPnENrbBE1SPUPNg/KQM5H/
	 lBgmMsZm9avCspvX4YKhBmg7i0AOtMmBh49pBjvfjv36BKr4YRc5cgVjk4xjexivTe
	 IFZeTt6Ue3GaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F31E6F084
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648783358.23151.16177598666782517783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc1cbab4addaf1f6ce2d28bcf367dce2fa1871ed596c305dc3db3fc14a74ec4
Date: Tue, 23 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766487833
