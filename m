Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382C218D636
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781363194; cv=none; b=LYcaockDebh5R6+SctB7Mw4qSI1WKhfBR8hdi6w0bfp976+TMlMbPPkwhumDFK4L0pg0DNpdK2h7DzMRL9+9711IWz5OemyplNLUoOCZua6OEc9R2dKxrXy2nk87s9/VYkwIDTEw3OOhlg6fXIrwI6qQ2wXyTE4nOOmViclGQIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781363194; c=relaxed/simple;
	bh=g8Tk2Mz5YvvIGq+zNUNTMy3evWaVjw0j7WEw+ShS6ZM=;
	h=To:Subject:From:Message-Id:Date; b=TApfhBL5O0jJVU1Wcup7tHYR2jVuUH8PSrwhmDof0nL2gvOHLNGbtoXy8J2LEObZ9ooQudRZ0BpxLN9/Aic6q94+m6uYUQiDq1RxfvPB02c7Y1GbAEtNz2HIQS9pEdwMWdJ4aWqq+CF3v7iKdp/OTIdl50JS6DeIz+b7SPaMAlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0dV+X7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0dV+X7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92F9C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781363193;
	bh=g8Tk2Mz5YvvIGq+zNUNTMy3evWaVjw0j7WEw+ShS6ZM=;
	h=To:Subject:From:Date:From;
	b=Z0dV+X7nKyfn0Jyf1OrOGGopgiNlJ2yoaAc+8OlemNsXi2YuIJmzhCxi8zCmRJMH7
	 VKy5PIhifw8ZweP22945oLU6rIZ1QCE+ceg1es6gid6UhVudC2waMf+sPoWK4Idpji
	 dvqY/TMvsacCQcILmlG9kgEj3MgPtK+25VqrfususPJTjhFdUcosmgAGJw0fMF4osN
	 QETcrP7rbPNZ4ZE2BGmNTIQSi9acSz3wdX6xSDwod26dDPh29aRan1vGUzS2O3WfYN
	 h17oZ2uS7PvQr5iWARnNMamyfv0pvFG8BIf9DTAXdkHLP+9suCXp16p1I4dA4/pVfw
	 kl+L1odU2NYEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAFDCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136319368.5386.11092082149527803032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b232ea62fd460c0a60fcce5afb2f90c1ab86ab013e1fc372cb348d2bfbcd0fe
Date: Sat, 13 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781363193
