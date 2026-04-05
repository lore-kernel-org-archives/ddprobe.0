Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487CB3B28D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775367334; cv=none; b=alREOOJhDFhnXaUXqD7a5YNK7I3I1aHwJHJVQX2yGDzgAFncs3KDzpZ6Mf5+NySpJtZ9lMxxKynUW9U3IJTlWjwrZzmIX7Wktv8vrGPP1DTpiQLaR1x6B73LqkTjbM8NC7iOOw2gRiV7ILHfUWNoqRP3xRbynZs0Gn7W0xrBLc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775367334; c=relaxed/simple;
	bh=H6vIiDPRIzT0WYxdc0X1ISQxEFukLlIDYfI/nbQApqw=;
	h=To:Subject:From:Message-Id:Date; b=efGW49UBf1NGCYP1awWbv9WCRCkCTaplIZS4X5FvtqMnT3r2JCbeXGL8Qbt4FU3/2No2AUZLp+wojCwoIohVOAbPOoR9udrx46gas1GWg8quQfz5k4IYwA5+NCnAWGHVmNJMhv+UTlzgqSN6l8eIKhvPUUTBvlAe+fehWq5ybas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9kqOFd7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9kqOFd7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3779C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775367333;
	bh=H6vIiDPRIzT0WYxdc0X1ISQxEFukLlIDYfI/nbQApqw=;
	h=To:Subject:From:Date:From;
	b=h9kqOFd7roKk4JUzAoLh2boArv9NxBrR6PBhhekwYRtgl7W7oALwsVS2C/hRIpsT6
	 HpXBDOClBjhm7PxgoQnCKb+OlV2Nco2dFw0hLXPiLn0IzbdFl+0gxMPMdcsITTaw+b
	 qXPi+4Z/Fs1FYJnDt/Z11y4tCchuAgO4b79/5glBqxhX15w0YSUhdkrxSVB77Cn8h4
	 AFKRnmBTKPEEgPAKXHJLuUplVMwkG8JXj9DDYCRm262wU00esxGhcUOLXILQmfJAhj
	 M2P8iOduSGrEvAybjF55l+e+CiFJLjnrtSApWKLSK9NN8iVjvvAz5wzqMyOIRm2Kzc
	 8KB4ZmXmSnJQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC23CE64014
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 05:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536733373.27329.13957419522667736428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f682d490997a2031b76d3f45d85f906c9313761eca9a09177bfc28c7dfddbd4
Date: Sun, 05 Apr 2026 05:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775367333
