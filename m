Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22042224FA
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767330234; cv=none; b=UD8WtZGit7hg5Q3VIhUDLpzOakLkDoHSNc7i11zHzqaD1NfMg3XaIQpgtY0viQc4fO8mF0IPfJ45b5WSN9MrUivrMcye0hcazjBu7g1s08BopSwiS2yFwNhHqUjW01gtJInbdEiBDzvnBH/DcA/RJ1mFvdr6E+w4iZw0o3ykVuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767330234; c=relaxed/simple;
	bh=/U12GcA/LXk3fKsc7bcPubldVAimQEzwOwxN76VpNcQ=;
	h=To:Subject:From:Message-Id:Date; b=aiLGjEPm2vY8YjKv23lBYrxdvF2NddwMKPbkuGzdWlOX/XzqldeCtyakf2lXuCzCHF+9KzTFU1N9gISXVl6w0mWQjdpG4FQkrvmvHS5tjOjhLX/9SBj11JomkRIzG56ER1Q3WujAPGmzfArn3/DrO6hn4he/cTYy+/rIGeIta6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tl5vrcL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tl5vrcL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFA1C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767330233;
	bh=/U12GcA/LXk3fKsc7bcPubldVAimQEzwOwxN76VpNcQ=;
	h=To:Subject:From:Date:From;
	b=Tl5vrcL+d6MbCZT7xO/KMhEvIDflIx7zzSBa9FqfX1u3ZNhNa+P2Gis5dUfY0+CGc
	 4bWHLK+FyF5lKA86nDRXzUVfxSbxrYFEKaCVgCSplsvm66IhPSt6bnTQIJunqLL3WH
	 Z6GB3lbz2HhIXcG5uXXx/dEu/NNtQJ8ultw60WEOYfuUVTZYgMn8D7RHlBvXaZrftp
	 73x6wbGIfD78TsQattc8rhrnt6uinorCA0mQYNHllLxLTOGKUwd1YMQHNIFRL7yMXK
	 NJalevp2LeYr2XS0/knMACf5d1vWUw2TJTInOPibNMUEkiA9V9FAt4CynU6+69IXyj
	 krNN1i6FPEelA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB90EEE265
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733023357.574.3905313896949200723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24abc42dbadb0052b1b50c3105b6703f32cdbeed0ad06552bfaef90f542f616
Date: Fri, 02 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767330233
