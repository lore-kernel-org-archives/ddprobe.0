Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB601CAA6
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716412403; cv=none; b=lYEx7erZC8ARB5RjeWM/V30uu8VsDKB21Zos4Mno50ZeQmCj1vGv4eHjtXYkVkv3jw/EsN6JVOLZVIw5W7dLvlq7wEU1sG9I2OWVtqErcIf0CfsPZuWBhcnOAhRZuZL4TcS9piqW4MpNJ2zPnHF9W17dA0GxNKYg3IPprpsjoDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716412403; c=relaxed/simple;
	bh=xUAg4QENHo4gN9sgR/H2Ja5h87WOTEL1fzjYEJRI2eg=;
	h=To:Subject:From:Message-Id:Date; b=h3OIt4vavAU5nfBQ0B5g7A6O9pGKHIMk9TFZ4UZIKRghnIhASuIwzvIgIRD8pL576JIziTMPvoE336uhOGySPCf4Ll2xZenxDLqBogYAFUu0E0bFQnrW5tMSeYgPS19baG+g2Z99+APmKE1eax+reIqRp+MNMgPD/vTe0z35cRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HuGgoxB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HuGgoxB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FC3C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716412402;
	bh=xUAg4QENHo4gN9sgR/H2Ja5h87WOTEL1fzjYEJRI2eg=;
	h=To:Subject:From:Date:From;
	b=HuGgoxB82oH/aNvvrHmA/fTySnmHmcVEjsRcgl3qvtCU4NOTcOTRusWPJmudIs+ju
	 Nx8NWXqAyk8nXlycplwWUUJ5IQ+Poj1UJOEEYvun4yuaTvinBfeoPuT9ruvuf/oskP
	 ruuCFI4/Jq4Cul8/+2XmotVyp5BMZFsoBt7X5Yh/L8FZmw9ZIcxy0Z81wB9xB4j+zW
	 YpB9XVoHhB8kXud4tOKPhoEvCQWxrWKOgnIZCXpwvzwKA2q6SzdxJkOxJ2sV606sml
	 /5S+u1RUop3aAT6QKILKZPn0ejBcblXheuPHZqyw4+FLfW3tCBcjrw4H1nJb2YzJyF
	 yoa9mzlp8ZXLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9937C25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641240281.5473.10692860709322506813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ecd0de033af280d452c0ef6508217386b0445e2376bff85e4f1608f6af49239
Date: Wed, 22 May 2024 21:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716412402
