Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414A8EAC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775891854; cv=none; b=ADvgCiT0srVXeiwZ+ne35gMvF/dyH4CNwg9UfabRArg7p4EXg2qLpsye/LDP599CPMJ7VFM8ihLa1E9n79vb+jYVG/EnS2tyfDvVdApj1vTTVBH/7q1jFf62D2E+FiPxgMg+zysuV5p067wwM8gkL24aee2z8Lhr7QKzQv9rI2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775891854; c=relaxed/simple;
	bh=nxXWvTmelRWkT9NKKtnSNrsHR7OYBpgZy2vCLhlh/eo=;
	h=To:Subject:From:Message-Id:Date; b=VBKkTZwwvNI9yRPOFXrZZ0TkIrh4hs+ZQvIdi7S4bWp7YWQ/KfTqY80wzUJHxcF4XxURnPXWjQWV/q3z1QEIcTC4KlGuMTDiCm/01JgjIyiFnWM9csgFdjcCP1Feac/cFKhlA/l2nCrKY9sQ8CL3kHa2jDOQa/xA72WSVmJ6FKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+ncl0fw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+ncl0fw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CE5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775891853;
	bh=nxXWvTmelRWkT9NKKtnSNrsHR7OYBpgZy2vCLhlh/eo=;
	h=To:Subject:From:Date:From;
	b=W+ncl0fw0VQwoKxGquvWydVuwF57GBwy1PNFCIvljsAV9wljHdLVXnMBQI/VJcH/K
	 eZTv4BPzsYCxH8xUYgvR+j7WqzNu1BZhwFY3JO8FdE8GuU7dZlz86/o19Lj1J51YLI
	 SjHV8VEhX1mSq/hBOTPa2F31+kZ/AfS8Pc8dJjpZgNYEbqmlQqLxh/ebAJ9XfXV3P8
	 3ZiFUMmasu/xSb4NPolqIS6bReCDYopDIS+jJ7V1cMDqTX23yceTGotXKx6elBX77x
	 9jXojgMkyH9pRN0AUqyFRfzUJuW4ubmRNSMN/9LYvuFxrkiSJunU7m0wQbghaSiUV1
	 mzN5UH+BT02PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C06E99058
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589185368.16003.16465118327108896508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e72be921aefbdcfdb2d5e40e4ee9628126c7f61342d10fbbcf570ac96e80a79
Date: Sat, 11 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775891853
