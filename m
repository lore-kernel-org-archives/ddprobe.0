Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E87429408
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746037194; cv=none; b=BS4Uwjyv49grDANd+xc+vt30+U/JMVR4T3FkyAr4gCHSML0drqB/9H05q6ENB8V3olv4sUKThIEUtLWgU7xqpVdnBruyET0veGHl8tQKDuIlpNQhI/uJ6lFxMNyurF95PfO3vDErVasjWR1pFW/jmCYwvdC5ZaToIuGfWB1tddg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746037194; c=relaxed/simple;
	bh=fzL87PCWBQTyLuFtwzxZkWGQlyWSl075SqHjEzIMLAE=;
	h=To:Subject:From:Message-Id:Date; b=jbEWlQk92fMqgETuXEZ9cAjyPse6NaZ5svmRFi2w8BmgZEKqH2PzK94O7YlIUGDTlXHGQ0it0eP85jyQwn/fUpjdf4vvr7J/yDFQxyWxSDq615uNrt2e2w3g/x+6I5zoUWE5cPYdrngVIIK2EXnEgH4Ka9gwbcBkh+TEAXD/wrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjwrpQYq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjwrpQYq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9136C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746037193;
	bh=fzL87PCWBQTyLuFtwzxZkWGQlyWSl075SqHjEzIMLAE=;
	h=To:Subject:From:Date:From;
	b=sjwrpQYq3fgDQdtD0CtuCCP01S7zEz3o1FzDL6S5FJMtCqbkquGmF+CbMkI40GlUv
	 N2UJ0NbxlTmV6Go4G3s7juaaTQ0S6lGF4ZEtVACA11wSpnRvLwx78Pz3nNlyB9skM1
	 D9RxIuXEiIGIPMHfwHuMXGKYUnBcsDeg7jJQjPWrjp/rlqjYp3BuR8UOHCq5Spvh9E
	 CWPDDMhXWiCQCFiKUrze5EO3LkR+YEpH9wXjwyCihUqxqPoWlp+YUs4WRM1GrQLGa+
	 HznxEWIiAD4L0qHfwvUKc4DT2pqUG9zL287QGZiLG+0Ywsb+7FzMtzrkYunTF5ABsA
	 TlgAHXZNGLI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94238C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603719357.11707.13635596262383942375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c962e44551ec99777f6cbc0eb1d8188af8dd87c5df2ffa487fe28545d4cf46
Date: Wed, 30 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746037193
