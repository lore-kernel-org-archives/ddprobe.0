Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DCE38F91
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746376794; cv=none; b=Py01A8Cqk++v3CovgP7gRiiXxmKhqJXGWMt4sBxv+oSt+GnwsiT0MtVWCBQfrWrzvKLWB1PePTbB8ZbRnLcdpg1i7GlpLdKlug84hV60Z9ifXz9rXQhq0Rvwh14Xvd04x1nD7vnz6BszTRBYbmairuKvTqNWaWLcy5YDC3og4D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746376794; c=relaxed/simple;
	bh=hCw1N6GIXWl/M9iUtyCN0582OdQ4Cj39zXlZzNaeCic=;
	h=To:Subject:From:Message-Id:Date; b=ccMwyQYc8VUTFKwNCa9c1v5RA/EXqveOO7xIjeQd7gufbpt3SNzCo1u5zoNZ3LceWgJ3r1Z25WdRa4puErjBvUQgzx9oft7FnD7LxsaxJMra20EqrwcOoL81ATKGzZD6e/rx6H1aXnzcebMBJaRwws15bG3U/oe7zNlCMzK4sHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fI39umzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fI39umzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4078C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746376793;
	bh=hCw1N6GIXWl/M9iUtyCN0582OdQ4Cj39zXlZzNaeCic=;
	h=To:Subject:From:Date:From;
	b=fI39umzCBz6X/Vo6tyxA5x8L7boiJLcamIXcsB+81R7Gi60pgyQ/nuyU0RClXnQeh
	 p8z9gZ02y6IFiYtdD2ipSXQhKaWLkZo7eYZm0z+miAOkcwW+P7u8295weLsz6iWZVS
	 dR/XZCS0Q9HaCokPrP6Fy5z2SL4JrqxpZenWhnAuNZCOjMCuvTh8LvMa0HAtWZ65yf
	 YDpQXSVCut0qDRJGPz9z9fqbHW9KaIMfqnqcP22LNkoVeQE5yAeYDpjvi+EsBj+7YB
	 ZUAlo9KclKAWC1WWuYqlsUGg9zUqkAztnxXc77aJVpCChIvxslp/ybgTfe6FwDCx7q
	 136mCHBLPRR4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94135C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637679357.10969.14749764322953273235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d07f34983662d22993660a85365f8bd04c24e0f61711002e61913d973aa9ab22
Date: Sun, 04 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746376793
