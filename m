Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B70417332B
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727736354; cv=none; b=DcpEgSmIXKioWeT0zv0QlfJguEfKHK0pq1NhywKT5NP8ybOE9mwPJpBwQLJl6DrvuG/zrOQOIEHESsbZp1+v4xa36SNBcAQelVpydfM1BWiZIneD5RKNgIbuKIvI7vEki/IYYIbDXtEE4tGmNHuHjPVt6Gz0RdIztrbff4o8PGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727736354; c=relaxed/simple;
	bh=JbW73oTt9J/Id7//gfgIyUem4mu2WSGpIf2gEGymgtQ=;
	h=To:Subject:From:Message-Id:Date; b=irkSrPfid60pbexrxf9vftNhthrY9WKHmSppB0SPhL/1yKpDJSMDICQYqiP6fbJpqPqrZ8jo7cY7ltbFzsSDhOF1BC2OHfWlHHEvN5qe4oKbeBebmkQKRNtxHnf97GgkkSGeOXyF7IsT8gSANtGWdZ1JxMiQ4uDgriWoyHcOwLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMoJzmbh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMoJzmbh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B1CC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727736353;
	bh=JbW73oTt9J/Id7//gfgIyUem4mu2WSGpIf2gEGymgtQ=;
	h=To:Subject:From:Date:From;
	b=sMoJzmbhGmFgFxL44L+k3zTfAgL302/XdPvEuYOg70HkIuv1uB62d4Y7UuOVNXUHc
	 ANLhZH9MAVqtshw/fUNe1uQmwfmTHJ+A5Jb+OueAnoAgkZaTzFpIkZuyDm6S0E20ww
	 +vCShdQvhlWmp/0d57iqEBbLURl8T3r8xU/NXeM6djvrdfJrQlwzvVHAv8SUEjboe5
	 JDTuKXB4YXG6MEkCC09m60FBmFf+h5KpSvz7XhDwYB1hxmqpsUlZDT1lFAL/pF9hM7
	 8ndDHWx/eEWEb0T3mC7MnGC+Yo9QfHEqXp5MlXHtg7ZgJzzOx2uYXcVYGjVQ05gpip
	 Tu/pSY8Tj5vmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2DBCEB2C2
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172773635362.26168.17402996502355002663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b173bb3e0f54b90e328749566908256341b4007014123a926ca9f5301c5f6b2d
Date: Mon, 30 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727736353
