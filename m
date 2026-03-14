Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3040931E106
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773511494; cv=none; b=a+nJtmua++n1lEtgiVTtIyBla5d/hIhyOg7/B6o1b3ETu4mtVN5hY4CB9MXV5Dc5Y+RXUzKCx1GOgtf2iAgOCj8K9wnBE/UNtxpoGi0Ln6m8fezlK6nxuYYlDvz+G/TBZ8h1+E5DIeDwCnSzacsLDpj0AJdAesdPPzZlqeGpP7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773511494; c=relaxed/simple;
	bh=4PK4M3Mfsl2cOj0ZmqTn8U8ZH/reFlqaU6Hoe8lyqSc=;
	h=To:Subject:From:Message-Id:Date; b=ppOrZp7bym9i9/UtG0jlO+kFWiQUB3sEPBLnz6FZ0/Nbs/7AfJhSMR8JF3de5VGb9pOHycJ5PWESj885GQhkMkmscyxd8n2UJrFgnolyOTsTnTkNzpfOZ8HSuCFnxRZKpEweRWHq0oVGOmymne1f44OvLXz8XKGPm/z1il8iL+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfJBr+D6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfJBr+D6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1847C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773511493;
	bh=4PK4M3Mfsl2cOj0ZmqTn8U8ZH/reFlqaU6Hoe8lyqSc=;
	h=To:Subject:From:Date:From;
	b=PfJBr+D636ZM9pR5KgBmPuioVgxP2JZXXvUIb6dEwVMG0e22KYNGLaUeJtWFteaLK
	 bDn19bF8et7a0Du5pK7JDDn77TzYhHr+GCyM+2nC1fZ2hxi/+ARYZk7UX3DsoYCRTV
	 vZpvvbfDgFoksKf22GWOK3K7xZl1gSbdrj0GfhbEh1snsPId2anD/TU7JhxbjorbUk
	 ipCZtWkbP0eF5WF+FdBfvFHNC7/FoBu0uYySfVTydkPsWg1LmQtuh7AhcNbRGEKRsz
	 Wyj/Py/VQKQ651rXnMEEjgiFvawbSMdpQScof2uJ7j6Q5yb4QSQEwtq7vMZLMBqdH2
	 iFCAW7qJVlk4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9077B10706F0
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351149358.6556.13795635113306558214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7adf8a458d41c1acb98a24886497cae198ec5c9cb3f55e6fe15e300ee4bdf6c8
Date: Sat, 14 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773511493
