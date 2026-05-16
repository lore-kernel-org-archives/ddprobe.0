Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1F139D6CC
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778974834; cv=none; b=IFa5YtXuM6sp/zgJd/4xFtaJVD3Uv8P1EfzNtKI5AKkyOCGpLshswCQnj8Kxokjg8T7eW2dFRJRqC08uv0VS6quMGS5nylssLtjRfXqGUos3Ln5IrypE5cAqUerOgD4PSMkaDRyDglI5En11UiGECMnCV6qCDiJnSpVzRIzqAWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778974834; c=relaxed/simple;
	bh=fzThj7ndEoY7maGO8JHX1+4iR+4Cqh471coZcVho+XQ=;
	h=To:Subject:From:Message-Id:Date; b=q5PuU8xlBcN+7x1WDZdTHLOU1X40jqN44A3VknWusuG3oWhTP5U6qmuh2FdNUa877u9I0Io/PjKvHf7/otZ1q/o5DUrPDJA/SlpZ9DL5vu3t1S1SnJyur7+9Xq0A0cc7saqeeVmOm+x+aoQWW3ARpvAKN10H4pflanuLs8TSk30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWRtoIL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWRtoIL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE02C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778974833;
	bh=fzThj7ndEoY7maGO8JHX1+4iR+4Cqh471coZcVho+XQ=;
	h=To:Subject:From:Date:From;
	b=TWRtoIL/U0tSlyhwr9THfRe+2TnDbgd4+JWmx73EeOlm9NtWPdo7IRIPNmx+w0e+6
	 Wtdof046cHw8M/90a36qHST7ZYEuBurFyC6ieY6e3+3j/y0cc13mu5tATF6feEb/j8
	 DGCDBne/tXO8HQSkJDIvRaaHBE0FAi//qht5PT7hmGXT1P4xqwFiMctE6zzW5eXvcP
	 0K/KqNpLUx4T2xY4yLgN3J8xWaC2VQ/e+yJV2Y+5g/72h6G0uywbAv0EFCJEplhv4g
	 eC6jO0/pptmOVV/jgFTmgV44LTPSd3JU3hFETugS53frmenAbrC/f4MPQ6FjmxyVJM
	 aGvYMNQA6k8sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB74FCD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897483369.4235.16515175994872116547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ad6f32d3568db8b403719edf9c886ca0e2717eba1b64a8fa272022beb12cb5
Date: Sat, 16 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778974833
