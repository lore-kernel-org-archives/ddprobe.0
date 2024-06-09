Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2951FDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717937843; cv=none; b=OIiwz8EoQAvb4FAAgJp+iurRmHTpPavDuAvzVbnc6cs659wo8bCaBt5t32r/EiA/MZsWaHIuJ6Vm9SNRiUFmBRimXDdfz3EEJ60CKa0xIcaiUQgRJz6T7qKodMZiGR7R4YmfzweEbLhscvNjp4IZaFMLb3k/SA4SNSquJuHqj3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717937843; c=relaxed/simple;
	bh=QQlSmcCiyrRiiB3zAAZOZGpAAE7Pvh9EqiNy202CeYI=;
	h=To:Subject:From:Message-Id:Date; b=ZzGV2DDwmxrUd0MZ32qLhBlkWbH87g3Y8kNEsr3PBKq3z/BQl3BLIftPzP4V7N0BP8HRTLY7pyV5zKXUuVp/+CeCOUmRBdGJ6OgKcW5IWGyAYByjslv4wnrWm2tZzbbt7nx9nIWvRklX9xI5Z7z/NX7qqODhRVcqzWOs9Cp0BTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVMb2/iS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVMb2/iS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D19C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717937842;
	bh=QQlSmcCiyrRiiB3zAAZOZGpAAE7Pvh9EqiNy202CeYI=;
	h=To:Subject:From:Date:From;
	b=tVMb2/iSdR8ZxgXfHFA20paDmj2fM7/7TOva2VA6i2nCtLJNLXbhj7hnieVcxaBG4
	 g3JJQ6CyNG8Qvs2mTUpVsvGnVzAYvmfrEUeV4iUZtpopYS4MGneHfNVaq88hrhn+lr
	 PI0sa8xpPRu1YPQBZrvR+PepWpeXZ3S9YCBnjdH5UP7ifI75GFxe6zWUja37861c5Z
	 vK0YnGhrNnR1c/Dl6eU7BB9cKGvecJPnuNv5lYR2iXZOBc4jvgSlyWlLURIr4lYelm
	 Fv89MgRqHEZPe6rmK3vbwwqZv8/DQGJfF3QSopBnS9AjrEUD5csSR8Zy1v1Aj1nJ77
	 gY0Y1xcThZxzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AD7C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 12:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793784278.30546.7125680842840217496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1988194d147bf995296eb1982da4c7121bc15bea005069088fd09ffbe0bb0944
Date: Sun, 09 Jun 2024 12:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717937842
