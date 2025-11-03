Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E76E1D7E31
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762150194; cv=none; b=FYf9sfUWDv6BQ/jWHQKYyzKGvSyCD9mQR6FbWoDVsqVBfbnLbdna4fnkrGhpqYwhB7mtWlnLbHKKvNH+o6aMZGZYG7Ck6j7QmM8yvZleCBzMvGKbzDAnlgNpSGbcXcje+dGeLLhHO3ZN7hOBjoNuIj7oUmC7rZtPCfiSHc7mpME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762150194; c=relaxed/simple;
	bh=5iIrm+aYv7fwZuCjWmrzqLA7NBoWrOsl/Pybaz/9WjU=;
	h=To:Subject:From:Message-Id:Date; b=uGJOi0g0M9jeCdMQqrhhzh/mYQsXvNPnH4zznQ0fI9Y2EPKi2qm771hkOO0Gk8gJFOECUCa89rQqW2pbzTLUCCkTqeQ2BLfdSI0P59tZxx1h9bq0dRQtHAH1FtfjnGgLXpQA1R3jrRQw465/ayJnJzhgx1D8iZk5cR0t/cE5OC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFFYEgi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFFYEgi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF91C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762150193;
	bh=5iIrm+aYv7fwZuCjWmrzqLA7NBoWrOsl/Pybaz/9WjU=;
	h=To:Subject:From:Date:From;
	b=gFFYEgi6gSiFvRtJsnEeAjpZgOYb0/NSOT3Z4qdyHyFmhe5jSKg5CO2Y27v8j/8DC
	 u7kzKU9fBeW+kTSgYCrbPgAQkHLZ2Nlpzdg+nEDv46g86pSo11SB6R8Ts/R4SsIawe
	 aELI2Axs1gYcEgRtiGjP7/KHuxxjcoeOe1dcVO1K3LZKstnfPcV8xcbHDm4JAG0I2Z
	 oyU5kArZ4F7ixDq+XJPqerWOsNOxUqbs8/CU/v68Sh1YZTBnYzPSrDkBJfHzHMLrk9
	 o+vt9MTBqmtSQUeVeWin3RTxXaZCW+mNmcz/o89m1vQyV8nnjuK0vNEwLI65+rr8t7
	 lXkwYM0/RQ2nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92372CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215019359.3999.10700543437092622996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1094267a34fd11333055eac9cd7df9a10c8fccdc62499c7d1576a5318ac33812
Date: Mon, 03 Nov 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762150193
