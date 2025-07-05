Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CCB3FBB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751758194; cv=none; b=luqaxoTE9dPFnUPF/j+F3b+rpVhXP8cioT2ly7Fd/uxaWqX6wceSdw3LBVxzGQiiZB0qJZLML8ROJ+FjJjhSMuQ5kAE6Vou7mfXVjdC6ZfVbdx3/7JItRiJ1+2NAhlsug+ep1j9nVzzRUf/ZU+AEgs5731D2jCb3flu5+o8199M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751758194; c=relaxed/simple;
	bh=74Wxji8VLPT+RodnBOFdK/G/oThTgIoW1n1ECwhC/LM=;
	h=To:Subject:From:Message-Id:Date; b=Z4UQhZGv7tmBC9DT3P1iFK9R+USgVTppsSEsUQYRHRk5BOQoWtSuN7RC0VEIBJLz3fzOeK+OC17oyF7GsiHcH7VCUH6awlfFJs2FeSfB4fI3SLbgJjjUuRsanR4Kk2sXbpmhdiQbH5RyJ5CuD7D495zn0WXuLPsxdmEnrTuRABk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Utr5CF7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Utr5CF7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F6C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751758193;
	bh=74Wxji8VLPT+RodnBOFdK/G/oThTgIoW1n1ECwhC/LM=;
	h=To:Subject:From:Date:From;
	b=Utr5CF7hLlPpF8+QNEZyu831ayhm4pPXGe/NhTtze+f4BgUU1TvlWjaRlK5K9HyTR
	 7/+eaiWMMxVF70GjEKz/hkwM+iGPDquAPinQXfrR4JLR+AK5ZCLaZGOSm3kLM5AG5q
	 9j8vCYgthitILfa6KHJYaL3KbXf+aHboYn3t3r6wdwS+w0ocr47z4wdgaUEp8QN68Q
	 GLkQRmeSufOO2SXOoeTNoFrkIBKgjJ/lJKMiPMTqckk77sKems5KwouIWG9cW3HG4r
	 SOjrD96m4uRmvjGfhwr6lbFxn231h2f22KzL5nGZBYGwO0eDQiyhf66lEuiNRj+atO
	 ghbNxDTrr9hbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAEDC83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175175819357.25038.5164274614589656570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b52b436ea8891049db4d4364d9e8bfb95e4a11166494dfad709a14e5609f25b5
Date: Sat, 05 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751758193
