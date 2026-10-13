Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91937556BB3
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791926434; cv=none; b=prO8NdZbasxxoYVqW8qHAacEksLTuP+xrmYtmEJPUzKCpyYVAntNElIHhd5aTpMLX+1LvFyxhYjqFZG6aIXUG53f7DlQUJFzYM8BEd9K0uDAGol5NVmQbGdiS17MIq/dqHreglQzbbWHA9egkE5q3MLtisK7ojuiHmjmi5pQAvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791926434; c=relaxed/simple;
	bh=FeJpvkWYXXf0txseW+p/PP/kVBvSeRiFxf5FaL6GwYM=;
	h=To:Subject:From:Message-Id:Date; b=QpxwVNVPq2dQaNLXJm23AKmQvdG09ukGBoo26bitpKtLMwkSbMUoXm/kAemG+PSPwtUMo/mmFccfQN6IzDeYgsyFkHvlN/tYwkPWgPOTGiVqRWCziZQTVDzQvAOHUw6VvjFyU1ieO3PZp20OrU3CpYoCc81vzt1k6sR2ppEap4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/whprin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/whprin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1325C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791926433;
	bh=FeJpvkWYXXf0txseW+p/PP/kVBvSeRiFxf5FaL6GwYM=;
	h=To:Subject:From:Date:From;
	b=k/whprin9iOdMYZ84x4ogyLje7BpEOSWWVwhvIdpGxqhwPkAIINepoQd0fI+MD3kF
	 CUU46vopgYeGoM05lB9GhXj7TRF337w36AYVSErKZdPDyleYd96R2wwO4poIWVgud3
	 yw0hKSTF/Z8IJJCsx+HgYWhC5p2tKYnJguhGDbVGqPY2QEmzmKiFbyiVkz1gLcL80P
	 0myl/nDzeOEiv5DwNhfGtBK/1PMN6eUcmeDp7Xccvj0/rVQA4pUKkO7hI1hDvKKmDD
	 CDRoSZ3tyulcaNFN4tMEfJsDN7zRF9NXkKbnvngSm7VwX5ITiC7Y6c0Bz2REkOOy0a
	 iVK5bAd31uBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC673CC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192643369.13504.14504115192173533794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149755d047ea43cfde1ba0c2994deceefc8b4f26ec2af08d264fb875c5afb8fe
Date: Tue, 13 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791926433
