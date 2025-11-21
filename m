Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D58A944
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763701914; cv=none; b=hyblwQh1rb8MTDyk8zEZC1cVAttcS6MwLJ81UCq2EYzja9nXmQqI6mVzwM446TWNovE3/y3/bNgZCsmFzuCoeIdT4V9sGzIWV/s6pr6oavQt/aoVpt0X9N7nQITdbVE7Lgo/P/MQfu10ho8UH2sXKdKFHvC7DBzY5Vt2OAZeaCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763701914; c=relaxed/simple;
	bh=Imf0lgIYSbcG1JAycWNmHbyY4LPrdLh6kWQ1LW7vfjs=;
	h=To:Subject:From:Message-Id:Date; b=YZhFCglTjNLZTrDgezI6cFLlDrG4BBd/NKXA7r8kN3HoVKUeANtKkn0w0nQLgLZOH8zfwa/fc5jx4PeSCoxZMnktTKz8CuEnjD8uACaoxDy+VzozgYYsC/ri2Q27rTj6rpeA7z8ondBQ19OKNMW+sqQ3YKxvBketIOShLCcULjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXenH2E2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXenH2E2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC338C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763701913;
	bh=Imf0lgIYSbcG1JAycWNmHbyY4LPrdLh6kWQ1LW7vfjs=;
	h=To:Subject:From:Date:From;
	b=RXenH2E2s61Ibg3dgpBlKGQ1AXa7qc01VgIlM1cgUF8cyoyFdY3Uatxza4Mq9GWgc
	 AevbbKAmqBaeZ7cal5AeK+m/TkZPW/re8dtrD4xrW9V9dBLssVOq5TL+xtvgYYpYes
	 293JZ3nMg3SVk3sHRMhhRN6hSso36V+aPt6gO9ywMBbgsNoAFjcPBt0w9w08jigpbE
	 7PF+54n3c0l9JuPFx2lMrZjxbRQo9wLP65ViKfdQ9htFp6+tZ/OcMVW3vFpactYu95
	 DY5UyZOr9kJSvavTuxTV4hRob9W1pETz05mJMSrRX5iBIlA6jymKwLusnFvTsscja7
	 M2/4CHcw2692A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9787CCFA46E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370191358.16705.15879512399061456175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d37f2d501430a14b51c089c63224068f2bd239e23b2ed849373554f735c0732
Date: Fri, 21 Nov 2025 05:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763701913
