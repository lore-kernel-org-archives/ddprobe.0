Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B73187338
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724411154; cv=none; b=cE64J2ojNamimZc+RoU2b1CSpPwOheJpPTd5OZ3P5Ad0cXA5qHxabPOzXyPB70R/0zwQkLzwMlZLKMa7oOV3frrzlqMFcQIB2SOj0xsQqzk0NurjmE5Ply6vdbg6SaNY1twfiRzeW3V0R4NuSycNI0EvxEbcGtGGy+t2kYDqFyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724411154; c=relaxed/simple;
	bh=f/wYpsM7wIRwyflfNQ7ICNSEauYH2k87AeNjv/tQc1o=;
	h=To:Subject:From:Message-Id:Date; b=JgJSJGTCtRC52pryZ6/jM+VhochavMU/XT32ehQCc2JO0dCbl7DTEMCIBTEEVIogRZU4fRebAgksKTvdEHU9mr0kQpqA39/J4AkxbOAb/r201t/YT3TtH3fftnTqD0oTYfedTFys/eQK8GROklhOL67j01PDigiZUCSA/evsPlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GV8CltVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GV8CltVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9791C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724411153;
	bh=f/wYpsM7wIRwyflfNQ7ICNSEauYH2k87AeNjv/tQc1o=;
	h=To:Subject:From:Date:From;
	b=GV8CltVEvrbfRp0WuIXwn03CD+tEEJV4jSC3td49afd3znCh2DSzNtckv6KY1cCMm
	 /ULfHmk8kBv2VxSRd6mx84O8nltXrevcdd2Rg0yR3AmrQn0bxYhFJcio/8T//g4DjV
	 0YksUvdZWPiZbfGvEr/tU/cgZEZQd0Pdw3+caMvc9x/ccYSVAG7JMm9Fn7fKNTeEbU
	 MTUedvPRg6pyKvVUeuLnxnRZdr1G5kcMvZi+/tLr2S3rnRo9AL8sFYfveFCFfHhAAP
	 hGz7I42Fu5r30JBx7MSW0ihF3NZv4GhszKl4kM/+wjl/xuGfS+tHexyjLnn8LXI3aL
	 i1H0SvJQxIC0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F70C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172441115359.2797.10030606382186973687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c898aae80df072dfcea6d0524c8532926b4b3e21dc034d171b2b09587edaca
Date: Fri, 23 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724411153
