Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409B91AC44D
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764379974; cv=none; b=lgCD7Gv/uu5eQlIQdpBw/Y4xjMuwcjBJeXXy1yVcAHesWjZiAdBcUGRyC/+/awqCDTXCCxWe4klrs+P/6+FrghVNTzm8TVRaFOC+UwK2LiZ6yQCeRaiHYoAWLo9jRYWIXtfwEXGv4ZYzIJ50Clcxpx7GbhhWPzM/5j2Tp0fEF7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764379974; c=relaxed/simple;
	bh=l9IvW6nzHc6+twMUXT4tT8/Z29gPv8SoNVSaG00DWh8=;
	h=To:Subject:From:Message-Id:Date; b=J/eQFqiTSNq/elJssJ6fni1xzGxe5ytbmAz7haIlAisi04GhLeM60OcPvrqyXSIUVJgCV0SSQ/dmXL078qL0E7T14fcClzHJAULIPH1WNEGcyq/dlaPx5MJeBZmV3zJByTPhBVaUeIbb5nVmwGC7QfKMbOqoEKsW2+f8bL2//1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uO4gu27r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uO4gu27r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD59EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764379973;
	bh=l9IvW6nzHc6+twMUXT4tT8/Z29gPv8SoNVSaG00DWh8=;
	h=To:Subject:From:Date:From;
	b=uO4gu27rRzu4OPmThhMH6QdzNSCKon4eigN77tmRuIDCCWAC7NKnJTpWDhTSO/vNB
	 miLbkmI2DHk3QmjR9Dkb7xUhwU7oOGfI1dElJyqvzhjYBmansRCk9GtSpleG/7kGyn
	 lbfLthw8/1rDg3yB7xlhzEK2HzzBcVDyjY5vlW7UA7CqrmqP2aP+vNdkiQu6v+6QcM
	 UkQ+r2la9ZvMsCV4U/vPVDJfPXpJmpvv2of5OklrZAcZp613cViB5d3j9xV7SiO3z2
	 PPTx8vvSEMTSbizqzDmp6NYluZxzU9quwo24ypNj5rSu1aUGH3NJOPj1sqtYPGyzc/
	 8nbc1BoIiJdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9617BD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437997358.7053.14798649310123080649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5096d0401d4843dd6ff6eaf8bcf11d9c5f49e30897331d81319fdba5e0bd706e
Date: Sat, 29 Nov 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764379973
