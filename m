Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3408F154C1E
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725267954; cv=none; b=Y8DDBns887ll9FI0Qe7X8G4+1Hp1XmZf3OFNZJwTMGFDqz4vs/sKw+N6yaTz7AKDkD5nUVue43fyPoMBZDzwdhB1Wk8e9mIQbhSLtGI4wNnvmpmFIZbKorBKsIFjBfGQtYL7AQFX4U1hPzjfOOuMWFM5KdwuTdf5XxYbRkn8TVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725267954; c=relaxed/simple;
	bh=lFQ5Cc2vgJKTm0i1BNDa95zzcSUMv2grtXRJ22zHydY=;
	h=To:Subject:From:Message-Id:Date; b=RqrW4y7LU+k32PmfUSOfwdXnBYbUWN9EkvlUL8apamiSjSbdycyRgLQ3igGN5YDCjci36kurpwEl9PIcS/5XmX5Ca9k/YvmETcTe/pu+n011dONsPGII5JaqFd/y40BaAsRdNmfyvMtYcNN29SD8GC0s8vS/sygeWMuM4XKCplk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mczYYCbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mczYYCbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EC0C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725267953;
	bh=lFQ5Cc2vgJKTm0i1BNDa95zzcSUMv2grtXRJ22zHydY=;
	h=To:Subject:From:Date:From;
	b=mczYYCbqwlebijbSjqkq8WmtFTmLWcDAHjNzZze6lklHxhFEM7nT/KG4ZYhYII8r0
	 mvIqO547OZGxbhs/Zeg6xoc+pQ4xDmp6bpIMR+mG2Fv+fWmrwGKor1MINT3dV48bgV
	 vo5EQ/UuHY7BZd7SG3KsigerzNpYSCR1x+CS7p8ZBUs/h6VeA/XVg0dyxgVii8/dSo
	 LiR0skr7e35B8GdJEFGnyNwf1m9zmo+u10+uOOGXic/PnYBdUFIGiK3UpSdFlSrSWp
	 6YL19+SopOVC8zsfY2rJ+NGinLvFzQiQNH+h+UlCLkOpLOEB+TcAzZf0x7TUjUcXmf
	 wPB5yOnp7Ky0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E3FCA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172526795360.8090.12367529075230530356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716593d9385dde3e17bb0a836621b648873abf6464af2d6ec9f10f9d1b463d22
Date: Mon, 02 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725267953
