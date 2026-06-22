Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335CA34753B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782158194; cv=none; b=HsObs3MSJM4uBM1e0D+twt33PGuV71EQOfVqRmVd2UMRnocE8pKp406HQ8DikZLbHNz9YD+o2BCY/0LcXYhZNfvX4QNcQoWMEk8c2GmrHlN46dq3uXRhnm5LVwU1JNoFDwLH7f/yWQphsSVtoXS/PAjtDBuQTPtuvO92LtcmoZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782158194; c=relaxed/simple;
	bh=VypgmFqiimqkpXACsWKi6bFkxxEEl1GYZNucAff8SX8=;
	h=To:Subject:From:Message-Id:Date; b=PdyUdzyCF/XVPIPxNLdJjEkyQUrrI1oyoTQFSQ3+hGwOcZUCuqLvYPY23GFh1/f2myv2UdzB0pKHYVZQGT997rq8KdpuDLEuJLJPdFk7XNyax1pUtVtHiqakYpWNMiEvco2anghzAZcQfYcWIRZatIvfm1WQ1atmgb0jsFFcBQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnvFpaPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnvFpaPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DAFC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782158193;
	bh=VypgmFqiimqkpXACsWKi6bFkxxEEl1GYZNucAff8SX8=;
	h=To:Subject:From:Date:From;
	b=FnvFpaPw6z1J3NegBCGL78m5BFRke8ygxLBa0kgaQvQEhXdOvMX/K4Oj9ne3ax+q1
	 7rYn6O+WeM00stMqy27FsSASwDBVtxhUIGwISTk0gspZEdMqa75BOI9ekzz56pMz0k
	 T3HSB4qtExyH9vwJxIJOD51ue4yYf5nlXWHpZP0gbKjUW/ZirCRjoXKX4wyM6KDJia
	 LWJKeeSI4qmCE52EFUa7TPCMAk1H9G/IuwCqOziXLuvyvkJ1k/DLYsAb7k28k/BlI4
	 2ZswZScYiqSjpFy2J6NuhPaxLDj4Rj6GJJdnf+SEk1LRZg7tX6nNKjgJD8WrZFN2We
	 epgDW3jcBdQBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7A6CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215819368.23736.11362241228365686306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a303365c8c17583095062b91e75e4e5eee776fd0b47f0dc44817cf9f72571de3
Date: Mon, 22 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782158193
