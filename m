Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F16117F0
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715611343; cv=none; b=sZsUeoImkItnsfcap31SHJWTfQ30ELvtdMk4OxpGtkWtMYHqVhAi+ESIsg7+NHpxb2/09uAigx/T/K8hYQQnq0g8nGpObAsjIMkZ8GqgOXLEXlOPdHjBlsOf1Juef9ctH/MvWXteAGSr9uQV1zP+w3LTA9VbUvoSLiykRSuiE2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715611343; c=relaxed/simple;
	bh=X6gPA8gGbZpQhnGQia1ipql3IcPBTgJErNlKSAwfDt0=;
	h=To:Subject:From:Message-Id:Date; b=MEuq+WcXbWoXUhE84zesvmLIdD8iavwAaCDEWv14ZcM0yWPiaxt9pKeQ0k5j9YA3a9/pyZZ8JPbn2d7RSPosQPHERrYbCKWSOTKi5nKXqglDtODyMouwq1cnfQAYv9T1ccCQeEcISb1fN/PKGyutp1kqsKL6ys5F7PC0Uv4D79o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFB371eN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFB371eN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA073C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715611342;
	bh=X6gPA8gGbZpQhnGQia1ipql3IcPBTgJErNlKSAwfDt0=;
	h=To:Subject:From:Date:From;
	b=WFB371eN29C6zRCoImD36BKGKxYuq3OD1h1Xl4zWB2mX2vlA5gV1w6eXckKU88Yfw
	 YWpbdvbfzQIZM79SGre9aQHxeRbMvjKw/2YHMmm/fEBTeXc6GUCZct7vGlNCO9qyAF
	 DeaSL5ZKIwO+eQdUWhTAbJ3O0tRT3qEFPpvB1hlVGoUDB+Hu8nyAat/It4/Swv9+xx
	 W4+aCA91dbl+R/99H2Kgn0BWeLbIbq9Oz3LL4il/8xVrs/ZJoorHX6B70MGsQnDMag
	 dHH6DuAv7ACp49hkEbEeBCSrJf95vMzmuIEyAUD+E49rgsMqO4GwiidEFpHEXNaFQu
	 Ja9TZLhmJ7Chg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78BDC25B74
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171561134280.12266.10760222954791176671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e41c7dfcdf24772738d73783ac99fb9a31979d5b2775761679bcad9d3f8c859
Date: Mon, 13 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715611342
