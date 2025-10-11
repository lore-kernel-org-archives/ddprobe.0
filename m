Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076C6AD24
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760178594; cv=none; b=jYoi1R8Cn0AB/4Ggue1wMWbimSsagCydAr7U+ktUg/i5ThaCIMI2JuNjY+7RkeO68gq+NZ4QGW0xW6XH2GqLIJvTM79SWXxbPyEpeHodjtG2IiHyzea0TgRwXqSfcnApSQ5A76JRzqzxynBn5JqHxWJSfXH50EYHpL61mkzM1+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760178594; c=relaxed/simple;
	bh=pTCjoQpKj4Wpyp7DC3OB0iLoI7tvaOE8G+W8K/zCWJ8=;
	h=To:Subject:From:Message-Id:Date; b=T2qeHsVPX0ehN1V+7tg7+/g+n4lBrkaNHnJZfv6OZ6GkE16kfsUVR+89pUE7y1bhXxXjDIFxx6dAOa3kQH8KxdIMZRCdZl/o9QxLxSwPL0zbdcTkXUd3pvdJlthnyAn93sQ4tWXFB0yEsA4xgg7ISs6W0B/q4aRVp0OtwKCtZzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lt96MRGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lt96MRGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A7C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760178593;
	bh=pTCjoQpKj4Wpyp7DC3OB0iLoI7tvaOE8G+W8K/zCWJ8=;
	h=To:Subject:From:Date:From;
	b=lt96MRGfvVGQSPnZSeX4qTy3F+jBSRIr7z8/P/CU3lUMmi+zRngTXSe5Tw40ex+w2
	 zi1bkYiY5q7Hfrv7iQfZMAEKQS2K2Tm450dAuWJKFrEfqqTbZ3aSjxfGEZVahhr1Mk
	 4yMgB+uiiPsQZ7wJ3GhAjZSatVDM5s2WdDsXZlgrQm6eJG0qYt4ChkAWzZ+o3Wig3P
	 LI2Byx2xiA8f8dYI3vzDBL7Z9fOkCV0U5okZmV6ioBQjvplCXFCVnJlfHWaQ1hFfD0
	 tcj4O7MuuuSk4RMnJ3qKwGyY98GJCxkvx2AxHcVL0/twF4TiFkgpktZ0Gv459qG/y3
	 I6e1nqGncLBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CA3CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017859359.7964.1451086086007978746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e226c5edf0c57ba2e26e385f4376c2f6ce002a2624240a9120153e6fa43ff6e
Date: Sat, 11 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760178593
