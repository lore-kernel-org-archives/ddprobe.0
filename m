Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386B6205AD7
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743523794; cv=none; b=WMgHJ5hhFtxYS3u5EiygvjMlXCTSGwnu4S5KLh4I2UDoNWcAwqBOWK3S7xr8sJC/nw30KP0Szs0P3pR3wf1x4QK5batHXaMlyZD0VoQVerk/XP2LWnGHWJsy0u+qDn8pZIaujJMf/ANNv/1JGjdytOCjuXl7+ccF/mAGK4fyV4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743523794; c=relaxed/simple;
	bh=tsGWgrrN8wfNq+zdXxsUNqC7VAPgh/NMfQzOH6fUho4=;
	h=To:Subject:From:Message-Id:Date; b=X28gC2/yOHXJb75vNcbm6mocHDZodE3bBdVcDdSaSpvtJE8BTK7wFkhVWcQU9BZVcJdZeoSGAe5D5G+Fd5ttbPPY9TnZHlWfM3OQVNoO1BOtIwHPXpMe7jcNB0BPpLan4hh4j54u9RaUn49W1dUuoSgXcKh474rn3wYxXhHLlBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq83SG06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq83SG06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE12FC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743523793;
	bh=tsGWgrrN8wfNq+zdXxsUNqC7VAPgh/NMfQzOH6fUho4=;
	h=To:Subject:From:Date:From;
	b=hq83SG06o1SGVN0C8lw95JDp/Axep5O6Db/XIF649X5CgS9T0HiOXpsaEkCf9x3u4
	 tkxX+Hq0jQu6xHDsUx54sRj7nnLgFK/QebNQUA4UILrlhKrbraPVn2Ng3oLHqByE+3
	 8B0wxlXcJUztERQ3Ww2mexCH67nzSA6UP8mMtD401abuV3R7HUiaHkoyjmLtu70bWY
	 SuNGk/pKbeBSO0+65+d2b/Y6YAtfBXSGObme49kRI6Dtxo+DW7Uolfi0IbLL5GBh+o
	 E+G4bkVSQIhPXizNa2twoTCsfULUQYaWIEgZ7Up+VrhrmQ1IsHjdPKmnLLxeTrQ48R
	 uS6LTCjdgw0JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABFEC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174352379362.5993.12865760791923790571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975839ac8c82f67d15606b18f67fa4fb96617bcb5f9d089af6180ab8d458efbb
Date: Tue, 01 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743523793
