Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0CA3A1A38
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781733394; cv=none; b=Xj8G6XlqzIyrqQKpTmNkE8CPsA0QL3Lf8qBn+k+MkFH28lcaMkE5GXSdMHHW61Xd8xkhcg+HBTIVLufsvHClRqgUNID5GZKRRQoa2HTbgOGfiQGe5JWD0FZVq2/vN/2x9npMPmQHXFOUaJudh7catCJZCRq4nFfmX4bgDEAgzKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781733394; c=relaxed/simple;
	bh=KtG5VZtLFdI7SLdcgV4TzjhE/OrgzM22OADyDsfkCGY=;
	h=To:Subject:From:Message-Id:Date; b=ZOI9W4um/CerWmugE2/r9aCR/RY3bXIE5gJFyysCRQce4A6BPzqQclYkcu47EN8Q3/w72twSyOJ05uu/zWxr3dnqJa4RsA70DkCyPnQA/WdoXnvdCEQWGbjw9JUcnNDY6K1yAJCqvfccGvN/z/EqjCs1kVWaCnGJu2spiBxDIU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnPNlaW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnPNlaW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C859FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781733393;
	bh=KtG5VZtLFdI7SLdcgV4TzjhE/OrgzM22OADyDsfkCGY=;
	h=To:Subject:From:Date:From;
	b=NnPNlaW68mWso/sUJxPTgL7hsX/wS8L7Xuw4MhR3Pk10NgUTGtacS4AEs0zZiCgTp
	 /l+9DbwR3BZTcRNy7FG3hCDPUMYCyMvkf23HFcTMwdFj+PWxpMiytMt7HWW1SQmXBE
	 Hqu94L2fa8ZOKIb2V+TtYWwf5S+F1GDwXJEil2JMCHmTE/srdct0AM2eZZp7duf19h
	 siP9OdSbqosyg22JDsrhp0VFSnq9xMts5UsZ/3i5vrDqbq4PE/a8SWwWAI69DU2cMu
	 rxrsjOdUscrSQXcx8AOgcVHEC7zXZYupIhE1cAZYz8zCFSD9fgWARUrOnAAuTjEjGO
	 wyJvNsJNY2vMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB33DCD98ED
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173339369.29299.11886062214923652952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d7bc99d60c54ec510532c19f5c9ff436f35d9d23848ebdd722c4d1e7ddf92c
Date: Wed, 17 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781733393
