Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2F71DB377
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730968554; cv=none; b=FC44p2QWQoewzfbIfyCb7bGQ+rVhLdnWp0gtQ2JN2TMzKIjnnKU9kLyt45dqo9Tz6tsNrYebQiw2x5cSzamhM7g14RvKc717Zym3ru6saslBzcwGYNnmJU3w9l0iJXzQ6LEjvnPluf2N2C0O1xB8zLImw6L+M3qp4+IElJspZkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730968554; c=relaxed/simple;
	bh=v4FNAfn0ZtKpLrNaGReYRbTDza63xFdsQ9oQDk/0c7Q=;
	h=To:Subject:From:Message-Id:Date; b=NwV0L7zbhpGyfkKiXTgtQyezBNEMjWuL42vTVWpgjZxOs0vHhSb9qnBY1xbykfaLs4xhCKw7yNCSl4xAlpiMTfq1LmjKsu1MHJe1LcgFiI5Le2kHFml9NqfpRp3/nrxqboegYNcsIauyPFBbbbh4r0p/FzYSnLLWbwG5mCbKlGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuAY7lPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuAY7lPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB048C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730968553;
	bh=v4FNAfn0ZtKpLrNaGReYRbTDza63xFdsQ9oQDk/0c7Q=;
	h=To:Subject:From:Date:From;
	b=IuAY7lPkLnQw7WKjcgSrAuI3PCCXGW+Ra/6bCS5ToUnZnpqa5duxX6ryP/sPbHOqU
	 IQ3HDL0JFn/RGUGKu+Cg5OKgdkBgUuiLodN8ght5oeutJo1qQZbLLtDuLezoFIfkVq
	 xNth/C1tglLxbWMmvFhDs0qgqLrACwiFLNHjTQOEuGWVpg4Cj0JaXZBs6kW7nJ/tD0
	 k+oEPyo7/USdq9o75UQc7cM8oXzIuWzVdp0gup9ANUaNG3vp5LhU9ivCHn5+Hn9fNL
	 zd7SIvg8s2wXPh/86bkgMrAajZAhqwagaM99SXN7g3CNmHUS4EsZeOi0iptcbG8U97
	 pMSGFczXcE+Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A9D5AE72
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173096855360.3682.4879731981619984648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86983c0fd785314497f94f76e850dc996c9fb19c235d90beb52630a7341343b4
Date: Thu, 07 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730968553
