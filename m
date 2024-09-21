Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352C3ECC
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726883154; cv=none; b=fkdip83YCIbdlMjw6doUCo1jtg+OxhqIQQpdHjxrJL95TEo5l5s4TdyZMogvHO+R5jNzCZcOf2qQLK+t/S2k9yf+3Hye0EAATpvbzvhEI78O4AWmtwh5FqrCgjfECqGpw2ZQLIVduQE0gPdFm7GgYQtCjN6M+pTFJpollcRQ9Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726883154; c=relaxed/simple;
	bh=lLJKazDO9M31X5DcnWr8BPKY7pUZm/L6YVdgAqYlXVE=;
	h=To:Subject:From:Message-Id:Date; b=ny39HBXfwFUyPM1i0bkxEr/FPeBz97EbfZ2ervbuekBY7NDDKrTghdXGqB++uWMwKPpDuC1Zqft/my46lqyzb7I3H2eXinfJSYVQ4ChHY2ctgam2iskvBkbgMilGwqVOyNEFEhqPG3hv9NyzX15KSw9hYBpXPlazlsdso9tijBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9lRRNx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9lRRNx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE56C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726883153;
	bh=lLJKazDO9M31X5DcnWr8BPKY7pUZm/L6YVdgAqYlXVE=;
	h=To:Subject:From:Date:From;
	b=M9lRRNx4oFgsHMjNrDVjZ+hCMP83eyDTSrfPQhmyh5XczixI5LSD1scJRiHwFdQYA
	 O9lMmiLNsX6NQuTQeDQHy5P/UiTmnkBhnYUgRh6bRmQD7g7n4baSkLA0vUrqh7Hh4l
	 ZiJHp2EsF88o+q0uWsZaHJmsX5DqomU2ArqjfEn0Loa6NSNBli789ZNV/jJKQYAzVB
	 /fojkMEmmuIdFA7cpXkbTu+xUgDQIu7M8NYhkBl0ZPmw4wdB+TnhrOeS5yPFR86rNV
	 5KcuNDp1nCPCpR21zFd050ICHqnkVrW6kAwNUQIAl5JiemCUreYXV7IHqcm2BGHi6k
	 bQ6hXSuEbfiSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3471CF9C5C
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172688315360.31302.3063169223809394642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e26dc3c9bf3e5f8c166ee44ce6caf4633e1c55ec84f2538086221d1c6f380fe
Date: Sat, 21 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726883153
