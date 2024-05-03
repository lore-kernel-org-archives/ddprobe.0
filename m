Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713E01E528
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714732343; cv=none; b=Av7I+VCjxeUq/YAaK3/hRsj6oUMUYNOjLAxm8CuOcZtCs5GKxrOqBh3JevgEoPTvM8Hba9SRfaAjTb94wbaG8rtHpN1K9bQrLvLa3bZImBAfaY26qy0ry8qlnnfopn/67mtfFiieTNA1ydxIfi0wdPkaLrT3zWbwKhOS72wa+L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714732343; c=relaxed/simple;
	bh=/J0rRVeplnXRweEdgC212yhc0Z18VVh17mFjcxFAfm4=;
	h=To:Subject:From:Message-Id:Date; b=lLJKGDLlo1vZM0c2EJelLuGFc9idz3nWBLxkLKQkv/IHFzDoXggygpWSxj28c8j8853Yjqo6qKuAtVFZKy8qjUJeCrcURo+QcjCXzg3fBFKaCQx7/oIS6LxtkwTIiJcnflGYaRmNvjrTHPL1G+KYRS0ECofUpsV59QuJYNDWvAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJGoD65E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJGoD65E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9CAC4AF14
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714732343;
	bh=/J0rRVeplnXRweEdgC212yhc0Z18VVh17mFjcxFAfm4=;
	h=To:Subject:From:Date:From;
	b=qJGoD65E60KtKsYPDB3tiR/4wHvvAuR72y8XYe6NNt+4fUxDmHfKCUSuUx6qmCXKk
	 7cN39kp9uL8qrgzTWa9E6BZL/niakSsOSXGMgMweRYVuBFvEe8ol1UP8e1SNBpoe8h
	 ooae6PT0i4PmvpDjCDOs88CosUjDMkKbf5X1D8B3z04ZLyKQKVqNXSoQNvPFyemwfl
	 M6S9wQQE8daCXuCmcJNhn71PxZ8GX2bAefBz1aJKoQKKA1M1xKYNy2WBFaFQqpF2Jc
	 YE093N1+oXOsOXnfWOT6bAwHn6yBaJXLy5O44SjaMc5gcFP6XkpLrXb3uPD1ktFIpm
	 atAv8AdzdABAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D691AC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171473234286.30280.2170094630672768503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6af532299b66200494bf3a92620506785222b5da0c72f438e40a77e9b5481b76
Date: Fri, 03 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714732342
