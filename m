Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D559F12C552
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711555696; cv=none; b=iv1Ar80NxzSb9cY/3NEGDWGxAlGYunrYclwqvo+NFfGkJzH6MoG8550fkEQjvmRcVb7Pw3Qwnh6VgSZE7qFokT9ATpsi5uLRzNh+uXx10G9CS4cpdB048uENdbF1MRSSs29RvF86qhrK6Jk7ZZF7Usr/c1n/Pb9KEjrTxFVaU7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711555696; c=relaxed/simple;
	bh=o+vpNic/wzzpqmEAj+mu99k8YPFJS5pmE9/8Q2cinXw=;
	h=To:Subject:From:Message-Id:Date; b=UittiHZnYvUYUMOzfsR94sGWcmmZbJPdHrYNGdzuJUJ6ZC5z6BRUsXUAv6Qiph6wLb5Ldj5yp+OU5MAyYp+SgvhG+dU0d/TIUn4uhhOMRFISQ7xZPkY89aXGS74AcD8PxyIsf5uC4HNtgPRWjesat+bi7rS/G94o+XRG6ymKCTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnPy4pxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnPy4pxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD37C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711555696;
	bh=o+vpNic/wzzpqmEAj+mu99k8YPFJS5pmE9/8Q2cinXw=;
	h=To:Subject:From:Date:From;
	b=AnPy4pxlCI8hEHyu4x6NZJ2k1S4gJ92ZQX/dz1rSMRq3ERiq1UktlqeA8E634ihLw
	 N1HqFyl47k2Mp7C9SNeyKn0EMQogVVOmMWaGzqxr1dsnmmVn9588F74LJp/OGvFFH9
	 tlgpeddLnwt/y8JJ45I/+R88aTdHjMN4OBxPvYA1rhhbirx95u/HzGr7ZNf9GN/KNd
	 glb/ZlWucxn8/vven2MuVFW8ESp6WFmP3BOwkMFenI3e6Ikn/hUvSXuKKD765jQzhV
	 lKC8Og/IvHRkJh149ZFyYXOBFc6kBnX5GNXOwZDApKGM+vh6AQ5PwjkYggtksTHwk7
	 CzAsUgxP0SzMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D19AC47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171155569637.30386.1250379413782138676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b4e7d422cfcafc7f0eadba3fb1c64aeaed88bcafe9fdee35a62d1a3d99cb7f
Date: Wed, 27 Mar 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711555696
