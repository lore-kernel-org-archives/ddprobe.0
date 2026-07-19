Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E09B223DC6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784485714; cv=none; b=ki7Yh/Gw7xoDLqdOSMjPN4M+6gFHjy9zn6wfrbm28jFKgxoT71wDgPYEFz/uBJrjjg8CO+8q4IypJbbbyI628oFW94+O8+DAuKhNFO7ER+3rGhZB02B6uyYQDHeFGW3msXcf2av+Wmo3nqV0Z4epID/sAKGrkQrB5JherxT+YXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784485714; c=relaxed/simple;
	bh=9OZhLJZWwHau6dOciJXrI6oHaCphNANnTqleGBW5NwU=;
	h=To:Subject:From:Message-Id:Date; b=RYemXxUhptuEGCWIW7mFY9IWzVGVfniTmpdYGlyBkXT6VmiB2kaGpXJ447Zj8p6HHNWH5bUdAT/tGzl91pvO7Ha3whoui4g5xve56Xu0QOO+Xqj+AycffpIF00vhiEU4GVdv9rlcovm82hnc1FRzuA77M6Ec4DFYbHdfNs7kw/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2IqeEHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2IqeEHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F2EC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784485713;
	bh=9OZhLJZWwHau6dOciJXrI6oHaCphNANnTqleGBW5NwU=;
	h=To:Subject:From:Date:From;
	b=g2IqeEHECpHR3ei8gzFwMdsqLIvRAP6lMqYiCMUJmJRBUdGNQcMz7OGv/baQHMJ6j
	 KupGnWPEUA97qmHAFk3W+iQaZigemII1WQvVvd+xaOVqlC4BACVxAtoXRsUCMYw+ZW
	 gVdpWxp7G9BEYv4POUDVSs/kXdmjqJO6ur17uPYQ3mJ2rpj5oz3ohwlDq67egGR29S
	 qdPkXHeTZnvJTqpprKC5Ng+OeTnBZ0t8JNzjK8XvtnfLyKjyJ4RmfJIh7Xs9/9MuNA
	 0PLKAN+T/1eonU+XbXrGaZNuQo92XEjaw+q/cB10mIL5kERA24hT/svtqvucnIEafa
	 xSNj1NpCw5exQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD63C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178448571368.11688.4333337521681274009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4fff3d0d522822b7469c377642c6b512e0c1ad3dcebfa179a45a6a674249c2c
Date: Sun, 19 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784485713
