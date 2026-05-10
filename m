Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34762287268
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778416834; cv=none; b=PsWcmH+kn5eY4bnRMib7ilzAKIGQD4R/XqH1CvlD26Uetv7cidQOwf35fkk7taqT7q8h4cac9bU+r39xUmFQSe05IgQpsgZmOxtJrcnibbOb3VO9BQ44Y8kWAIguP1xDQp2YDUdGTzrAaGm4yozdhRn5rgePbnAha5xPfFOiays=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778416834; c=relaxed/simple;
	bh=6wD1m4eg0hvTEhYRVnrSY5ijTUEh3ERNEm1zUkTM2Hk=;
	h=To:Subject:From:Message-Id:Date; b=NT1oriIR6CQgrnGVZgxwbc5ScUFt0tZBG/Ig0nAOBer4dG2LDrVJEYv9U/uBXl74Bqt5NmBrQeHDT0SWQF+P78DofeilQsaEYtOje7N0TDR2/URH59vdBPsWCeVs5Pz15qfLlVfrVONVRTEUutvYW2JCdtaQGjhJN6D2Kcu8M1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUz4NNnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUz4NNnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EF8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416833;
	bh=6wD1m4eg0hvTEhYRVnrSY5ijTUEh3ERNEm1zUkTM2Hk=;
	h=To:Subject:From:Date:From;
	b=HUz4NNnMFyTEgcbh8Wm5ymLFPddLOB48HzNd9eTbomE3hcMs0j4Fmh6uGbtKALtKI
	 ZqFJ7sI8dKW9WMVReUYmw3rwQgYY6UXjWsw9Jx+Z9qhZl3mRp3tFHMrgHA8laNLp2l
	 /4oNLi1WJT7q17C5G4uhlfubNT2UqKoM3kszPNGrkqoYMwnpE9Ens3108Nad7ud+0L
	 4z0XKJrUeBC9Lc7WNRyuneMZ4tyD1v/uMBkZ9XMjNEUACe/W+rIUd/uM92N1l91Bz4
	 FaFKFA4sD710YAsPLj+PBf+mdO0iQQNZHL1OQ9/v8NwFLUJQGKqCp1z25sYg2mP60R
	 m3KL6hL9PvSGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE84CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841683369.6223.100861315005118269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b112666edafc950df1ea21c86ff1b5b0764826035dd5e611d3be6b8ac50346b
Date: Sun, 10 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778416833
