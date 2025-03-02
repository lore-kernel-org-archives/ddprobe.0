Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541B37E110
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740922134; cv=none; b=kiP3X71T+KHmkHIZMiv0WP+iOsU9JCOqz4pygPtK0U50oKZXuobQy78DlfVYlAGn6XgAuefwqS5KLzStY/YqUt6riqpoCyPLrSRBs+T0mAlzvkQpwFM/LPMvLnki6H4qlBNdIcPzuqXQiTa7ejqbron5jxREni1/H74FUOGTIAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740922134; c=relaxed/simple;
	bh=SjBpd0RP4/DrMO3B5gqs6vUrl9omGSNS3iDgTRUSQ6Q=;
	h=To:Subject:From:Message-Id:Date; b=Vl/zCroMlff64IXd4IxwR+cuXn32yMFG5DS0Ud3D2ZsChGGhnhY+cA/qsTaHDAK6xhDng3H7ZzV72ObhvXb0rsqEGRCzT6zHkOeIT/vB/Q7b4K1Uk9NJlJ1yUxKB6YAXzJDqnLH8T7OWJVoUkw7U4u0Y88XC77B19+9zb8mOoro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e01wBcoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e01wBcoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4319C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740922133;
	bh=SjBpd0RP4/DrMO3B5gqs6vUrl9omGSNS3iDgTRUSQ6Q=;
	h=To:Subject:From:Date:From;
	b=e01wBcoMC3Be6I+EQJMxkHBQem6B47yixpW5XnB4/m/cT3+OScEdOybyFEpGjD2qZ
	 noF3SeOMfViCiV2Jd/sB1wHmHKAm/RRkbVcmgufT8XCeBE7wEoK/Bt1Jro1E810aX2
	 N46O1RZwRlYDdQEoU8zFeZimay1EW3gvgkaysYJC7CryxyFpGzZ7Y47Eyp/drYABxT
	 kBUeK75EI2k/c+keJOVht5YNzttoG9/LyUT/Nj10rU3iij80EAlxtFx2AMOgiztPnw
	 hJX3taPMsF1Up6KESqW5HU68QyhTAMmx7XbFpc6062CB3o0JiWvVy7259h1lChyWXY
	 SKtBJqOK59dgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB846C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092213369.12933.8620995953031385220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c3c8914765f3112460d7f3bc612d29479bbff9e96a9e8bc2015cdd798d2828
Date: Sun, 02 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740922133
