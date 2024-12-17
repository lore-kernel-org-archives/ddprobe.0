Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6AC335C0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734396954; cv=none; b=QiwUif9rKQGACGs40h39HrFdQnZXpoE5A6ugRXlk63uW1Aitmy7rChvuAmRFaizkIYMhZMC44ZlxTBFrHYYIlRJ36FxX8SoFE9z1kJC2+B/Du6DFMtgOd/WyM49Vb4ts8O5MtOO1Ufo6LMhtooVrNiLJeAs+qMFOxxHQYBoCVUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734396954; c=relaxed/simple;
	bh=fm5m4n9SjxTZqMFZd9QqqVexTpM6tYmVYsB1sbNvt9I=;
	h=To:Subject:From:Message-Id:Date; b=M2EHgj6e4X+xG31urh1R52v8oU/xO+fgaX3LHI/rts85D4uiTRK2tay3xvz5cy6bRyODl51+hxobavjkgI4EdeEnTg3Vcxcwu/I9vKtOwqnb7hDOs7vnWssWPthy+rCj4UxJazhMnt2MeKgslPzO3zXFf05jQXSWz8y3Zlr9BXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTIzfgdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTIzfgdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA58CC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734396953;
	bh=fm5m4n9SjxTZqMFZd9QqqVexTpM6tYmVYsB1sbNvt9I=;
	h=To:Subject:From:Date:From;
	b=mTIzfgdfgoWXGsdC5mP0Kfm2MdchoHhAFrnWXuK7ieixKtch0ujzpkTSKoNp1C2aW
	 ArT7uehVptvImTq6W80MGKWbJ72vG2B+YsXOTJwp6rxEhWGsHNdfBDa0N3XMA7VVht
	 4tAqNUR/jcohmF0TGYYRNCb+n/JtKyhJ4W2L9mqkLNIheFwl6fxu58t0+whSTOEnOD
	 kOzJAhhA9RhvxDfrkkQ2gDdhBmsqqk/h3WopMEtbfTVdjRhYNp2s+fF7EiUZ0ujJw+
	 X88ut/1g+VugmziqrvREs2xJ6jnfyYffRUGbO5qsPEPZEMMFE4XhtBTaUtOB37oO/f
	 KW0fSlrCYgKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999A9E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173439695362.15336.12728128104529764607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f836cd72bc997867235a2b9e0f2b48b4e9065c400658a24d467ebf1a10210096
Date: Tue, 17 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734396953
