Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E851DF261
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756951194; cv=none; b=GjGzIkdqiGCpRIFwu6Wqm4UvpFe6As8TigwvA5fQdu3HaiqB9IMG+wpfytCP4Zt/ymBbpAwDf6w/6LIjaVX0KLR0gdM5B8QPpGjH3TzbniYLBdeAdc9JV2LtiTLN48Cmi+zvE9FkECwUYSRgx7CJmu0eoruY44iVbobusYPr7lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756951194; c=relaxed/simple;
	bh=+l/JZ1PbO1dEe/3j8TBOCFwihNb20Hmm1pW41pO48VU=;
	h=To:Subject:From:Message-Id:Date; b=sAHq7c+zuWfSxr0AsEKEyQ/OZHNeCdOcK0bdAoG1J6yabwcuSOBJ8xXyh579xnLPVHHaNJqZI7oQaq+l/QeUDKJzSPqdLk3gIhJgdRkisFi+L8R8a3Ji5JQ5gBrSbd+Fx9SKhN9725Q+8e29h936FKR44Z4mnmPRUoSbDJOPiRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOLn3yDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOLn3yDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B022C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756951193;
	bh=+l/JZ1PbO1dEe/3j8TBOCFwihNb20Hmm1pW41pO48VU=;
	h=To:Subject:From:Date:From;
	b=TOLn3yDBJsGAEpghM0hQW8jEyS9GLhJgtB89fgywSgmGNSovRnZlRgK2jX/gU6phJ
	 5yEOU6tlvGgw7VkqT6iSq5Q/r+5+VmxQa4iZHQY4GV5e385I4xY7DRmt3l5KTxV8vM
	 68CTzeARyfIReQkyVmI6SgIHLNsX04rrmcPCPfHRp2RdWZg5rzTxAbi79YX9EflYHi
	 kxjjRjb5EL/9NF/iKJcQABjkYsK9M3zPw3+ZQJZ902SnLlTgumeSjx9j/HPbB567fP
	 GTXwKgJhPEIsYXZJUuzRcepgzGnAYeaD3eUMzAFEmvWCg9zkLG0WgSHM67FLVEVsgC
	 fDzU28Ohkr9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B2CA1010
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695119358.7444.15931856500275591809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca72b8db1dc35278870f6764cf333db2356fd6da8d7539dab3a84ff73afbbd7
Date: Thu, 04 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756951193
