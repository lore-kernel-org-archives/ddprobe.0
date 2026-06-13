Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C1B38C401
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781349394; cv=none; b=ar6SHahLrG6LlP5Noai/BiXyE8oV0MxfJpcXfDkZ81JnZQDbanctx8TEGjNyyOJCL7DmG8YhHfiOaswqCMG3yUXx51+qiCPnCdYfHke0adJkPILduzwsFin87qZSMUkzcckanylr86IGYm0aeLvzY3lzZOJQkzPzkzBn6pjx4zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781349394; c=relaxed/simple;
	bh=GoLkdnEe/ConM56Q7R9xox3jryFDAmtRJCi3y7IwNgE=;
	h=To:Subject:From:Message-Id:Date; b=AcPJ8ivI0/RyQqNNN47zCqjgBKbCaF895itiJy7zAIXPGLaLgULPrUtcdCMZ+9TJTac+9dHqtYMVVbwm8kyAmJK/CKXpfXqfYUc4YbhwEekLmSBnOqZ35Ji2AfifxfWt6+2witUegTAJ5SJmAMxCo4FAfMsML+QrJ8f+84TIywU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwnUScx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwnUScx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8486C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781349393;
	bh=GoLkdnEe/ConM56Q7R9xox3jryFDAmtRJCi3y7IwNgE=;
	h=To:Subject:From:Date:From;
	b=cwnUScx3BxH7twWleWdDDGPAwqn1ExXKUSjdcdINtRdx9S1v5O7vdSqZ5sYXjfDIz
	 nzt+5bszLNvqxQcD9LR53G56fdm+Aq8xtrKfCb0N3m86iVnYps2DIH//sRm+hogdgs
	 KEqjS7P09n/QBI3HLuI1/66Qv2+Zwhg+xyRVCvRu+GKqKfUlZIF4UbICPzv2Dlx7Mz
	 K5SzT96w4UKfPjyBykbcYrZUSGdpTnVdghHdg6DwL5GYcFKnyp5rj14r05zwOTKRX0
	 fW5nyyjA0cHhy95AyuY7KZkNhnm3+I9uNCXAYnszb1BlFcop+DRVrNecWrCuZ29o5b
	 Gd7uMfF/ZoTGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE4DCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134939369.583.18259806395585097795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9c24cf18cc6a38d8a98a4729471b7fe8fbf72c87873655d3f22ed1478718a4
Date: Sat, 13 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781349393
