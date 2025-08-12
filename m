Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3917D17BA5
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754969394; cv=none; b=SO1x57OeiHazxl8ZN75pNeddhTijVLRthIZX0J6BEHx3jFxDf1E3guvSnogmofmxSneFruWzPfQkzdgm2pOsgt1jYUQ5cIrPOuEeDidgxI8q2pBF7aEdmK/sVptg0TJMuqq+T+8INu8vZaJquOxWdQ4LC96GVSgBxeQWbKYe7S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754969394; c=relaxed/simple;
	bh=/Gu8LbyH1cOXtRpwUdqQxHgoWESW8cKfJBiiLDAZf0o=;
	h=To:Subject:From:Message-Id:Date; b=gwqGy9kfjaLBOl2u+p10D5q4xkwXGoAXwcJShFCa2RcPLaT2MOVOAOq//M6vTcTF5YWpaPk+6BI9l8nmAmTfVKvYOajHo/8QWlb6D+HTF7vHpKS4OPDFIyvqH/zjtIUnsJybV2HRQBm0S7d/5ER9AUxcOEauL80J9sde8P1tPv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fy/EXX4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fy/EXX4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5081C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754969393;
	bh=/Gu8LbyH1cOXtRpwUdqQxHgoWESW8cKfJBiiLDAZf0o=;
	h=To:Subject:From:Date:From;
	b=Fy/EXX4+pRWlrvxetzTuN4BjJ7pR60N3D7A9hG3TOzJLpUgnMRu6hIEThJqPRZzv9
	 0BMEA+Fm20Mpd3YwugfdUUkqDCz1dpZsXdLCKrWvVv+5EvYAHIX37SZ5FXo3MFaqF6
	 qc3l2Fm7N4tlmyxSJc7CPFaQMCgFIWaiDDImexuLs9wcdO7zoyBsVJOsaF3hzmEfys
	 tr9FK5CuqGq+rtra5IvOHOxZjHl1l1KCF0SKgXqmfge6wHIyEB9bWcL1/w+1JOLRNu
	 vuOeoSUFlW8xCISJ2sGvw+Vvn6RhAgcGoDQSuweGtj6myquH5IlO7l8nfHbv6Zh61s
	 jMajy6rW3uuOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A4CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496939358.6278.16202828216378504938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b455a1a9fdc3bcae00349a35e52568211044c182e575a205b2f487f6a087cdd
Date: Tue, 12 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754969393
