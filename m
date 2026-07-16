Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4137F2DF13F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784161714; cv=none; b=W7IkclNgbaWtT98rYMbrAB51VBrdNKKtfHZyowLw3D9ISjxf5C5j+mmMEWU8Kn8R6s4exwSNb38mdsijlaVYYjy2lZdEn89nOdp6LNbg1CmfFo02eG7RTGq9yjM+dQPUfpxI964aITX+lFxmA7JRVcljo/GKJvcI67zoMhr9ZVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784161714; c=relaxed/simple;
	bh=3qKq2So3xgOrOEVp3Z66+nbNKC5LH6lOy+fP15B9L7s=;
	h=To:Subject:From:Message-Id:Date; b=XQ07fpJ90OF+gN8JnQNV8ZrGuMLAOWGhe/CTv+icg+aF7ZgJxo82dwvtak1XIQG1ATSyNXjRjXCEjF7IdZE3jRt4FiMkJqIyRCOg2hGxO3mFOLX+QGQjWeqp5DVFZdkHxlZTtnU26HAFr44CzApqcK1TUZZy0wggjgOUfOODd6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHO75339; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHO75339"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C14C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784161713;
	bh=3qKq2So3xgOrOEVp3Z66+nbNKC5LH6lOy+fP15B9L7s=;
	h=To:Subject:From:Date:From;
	b=SHO75339YWM096brMwT9h7iJNmWdxN98WQIs7SChxvgJ76/YkObeZEOErS9T2Pf8V
	 PgxEUGrEtutsXcp5U6+SWv7Ode19goOwqKXJCMtfyBDpMcoD6iB+D6u/icXcSiHgz9
	 VUd3nBxKzP/nyA+Ou0cSEB2hVrnysz8+dgu8ikWoVze4kcl+dJ0LBJ/GFpONRwFvAZ
	 NFBDvtFMDJRVyPjUMkClDbg+ODIR9Oj41rcsTuKDwujHf1U6aJIArHI0rSFOwdUtDi
	 RCK0qoJvNGk3JN4m9uogPDpKpYnpSF0LoCZxmVlPnMHYGIC8Yr/YxGrpVwilZjbSWB
	 vJa7V/c5oN4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89BDC44507
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416171368.14038.14762265719071828600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f85e7eff837788e097bf008ac188206bd8a4936f4fc514c0e91fdfa0ada59f9
Date: Thu, 16 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784161713
