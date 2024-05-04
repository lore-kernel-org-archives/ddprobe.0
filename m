Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54421AD2C
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714864343; cv=none; b=OSEXO8IP6vQvEQaNPtDlK6i7LIUlAHH1cX9+QoeZWVHe0VNewQzmnxzb2QUmXF/vpbknjcya8JAlc+nvaL0Xd9WDO97kC8wJQu6SZfYWXgm5oU3VCQUzTcbHmL74QsYZKLjgD8ZRuD2tFGeOP9IO4r4ZiAtiCUgGCZAvinbvsc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714864343; c=relaxed/simple;
	bh=W0i2BMQQIFaUOry2Fm/5S356nzk/dqnYJ0bWVp/Ip1A=;
	h=To:Subject:From:Message-Id:Date; b=SS0wIDUaNd9GzjtGd1JIjwq5oS9s9h451Aczm3XPIvGnI1n7LS+0FtBS/vfF+rySwxzSRz4gO7KrCN9HyHV1a8f+jHBZKFP+xXSDcAIz3knsRadtjo7Acy3oyEbEQ6kGJhbnP3hq4tpSsO3ralWOeIA/QAywccgdOSedioWG19Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jI6Aq9Ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jI6Aq9Ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FAAC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714864342;
	bh=W0i2BMQQIFaUOry2Fm/5S356nzk/dqnYJ0bWVp/Ip1A=;
	h=To:Subject:From:Date:From;
	b=jI6Aq9YeUX2RFU0j/Z5XUsblb+rGPMM9p1oGAl2Jfl+n55zgJkdkX5xqfhbgGK3I3
	 SyCrMi4ez3P7uNAk1aiIM0vwZ22EIWUpRGfLTjF3OxnppKGMaubS5CPUOEL41QXB6c
	 RKRYiDWOxPmGe+98QPSaBK69EFiBGR1SaIVwfDmKWc76N3GtiT5IeoEO6EKTG8qeal
	 rByuKrB0S71qNZxuS7FZT/KJb4zJv0U8JMcrtM4XepcS29JfB06hb6mL8jbrlszy3r
	 gKOtcY7RQuc7FlSYiYrFunZzpQu71kKxISWlPis4Mx6LEYIE/4ZoWCNtds7bMdxbXT
	 qpEHRmpJ6PHsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23E4C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486434276.32490.6755211548676463679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82a2f7bd2fdc4b8f906f553d5ea05a75cd0ef7c7f9d5d63c1ba2cd3e30c10bf6
Date: Sat, 04 May 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714864342
