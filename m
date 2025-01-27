Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4361D18EA2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737965155; cv=none; b=hWVC3MRULsiLRS73waHNpRdIP3Bo+tn46PWkEPzFqM87gyKRRMXZPIbHcmFrev4//ZpPyGIbGWnGIpjUbRHU53zpqIevnwOgyQbomJ0XG12Mv2Z8Nv8FNxsSZY4ugwbpRQNUUmIhVgn3tyQiAGpgRqdhgVbOt5M633RNGNez66g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737965155; c=relaxed/simple;
	bh=5J0BM1StY0y7sJ/NhsfxB/2QLs9lRPW2OjEK5wRRtMA=;
	h=To:Subject:From:Message-Id:Date; b=WFWOv5WE/mZLvs4rgAa0m4bpDZ/06cK+ZVKufGP7dG0iMN7pnI+xpel5HRoj88bULMk1RadHtD38/OmAWHUL3LMDo8VPDjafiwuWQkj/1ZPquezXEqpjYPMNJ3DdoL2V6BXL2O3tQUImJCvF3sZMAsXNOPtQYLSwx8nqVWtjnxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEELx5aC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEELx5aC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A173FC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737965153;
	bh=5J0BM1StY0y7sJ/NhsfxB/2QLs9lRPW2OjEK5wRRtMA=;
	h=To:Subject:From:Date:From;
	b=eEELx5aCZ1pNrGPzfr9W0nSwsSlFEaxd1f3c+BFrL26YsDB3QV4XfrArrSGKmFfF/
	 ByOqM7mBgab/LqOlmRESsJzIGXKOE76FSfMsXljE2eckTscz1GVpCUp4MEdG51C3cz
	 BGi0EgZJ1Q4pc6EHrm3Sq0YH91za9lUa2gMV4ggVlTZXeWKL/0bzaO5qWxPFcujNhS
	 HVftjUR6N0EqJilZ4sc1cAQ2AhkUI27IqdIP61+KaDG0w/B7Bw0lvyCj10lT+Vrhzb
	 WBHkZov/hABEUw3fOVqHw7JLudK1NXGaUK7IqQNpftV6BKKx2me5TIOC68Ni1M9fFg
	 rh79ZSa7sbF+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA1C0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796515357.16110.14429315090949654797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69fb4b88389beace67102acfb7e0778ef8fe8fce106f751fd7fb41e13dcac34
Date: Mon, 27 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737965153
