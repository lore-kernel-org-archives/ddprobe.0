Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442482192F2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767473634; cv=none; b=SyDUucqUDm7sWeT9koOHJoX2Fpsw0WJuV7C6JfjD1H7OXcldnxtRnegPFkAIblEdttsJGsHgx4rcGR6vjvlZQfcFYTvPQF/UFil8t5pftHJ6BiiTKwb7JdafaVgMy6U9HX3UBFmUA8QrO7ppNddyovjstre3fL+GEBRZcDJj1Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767473634; c=relaxed/simple;
	bh=/ImygIdMcL5jT/TP0o8EwDq3dkqqnAEk/8nlOnz8CRY=;
	h=To:Subject:From:Message-Id:Date; b=F5aMinqPOjObJSh1SlfmW9HKWQvhV/VWX7KMLuXFdRuTdiawCCsq4k6JxHtNPvHA9G9QsaIxjdmsYcF3Lnt4Mrgnl6QUzaDKvhCpyuAnzrvwhBCYMFJ43fb7daFWdscfZC/cHop6crTe4oCnGpSo7iE9TwhJpxI7GzndQQeF3uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdKt1o36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdKt1o36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655FC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767473633;
	bh=/ImygIdMcL5jT/TP0o8EwDq3dkqqnAEk/8nlOnz8CRY=;
	h=To:Subject:From:Date:From;
	b=gdKt1o36XuRSXPthLLQHAAKpfnmYstpDOMwShXzHWmFt1800Aeq6xUQXUuYKNckbZ
	 PKXWeqoFfOQq8QT9i7eX/HA7Jwwl3n0n84DBNokFBMLbbsq0OLyHt7dAZJU/1J05jn
	 qq42x8FUWw8pVfGv54i2S+/+TGZ2KYRsqfhkOKNzABltMVXxLnX6ihijOpi/6wv0I4
	 cy75LjyQ4IhIAK25zWxP31k/Wiy2y0j922sqzGsahm4GaWxIvNKnNiklMj9uA5m2z6
	 dVoshGTrBvc3N1Ai+spHB6Xj386cdY45CM52SR0bklXQluJpVwAB8rXLIkfx+QJcIu
	 cFiWFwej2f65g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220FFC618D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747363357.23233.8975110838583468884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de26357144bf46caae5624632d861ea9dbec778b7033ee232819fea6cc7377c4
Date: Sat, 03 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767473633
