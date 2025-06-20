Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24050225A2C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750403394; cv=none; b=eT+oe3Og5EPDr2kCS+a05u5AQACZv2Zl/G0FJX+ExpquX3Qg+62WxP4E+fpdTqSgUeaYbv+ikVOldNF+G4qLPWK6/B63jJvZZEwLwg7wSNW65aqDu4u65gONvYCLrEtZc5J4nb5JiSMx5elnHFKXtXeyeq491434XdSb3FuxoTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750403394; c=relaxed/simple;
	bh=Ibm3iIjD+NwZX359oyYJXiMtrJnAmWO8zN71mrmAqcc=;
	h=To:Subject:From:Message-Id:Date; b=csrphu0MLqj3KiGc4GzFCpWrh1/+tbh0iFvPZIu4ttR0lUZen4p8ffutp1RhylDUzoVZiCQ+vNnXb3sV79UuXuXJYQw2DvNqjA9i7vVXqnQlRPEg83XRhkpY1QskPggdB/y8Y3pen85RTlhnzgDLy57/If8CFXOq5j3cql4Sy5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsjLpp+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsjLpp+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFFCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750403393;
	bh=Ibm3iIjD+NwZX359oyYJXiMtrJnAmWO8zN71mrmAqcc=;
	h=To:Subject:From:Date:From;
	b=FsjLpp+jXZloQVvXapAo9i3rNN6OufzIb8LGPweKgeHsJeKsie2Bf8qYauOzDO5Dz
	 cJjukeG1/pG/CBez5TRlhzckYXArMkshgYd6RicuJNH2AKYcxX03E6ysbWW//wvpRU
	 tVcHViEsIkuOvaEHdP/rerOyXX7g8GEeRGwR1AkK1GdLLUgSQArqdxnj2/0f8+5pwc
	 U3nK/URr2iBkO9qS1cVBcVM9ClsKduXddEzXgFWmyrS3+oDB1qKYMcw0cQXzi3gZrK
	 nGshhay70cc+HZ4K19exv5pWWOKSm2BEiMWmYbW5DuJZ/4WfT+rp0m7vdJZfvLB23z
	 WInkv8cG3+wiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76BC71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040339357.8477.17401343589079365326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89cef8d0de81fec3d67132a509a1193132e3b171f2e18eb7adec3794bfa875ef
Date: Fri, 20 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750403393
