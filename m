Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2987A2B2DA
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732859154; cv=none; b=m9uvFecFGKuhrxVq+XU250/EsvY8buMvF7vQIO/xZgqw658dn+XeuadUdIDhfC4fqKzJ3ok73EWo6M7ws1ipQVwo5p9CKudI8IxHVQw26OMa33VsKZwlMwY3GPxNKETZOpb07aaMad5Q9T2EzajAH4Jv3oq/Ql1++GI7+AUemJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732859154; c=relaxed/simple;
	bh=8bAzjX69XVV4QS8/aoyG6RvPnAnC5XiG9VJja0xwjLI=;
	h=To:Subject:From:Message-Id:Date; b=PVhNR/fWMoJPcZgeYqT23QfZSaHa+bCFLUp1A7hL7Y7TCu9ZiRP9aUcSxEaA7+BkfosKd11kdyL2g1UjUAhVcqn56sKaf2Y4Dd8hLbwGPM0Lu6P1uqY7D7JDbsX48pJpL5MPtHjNDm6y54qa42FXtgOy03r9N4IzdicPr5F72+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SULtRhDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SULtRhDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0F1C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732859153;
	bh=8bAzjX69XVV4QS8/aoyG6RvPnAnC5XiG9VJja0xwjLI=;
	h=To:Subject:From:Date:From;
	b=SULtRhDGBPm84GIA+5LmC4JkjvCQ4UIHpca20TqTkpuj6XudJeBS3S0kfTW+tImbO
	 XMmi/Ik+kd+1tIEdK5T9LqgD0kgQYixnY7y5un/44Vt1bvuktHMmsldp3OsYNoW/14
	 Uxkeywi7wBnXYM1EDvlWgmSDyCAFI9et/SsKVz9YZQ1Si0pTNqxbKWmkxu2xjxHnV4
	 vsF4FEMkq28ArDjTb5AOCUQ+12kALm97MUVAYuykkgv+taabh0nJmT+dm3zJ7j7/ks
	 L+kytuJlpwdCoa9Dp2dRCr0XeTv1zuNpjOH210v1Gj5IINaTp4C3kk9YY8/I0fLj8Z
	 KNjM6lZEyIk8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9704DD70E1A
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173285915358.2034.5886366819356153676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30a376fcc8a26e38db9cb13052bba60b81a61cd107a10f9079ad0736a245ad9
Date: Fri, 29 Nov 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732859153
