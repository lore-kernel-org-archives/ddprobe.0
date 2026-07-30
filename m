Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7281439A057
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785387634; cv=none; b=Z7PlnaBP7kFNQi/z+cXBWg4CVfX4uzaRSfeBriMXlyHzGM5Qyx4P/2zc75s/mN2xSascZECQNnrX4BiNvWeb/yxO0fwacDwllTql8gk0C5mFoXQleMCP0vj3FssE3q27kmh6YJQPvXMzTlY209mduco+zclUy8Ag//uQKwF8S7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785387634; c=relaxed/simple;
	bh=Nw0fu0P6UVtUBbsAmp9rODQ3W+5NK5KQ/y5IX6+pZog=;
	h=To:Subject:From:Message-Id:Date; b=fB/GOifTfXPoBBTFZFggjHqfO1ZiJ+te86MFdJZOr4nlGrrNR0GG+A9eepfkNLCV5kSFBYkN94fMRzWauY3Qd8vKgY+lcDM5+2v4JVkrtNP15ww4muvRbiiPR82mtaJZZa2axj6e0mU6+rALw+SkWAvUWgQ4RFHvcPKHqfzFlzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pazmzLzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pazmzLzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CECC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785387633;
	bh=Nw0fu0P6UVtUBbsAmp9rODQ3W+5NK5KQ/y5IX6+pZog=;
	h=To:Subject:From:Date:From;
	b=pazmzLzmRf83cjv0W02CDVKre/16a1TU52bHJcERM6Y4b2L8my2597Kj1wM/WqUyV
	 ItmI5pILUUXpWu7ezING8rQMgDg/9wild1rCfaGnurkR2J0iADBgEKIMaFpmO0Joll
	 AjKc+OJkuaUItHDY3nFYuJ1tTeNN4M3sKWVfzw6+AKETbZvOYm6Ga9ZSOJ5m34beuS
	 0LOdfHfIok70qWsu3E6PQrnTxx22bliLodfDeJGgobI+9wuHTX6j/VBYEO1QOzyWPl
	 v6YC1Ij773xtvq5puV489TVJ7CPYiTIWiqlezHjugP9oGeToERuGtvGu9VFYWUhEts
	 TiHFO7Wx3AHpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D62C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538763375.1189.6748950464568369469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6631beaff2633eec88fbd8772fe1575d87ae9f10acc0558355782a9010b5fe0
Date: Thu, 30 Jul 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785387633
