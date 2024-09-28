Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE822D61B
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727493954; cv=none; b=tRqgFR89Khajo2t6Kri14iujXlHkUougYOZhjDBdS4r1OgrlUS58HuIKq44phtzkL0SsAmI1SSSXl6vEJLukHUPLjl/cU6zeOu3I+NDSyHyxdVsLn+NxjwPD7VaBJYTpS/mxAMPjmDpELJcbgEYseCgKl1epijCgQ7WOGe5oW0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727493954; c=relaxed/simple;
	bh=7qaVjT60geQVCppeSRE3VqEnnQfryosIFOARfXK+4XU=;
	h=To:Subject:From:Message-Id:Date; b=kcxi1eJKP8sOGCt5ajF6ycu91JD45kvVxhQN50fl6h2Fg1e4VFDtY55eKfQSHVFSq3vLusl9+jHef1EL7VpKQUI9+6uEhpF+v6j+6rZ57PSxH3ruk+rs2JJBk+ZB/AW3/vHk3M7PJNUv8AyklpAhKjl3mARhK3mXGE5p3E6VvUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=id5/FVN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="id5/FVN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBDFC4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727493953;
	bh=7qaVjT60geQVCppeSRE3VqEnnQfryosIFOARfXK+4XU=;
	h=To:Subject:From:Date:From;
	b=id5/FVN8HV08VzDCfz2oudDr+40wdcRVO2Wd+wIRyZ11z9gJQikPI+FCeEt0KvE16
	 VrlC5qrWQrLpeO1EdMwZFE0yxw33bAxBBoVwXstcq694C+rdUDPIhtPySlhxxr0dD0
	 e2SjVJXbV5U6CxSYqdOwEBThzZCfFRctEzaASxuzE8CLACaobSgAB/F7+LH91OAZgl
	 MtMlDA/KCLHM7x8RfCqa4/zZP4TChhnLOrZ9K8WYyUfAchkuM8IiSbFL+obTqHXN8y
	 lIXut6rmYQhrvZxv3d4CgARu1S7r/1W8pHdmIS/JkvNRU4mBrAWEfhcDQE+Llm1T7N
	 Zj8W/ScnqWU2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD41CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749395360.21514.11052144318523929991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b11295a20caadd80cd1d29028b15dc7ca2da58baafbab40c5dfe2c184458fa9
Date: Sat, 28 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727493953
