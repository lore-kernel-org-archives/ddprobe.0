Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3801C248F4C
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748333995; cv=none; b=lmgjPaoWMS9cVHnyhQ1HkZ2T3KIIoxzY+QAbA4pGvjIW5ffVDLpHE99/+kCM1CjcqWHblxffGcd02NYoyv99JxCZcfKSc/pNzYwT4LzpxYbvr1+5fWWS15dOQrciz5OoxsDkCA1vR3I/5PsuKqtQ5vvW8+C6YPDLt5fMcD5ip1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748333995; c=relaxed/simple;
	bh=4WQGN1UEATU5JemjSeYdIitmM5ZJmTE9MuUzv5yhhss=;
	h=To:Subject:From:Message-Id:Date; b=CWBh9jbTBDS7FBo/zJwqDf3ttlzPMxv3UfMCxrgzAXSmLtzhmoZek1G0WO85D3R1F4OSaJo/p6i0SAOYPdCcNbr5wfAMBny54GTl5em22XDd0KVON7ohwEB7ZvhFbDwTFrVOodj+xfTjVbxCLpiW/j0odtuyZjjlf/tLD7tdxas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HV4Ey+A6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HV4Ey+A6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D80C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748333993;
	bh=4WQGN1UEATU5JemjSeYdIitmM5ZJmTE9MuUzv5yhhss=;
	h=To:Subject:From:Date:From;
	b=HV4Ey+A6FXd0H79kOY6t5leD0AIzbT3+SVpet8r8tLMn/ukryHk1SwrkZS7Pw8F6M
	 +P9FklkCr/7T9bPYH3jepMpEhnZ0G5AnblrY7glBgoiALZv4nF1BLGIW4N/Djvv+Fh
	 NcBOLTmz/MKOCQ6wmqV1sygZ7pVreSlTuZkyo3IrJ7pxpSXU162maPdBFzVgXqhXV/
	 7Oz85Ds7sbQYCpgzTjACz7xR+/o4P4c9+IUXDSrmwP+7AnGNOnjJYaOjXpDKrTm8Mg
	 9lLMoDJPv/cMHF/Aphls6fP7Blw6kAOVW4k+eyGq2JzRVy4DA430ukqd5dWFzGRYgi
	 gfV7O40ktCj+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F909C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833399357.8838.610300136097429790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d22e0b273b0f911acb4ecac951706d816acd7df51f689de2c1d8d801ff469a
Date: Tue, 27 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748333993
