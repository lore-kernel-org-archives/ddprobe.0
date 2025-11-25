Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29819286889
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764068574; cv=none; b=JkbYcDN/BzARYZ8O9QDEA0PFPg6oE5wZmEQABfFSjd32wPT4w73KtK51vCUZFt2Yi7WR5JAcy/6hywgAEpT4h/GhMFo95rQwEnr7/JweZPNDZ+Yhtf835MOQxJ7ZgbSGmdcpr5CYmWTi0m5ULwcl8MWi4ithz7UdP9nBynZNFoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764068574; c=relaxed/simple;
	bh=mobvZ6+SYHvMxkXZIb5uxDGEUg0Z71N0kzPuG/e3CI8=;
	h=To:Subject:From:Message-Id:Date; b=lE5hnnEutTMEZr9igC874pdKiR7KVNkoFAGT2FDC3dda8vee21YsTU4Mf0O7oMg9USmBB4kpguoUgSOnIk5oW2fnfBu9W77T3ioLxFlbxuVLaMLqxf9pMAeyBpo6nXHK/Jd6grVU8VT0Qa13aFLgONh3PBBemOORVECWpu2s1LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMZ6P1YX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMZ6P1YX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2DEC116B1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764068573;
	bh=mobvZ6+SYHvMxkXZIb5uxDGEUg0Z71N0kzPuG/e3CI8=;
	h=To:Subject:From:Date:From;
	b=CMZ6P1YXZ5P+Fk0OL61ElOE22YHMxlgtUH5yt+A6gHd/OZR0Ud07Lu7enifoW8O8B
	 dBU0HITypW83i1JSio+Ya3It7PPCpyndRZLdbtG4gZqsHhaah93Bja6FquG8TOmGUo
	 jnxeBmcVK+S+GjOmbN0JTU1t9RSFZ32X+yS6ZuacWQ7qyBaw9swZxkKoH8dHkSrYfc
	 zyQh5Q6Kr1/v0lhMBp2Z0VxLrcA/U9Z6wyrMPFq0ZmbgSKCtSRLS9ACiIhPlpWyRiL
	 KZS2P0ogO/1pvjNEefGNGoaxt9D3+jLw3KpUYF4RlYzFdW6tTF5Qs7oc5SluvtgJtq
	 kmIVNDH8hN7gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9695AD0E6C5
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406857359.13568.14206836321073303838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fcf411a558db89b7b49e228905cebc45ca3fa5d436becf6346449cda4723dd
Date: Tue, 25 Nov 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764068573
