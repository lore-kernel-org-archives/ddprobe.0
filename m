Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AED29A2
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764633774; cv=none; b=biy7qHXpwV4bmbBnJLDj+fZRLytvA5f5c4Ou8ljqdzKJOEw1QeRwQeEZrFs2R3jcOkWIDYSUhAQ6jKHM6HHN0GQWrjHJ4NwCKzL5y8/80b1N8YNMKuH6Hjoyyec0042ImQsVqMe85+UkM52JJ7w9gTGjqdassH6gTjj06XeoVFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764633774; c=relaxed/simple;
	bh=kk2ZF07w91odmReEQ8/tP9z5bJ94K0hESLqqkv8nb/U=;
	h=To:Subject:From:Message-Id:Date; b=sySozJxtUuHDO6NeMG547u/bl1SUWJFJUzxvqth70UM2hdGuKlBJNFyf2l/wns79/t+Tj+/T+MtzO5OXMPYgJiHXecunno3HHm5x8GzD+0e7mEiy6Es/kCrJFSNnbzcxolDYoiFW/9Gyl4ewsW1kVKHPSftZBDAqwLAEZg6CTas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GurM+Ea1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GurM+Ea1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA97C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764633773;
	bh=kk2ZF07w91odmReEQ8/tP9z5bJ94K0hESLqqkv8nb/U=;
	h=To:Subject:From:Date:From;
	b=GurM+Ea1n4VDKPGISra/CEVdTETOODDf4GYnZNqKV/VLZKmX/Ss2YMgj5jMYizO1l
	 IRoLj85EgnzvwwW26qGYUVcc6Nv3cey5iKsg4Jx32TFwBCZMu+RIOooEM5LCKbQvcB
	 kH1XrOJjccqt0dPpRg4tNIHfv1c6iNZDe0x8mk5/wwUknN/EGi8zp/Cg9+pOUkVJ3b
	 Vkza2HutCrSmte6NAwrkJJWj3TeOZ+ImBBmoMuMAcDWLEvJsZUyklTYwuRUxXFc+V+
	 6W/V4lVozaO8E6niMxsw+CH9Q7qj7A4mx5O2iMf7yR1Sd8LLNylxw8yKNSCZauubvr
	 Plz7vMmEDxSDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9AED116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463377360.14855.4575111365195125657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70eef5653ba9d6f576c36bf695469bc1fe3cd50dbcd8ea2295a53123fd62c86a
Date: Tue, 02 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764633773
