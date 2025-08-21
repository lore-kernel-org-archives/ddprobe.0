Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143C078F4F
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755802794; cv=none; b=MxIlwU4znAS1ecFv+A5vhx8LUI/masmm6u0zt0LeIgkK60z8udYkxte7C2j833QBSOsEcayrBZb1ZgdQznX1erjm4ZkB53FtPsfVq3VIOW6aR9rzj+GSWBHcAsZOS11pMoiuIfW8Y5AanYS2bmYZd+cQu5iHg7FSQ8Fof4cjFvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755802794; c=relaxed/simple;
	bh=l/uVoC048nGX6tCa1DGilJL9oo6z7ecqOUOGtydVQh0=;
	h=To:Subject:From:Message-Id:Date; b=t3+3RRXAQPZ5kMqyI3l13NTnscecjVRuCcCxwq/l8rQvkm7VhecB6bueU/5KFJsV1CB91to+7MsnVwReLg3DlLmIA919cCY2Alo84XLiHX5+LqrU1nUqg/VEVvVlO4yNP3gt45MZK5K2FgduMghTg2vx5dAiSd92y7WlRP/aQL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6g2AbvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6g2AbvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7FEC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755802793;
	bh=l/uVoC048nGX6tCa1DGilJL9oo6z7ecqOUOGtydVQh0=;
	h=To:Subject:From:Date:From;
	b=j6g2AbvM/Z0Kw5KP795Y9VTDHh0EXGWkLhZc7XeOY0hwpiuatEmeyPZKgyTIl05oL
	 k9QIU430vyywdhsaCoCjPSmPaaYkNtOWcyu6AX+bBEshZvlL73nQKqqjLQllZ8QptT
	 RoQCc/7mxobSQuYAo7VwDxfJDkraJJ508QPNEdqZIrZJf1bijBnm00ulfS1GN8MF2w
	 Ty3jDW7iOhARkfqBfrYY7zc4Gt3WYKioyw9XI/fy0Un5MgIKsgs1Yw3/2kRLJa6/ZI
	 ohjz2ridibqsG3bmDWTOeOzKov6SyOVYn3+LqRrASf5hIDQXw/ZD3W6evYFHNXQKSv
	 qSdVND5NlcpdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED48CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580279357.23490.9557652069979227675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761f922001a9234f9794204b82da41bf56d2e91c33e5538615e8d6eeda05a145
Date: Thu, 21 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755802793
