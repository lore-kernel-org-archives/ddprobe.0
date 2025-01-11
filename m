Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4469C1AE850
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736606754; cv=none; b=jNyEEQYyC2mFWfnTJgkm0/yS3aDfWut8DM5RMR3ZtgqXVFDyCDl13ckvrD+OCRfQvJDpYIa35rvRtD8RljBSm74AEQOTqrxCL2w818/l1vy8j1FCe+MP4JlJiiAn/sxtRQxUEkwfqiezv8jSvaSIypIPLDdpby0X7JYiRwNPM0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736606754; c=relaxed/simple;
	bh=BwqSCjjKCDcKDBHuuUZP+p5ZMllUKQwJZhFjzuUlLh8=;
	h=To:Subject:From:Message-Id:Date; b=A9g2qHT7/nov2/3h48E52jgZgF+T9T7iW3/RWE7pr5Lv8/e+Tt7pBmLHxxf/rZjLKUnTS+IddzaC1ZhSZCCZPQoCYwU2IkrVXRKVxyErkclYnmgbhaCWe09dEHJ5oppmBWCnAGfPoOq592qaVF2bVq3we5c5pe9HbtkvwY8Q08Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e67GiKe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e67GiKe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC82AC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736606753;
	bh=BwqSCjjKCDcKDBHuuUZP+p5ZMllUKQwJZhFjzuUlLh8=;
	h=To:Subject:From:Date:From;
	b=e67GiKe3kCPs1fbYiQpVVCeV+hQE+LayLBpGldITarTrIMCyunfD5mQi2xuwGPXnj
	 ZQOtF6Ei2GiJKuQdB6yrVDQKERRFy0+egHO6Oo4SqFNRPllYjaSJ+mHl2ot7eMGk/7
	 wbqTjrmC0JyqSYKqngi0esJPEx0PhbeWCwO1jALykdpbF6EngZUFQTZxuGjvG9Wkuj
	 lOWiD8jrlegfcRj7SMBBKEs5C87XaaHHjKMR+K8Gdkvunjv5IUD9XBVgPzuHhId1TI
	 H5Su5WI4rskO5/UyPTPprhjuw4cZ3A38JJ6aFuVXXEy3HlL0SbKypAPFx6k54AmCqL
	 z3ivY7jannClw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9864EE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660675360.7399.15633315090048810293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff114bfed052a71f12cdb7fd7053b1254590afd15fc1838f9479300d23ed908
Date: Sat, 11 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736606753
