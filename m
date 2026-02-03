Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C454738E5C5
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770125633; cv=none; b=bWN9dq8yzkpM3RcxVyeTHIaf2vIfdH4LldlyX9z1XSvkxyAf8lMTuopioqWcHTvTX/4RZyS3b4x0no2IH/wr7GvYhqHLZnVtVo6sjGyVDszH31WDtxTGMor7+tnV9LuOZrfjNpdKRJC6YV8E5DWD4fvNP5z013Y+oqQmRWwRhfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770125633; c=relaxed/simple;
	bh=QyRo0tYzevDdtZEYsSsVM8AKPycpii7j1I/OsEm7Qy8=;
	h=To:Subject:From:Message-Id:Date; b=MV02i10/j8XuUVrxtCbIk7rV0q5Na6GN0gOelnL3/wF1uIdJZVrGijkGdQIU1S/klgxXMHLWuCAQ5XjQ9NVjAly0UzUpIDx6PWJQ5MiPxGhqxteU1XmCjWOg5ZM3pzu/GoRUdtuq5r8qu8l4iMgU1ReK73X4lmUqKM3oPWenueE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3vQwSfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3vQwSfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F49C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770125633;
	bh=QyRo0tYzevDdtZEYsSsVM8AKPycpii7j1I/OsEm7Qy8=;
	h=To:Subject:From:Date:From;
	b=S3vQwSfjSL18tRc0K0D6bE76QnvGOJC4DYnLI8g3T9OkRyw6eZsR7T9ZyTNBWm+ew
	 iR4IQJx/xifstBYQJHxO819+nVfpQV7KY5k4WxUwjhsE3e8voLugkncwqnd5wSOesX
	 HjPtTNpRICtQXZr231UWIW+QWhgYpNbfG/uKfWFqRI48K5kNLS1oEHiVM02XeR9TVx
	 xVfQwMJMmNBDB0OIIqA9p+8UVXgb8mgcjd9OZk1oo1k9Xngzft+VfQpWv9JbN+p1PD
	 J/Nc2UMC84H8Pu3RqNk+MnjHkiWXauEylUHHThNnfoPSYnqbItgNPIxRY/69Z9/bx2
	 Fg8OyHcob6Ixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ED6E87827
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012563361.4098.11810589049601065902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70eb44ef0268e7aa17e5819cdbaa302d2e7a14b7706ff9250adc90ec4b492865
Date: Tue, 03 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770125633
