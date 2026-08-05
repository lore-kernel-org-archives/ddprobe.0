Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601D23043C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785894634; cv=none; b=fpbvqaa+Nb8l+pA45GjJcNH5BzD/5Viam/ksLUcyhhH6puGfPJ60XZIUuG1ZnYOwG/ge1+ufhlthIuKFA/7+T2zjrDvHiTiWdBKvi10JJdt8kyO1XcdWix65WPf2825PS8EolH3iJ3R70D0bVbBEUyT1cGOuLKRe9c3KzHdJ8JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785894634; c=relaxed/simple;
	bh=6VSSQyB5WvvWNrTW4ZOTHhKRZbwwW4ufgLfuUgCKRKk=;
	h=To:Subject:From:Message-Id:Date; b=jFumUpHYoMlTsdbHTXr7/2uWOpvFxrnB9K23R6WXKuZcobF4MheeU4hGEoG/KkhOssJbdKkALMJ15fz2hsytvzj/NvHK9SY4VftCmmqSN4KsGPY52ozt81IQrF4yHlr0rzNyjhcS2r4bsAiX52KNt51/ldkpOzx2A3a3OvazbP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FF1OFPTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FF1OFPTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0332C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785894633;
	bh=6VSSQyB5WvvWNrTW4ZOTHhKRZbwwW4ufgLfuUgCKRKk=;
	h=To:Subject:From:Date:From;
	b=FF1OFPTz+LS9YUCBqxxGH2rEbNVRCYNyOyHAdHgsZ5ierG2xPd68sXPkacyDtaM20
	 L83pnMsPE2lXuu18PKTI0fYYNvI1RZr6Ihg41ZdEOqSLnN1jdxlWRdxFQY3EyVpl1h
	 JrcWHjY7jSlP9Sc7vJk6Umg3woXXc+4K3HbtpfIGXN5nyT0HXgZuYwFctSG72gwUtG
	 UDsIWulg1GvaH2Tf+IsGnXZ4lHXGasMx5CBxjHd7b/oVq1cUMKgPVXvmh4zlvgycrI
	 dJUWRWHE3fMXRC0nlbbo4LnYsoYAQxxLlR9MGfsr4Ysieqo27+Kbzd/gcRhl/nUFOG
	 lqtFPsSP+YxJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACABFC55184
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589463368.9027.12076822696029357350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b2ddd6e05c20db37bd3b2f49b50fa09127e40ad25909c07d701bb49fd23e876
Date: Wed, 05 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785894633
