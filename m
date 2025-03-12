Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A87C1DB356
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 12:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741781334; cv=none; b=KRGqbRkdi5VOQ6627Zi5f/WD63Y3ZlWGJnRvEK4X3LWmzqsdqj5+mcrGuQXLx83RABHhZ7KNY90oJOH9c8aX29vY3VhSLfXw48cMQutm/TGfJNbIUfIcTZpSN4Sc0UDouRK+6oZ19097RkNWs2bn48Zgi3A/ABKCvnDpqS1kkPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741781334; c=relaxed/simple;
	bh=vImsHYFy5reYHQQ4WTbgco4UtriOvHdUHLGZwRks6cs=;
	h=To:Subject:From:Message-Id:Date; b=GTl/kjCQu/Nxj6+L/oz0kwY2SGqMbmmI8f07VEDYfRIy3ymEgEiqzTBSOTExaSA9TFeb3ZAkpJzjWY/Z5gStqXYB1rpWbIBgsr0qSipykDZNqScluy8eOhhxCqalbsZ7VrRpBzBe0dThpobcI6IlQAUHgiJFKoap5ox2iYlDi3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNq00s0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNq00s0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADECDC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 12:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741781333;
	bh=vImsHYFy5reYHQQ4WTbgco4UtriOvHdUHLGZwRks6cs=;
	h=To:Subject:From:Date:From;
	b=aNq00s0a54w8574cg2ejd3Tp75zQTEFH88hwT9m+X1mrHsuOxdU3tdPG76i4zb0ZX
	 sexWnIukq1jwszxX6LjjHBo0ABQfBR0KJHRYm+Fx721iCrTjAgHwTRQsbK9uLFAS5b
	 5TvnxOLB7flpHv3o1lunyPP1ieGH84w5QNZSYNuLSxJr5fApizpuFyXLNZleGVYBBL
	 DQaO5o4IlfcNSk2HapwjIbGUsUB/Sdqwx/Hcd1oOOB4QNAVUYN0UKPLs4Su1TAlzYH
	 Uvfk/6GZ/4o8kZXjuVlmBIMNuYYT68uxGcgM7DupKIMYu0gduMiZcc1HdOOhGHNhkz
	 9LnpGK8Z6woqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AFEC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 12:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174178133359.12236.4828341751289054507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe646fd20f09497280a04e1ad2662941509d2e889a6ab4b557b3c4c73609f5f9
Date: Wed, 12 Mar 2025 12:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741781333
