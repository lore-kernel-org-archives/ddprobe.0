Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E88C2EC0A6
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779007834; cv=none; b=jpulTEdineznIe4Lk4OnDboK0hJvYNqNGOE321WG+wGkV/Z5yK+7WD23lDXH3Im56p1da+MKM6m6g9OhV7LmRaJW7YvqkNg0Tb8My7ufWCIsRMon0aHCXnVQYnw+2tmQz+KE8QhJQjOxavj7eSmB/GpsWR4R5dHkoW4R5bkEtXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779007834; c=relaxed/simple;
	bh=iJECuGEv7KFmiYXy1fwriQ3bInBqexMJFbAAzPoUcNs=;
	h=To:Subject:From:Message-Id:Date; b=GNs4+t8sCK+kpEJLm6XHNdu7SvrqMB/muWk2hnIPPyvJtV2Uy31cpU12goPXsG7+jyvn9/6b0GcsXjvgH/ksJYQL9fsrD9QxQdB19mBX7M88pdp0bVPi0pQyV1iwy3+mRwMXAmBTUrgCosVkfkaKTyWPgJOIYYhB1aN3YxylnwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULW70W+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULW70W+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD78DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779007833;
	bh=iJECuGEv7KFmiYXy1fwriQ3bInBqexMJFbAAzPoUcNs=;
	h=To:Subject:From:Date:From;
	b=ULW70W+5AIIW6z9VY31kSGuGA33SHrqgpfSEl75wZIbtBK5rQjiU5gQUcwFnw3OF5
	 4BLn0se/qTMkyeE2bfAu6qcWMSfCWj3Oad0udrZJmd/kwSfwG8xCB/NwjRS1zM79vx
	 rv5ncO/mXbox2NSOGJ3+aFNNTVyBeHTA0ytoClVIL584QiUfv716Hw9fekF0pxDjUs
	 rtpwfI6vxJUjJdEWsd6H7FP3y8LKPNI+FTGP6lg4novN0XzqvVplHqtaII6YTYK6gx
	 DcGFbDdV4lW4RecgzgQU6bnv8g0esF4wfTDqU8y9XtZecTQGIcdmjldWBS3+j2SMud
	 2372Z+KtspsxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9903CD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900783372.2043.7622600234846549853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7f52d9afae9f13402d1e712387ff5b12007b53c8a91ffa8970e662827c3844
Date: Sun, 17 May 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779007833
