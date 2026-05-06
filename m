Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244151C2324
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778045854; cv=none; b=unu0KcKaxDsUV9DXBj2M1mJOE8xbfDmv0fQNYa/aGmsQ+eJxZ6bUi4l16HlIetIXUQxSzD5Znnax4rxS/ZhgdIbCrk15ZGsD9zL4j2Te4ENV/YcX8b7rzT+Ho1gnqQdRzNYpODVaEzKe5W2aNvv5BDfWFRXw1xJOkF/cMJovOnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778045854; c=relaxed/simple;
	bh=khKYNqTLN8TuoeMcW+fulm4aEYsL/3aeKCSfznURvhU=;
	h=To:Subject:From:Message-Id:Date; b=i5a8U4bJVqqVhKiTD30UA9RMUcytvlnfmlw0BrKkLP0Lko/M9kgmPV8sGPo9vz6kluuBbg1DpDDPIuL3C3Od38QjwmUI+U8gCAmtNKb5jrxTSWnZ35Nu8tHpRGT9grnf8DZ5ZRwwN6FzQKPTcc50YUUO4AdIJXoj3LX3tRQexE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NK+7ugaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NK+7ugaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A3CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778045853;
	bh=khKYNqTLN8TuoeMcW+fulm4aEYsL/3aeKCSfznURvhU=;
	h=To:Subject:From:Date:From;
	b=NK+7ugaPKFx3EZuHeO1XLzDB4eFRQ5FACHnauTOenMz68pE4AEE21pyYdg2RAwUXi
	 /6Y7LbVlkCxSbWsHTi2Ly6FEs4BZ2oonuHivSWnWevoInnbEOgrK6ejnWHv2g8sa6b
	 BRy07fvQkbCbi0uql3fxUJZv5LYgiaQKfy+4IQ3hHqDqrATLGV3QcoQQMxvtfwVYLn
	 0GkMfc/ceeHys2PSO/+qjm/bc0r1Gz6IaWGTODao0kZr16aItz75QiX3qvjnXqRR5x
	 zl7WO+1O6D1t0goSR7wSB6jhG2fn6rTAaE1xSrtpIRVUkeJnZd5RSc0PwS7i4zblwK
	 EaTFAkNq7THJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0D7CD3424
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177804585368.10393.7522658315398786215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfef40ae9bf576581abe2ea330dc04e83d2f8371224581291795bff6a1d70395
Date: Wed, 06 May 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778045853
