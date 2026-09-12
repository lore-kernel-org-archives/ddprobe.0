Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A941E5724
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789175434; cv=none; b=kpRC/3jMNYJ6POWRld5dceqloFRqx9EyR4gFBwJSNxu6IziZ+1OHkwp+ED381w3qVUJ6XqgBDiXruOxfVbEfbFlKdecT9eRdbaIl8QA8XFW2kBNFMr8geclOtkMFqTvkdYUI4iUPTXCl/wpkRIEWwm+/CkoDmZpU7PxCQUR/G9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789175434; c=relaxed/simple;
	bh=VwUrM7GDThIziwllCn2zksGocYSBFqPhSoQqSpu7bwU=;
	h=To:Subject:From:Message-Id:Date; b=f0XiT/eRV+Vww/10orOlJyhK26v6NuDPvDPTghGLbwHdJ/fG9ZsPvnOjvwVPn8aUIxOdJ7iMWtFeKKjFgTlfIFlW0I3uDSuXusuL4D5StLxnB3EXkcZ1B4uofpqBbYl1i4R+z4CO4SauFU+GTpvXr1+X/KdjUJmrCqh0g5vjSow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAA28ucs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAA28ucs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7942C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789175433;
	bh=VwUrM7GDThIziwllCn2zksGocYSBFqPhSoQqSpu7bwU=;
	h=To:Subject:From:Date:From;
	b=LAA28ucsdBLTxK4aLgwFbsrkT4A4TpzoB9nODNzh2h6Fok/tDQy+HKCSVnZJIk8qh
	 W+MQ/m95OAKDBMumpeOm1uJrqgS1lBm2bKI/oURKWWuoeJq2c8E7W713DTVn1Pv39l
	 G3v9A7GeDuUtPtcXzxa4PP9ZBwXVFDi9HbRA0KKC/8lPbH8W2kIV5Vl5qxmlwOV6/7
	 +dpLbUCsG60vudWAvsllYjyKzmkjK7f4/rrFtOBygzhfETnK4ekBk+vbuknDifWbIX
	 BZbaU5hnf4w1B1Y5Ai2Uk/3ZcmidyQAwtNmXbzSWDRLG4j/p9Y8hAT9NkXKCOZglXx
	 nJbMduugeh5cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C69C88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917543370.6204.7812042697241734129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a558a13cee5473a60a6dccf1d24ca9413bccf4039d181dd022282d09e5a637
Date: Sat, 12 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789175433
