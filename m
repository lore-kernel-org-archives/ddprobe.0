Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A47519D07E
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775271934; cv=none; b=NaeN6aDAKQYbhyM2AoFqdJGPWVX2h1Ad4GLbMIWSY3rQvFpVr2F8jzJvj5P60Wj4/vllkHsZGgXwhXdn6HNqh+8TfC0P+oqTMPyraUh6VpcBYZWHy+A96pit7wGxLEMTKIDVEFHJkoCnNa3gtg8h/9WUg2fOmn1Nvd69XBtVRv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775271934; c=relaxed/simple;
	bh=uzD9f3vg+7/2vyTwYMQSR2uMYCk3+6y4PM+gn2jQahM=;
	h=To:Subject:From:Message-Id:Date; b=I/UygL/qHBxclHC5nBRDFNj+q9RndH7W49dseE0xxSPdj8gk3RJ+/k0dlV5q9oMnASH3PMjZQiqVK8ioMC7sFOUOZpHWP35omGpK4+5eNg8qfNDTkh8TYR7hiFHb9y+AwPhVEt0Swmm7ESa3tVkcnJpCyqlW2kut9Ez5gUKCQ5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXRS9x6e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXRS9x6e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE930C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775271933;
	bh=uzD9f3vg+7/2vyTwYMQSR2uMYCk3+6y4PM+gn2jQahM=;
	h=To:Subject:From:Date:From;
	b=nXRS9x6eLLKybzn9XVuJMIhbx4bzHrHXJw2Ctl8KAu05jRhnvj8K64NDBMij5VDIg
	 ZyI2/30tuT1RPNPZfbaKfgHKiD3aKPFLJ6cye+aHZIzU9pVT5t6dUACvUAXmn5hKh2
	 4y8GYHMHHcHFlEKO6I9TzTq2j9JQ023eztczIRonDXLts8LScb0QeQAKciDna+e7IU
	 P5itcBddSk2WeoUGYZcHFZZrESu7Dj7GOHAB45ADj0VW3Dj8d2IN/BXdPoj5qG1/4w
	 1eAaqYnMSFkAF/be8FsGGV8w/pv/bENsm/em0nrORGM88UlOxGuSlNl9Yc9bUA5pen
	 +Q319+xk+dkRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1536E88D7A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527193369.28221.11373625934539615341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e85e8e92ca7761611623b62369995b9523a73f3ae57c4f9d2fa97a886e658c
Date: Sat, 04 Apr 2026 03:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775271933
