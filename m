Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133C1345CA0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771593894; cv=none; b=GM3+tOLCQ2bTbrq9pUwUZZiRnrKhNw0XqVEKsA+8U7GpUpJEUxs0DiuWUizuolY1E/pWUZMf2DUTuA+y6Cu201qXDE7xv5VhgCNwNH0WxQ6qami/sbESRi9++h2Wk0iuINh79xTiUgzBy/ROBvdT03uWvP+J1evB0ljFXsYIS48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771593894; c=relaxed/simple;
	bh=vbodGOFF76jmtYM9Jq9pma0d7UfWdk0ZwDaNCS58GtE=;
	h=To:Subject:From:Message-Id:Date; b=nvKndVbE9FH6G3mTOHWc65t49dWBy2GVSZUf9Am4DB83vPDAceUT3qQviFdM/u+wOrB/zUqvNwTCu3/RSsrCuKAQyAurCGyhap9v7WtFogisM/gw7ZhrazcldadCVHei6n0uIvU/qCye4iY0Va9+zmiej9lyC1unIyVvr4eQMds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZdr2nRI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZdr2nRI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2559C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771593893;
	bh=vbodGOFF76jmtYM9Jq9pma0d7UfWdk0ZwDaNCS58GtE=;
	h=To:Subject:From:Date:From;
	b=aZdr2nRIdHfnUusN8slyOLWUbL5EYWvkUuwbtpiD/qEq2vHSrh5YQjRgu7QvyTKRG
	 FKDpgmTvDlRBCXpfTUc6liEHJZf3GadT8d1SLzodVuQIax38JuWTuqMalacH6Rtr2m
	 GhJ/OOCa0VQ1vYBxvLFqJ2/x4QyJe54rN/Xr0QDQKV7cGWOuB3ipOd3jOZ31Djebf1
	 t2ZMurFTL1EH2A4b7cQP0ShYr7Fo+1fmKupurSKRxWToFjSxcjldYTlCwVFGC0Q7xb
	 33wfZlF/qZFD7utzy+pVwsoJ5y7zBP4wy+evu+q7wy8CWRmjN3yOp0ODXph4zmbLxB
	 axvLi1s16lksQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9201EC55ABE
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159389359.26497.2400747668960212539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd23e7651593135c40c4426a63030b393880f7b817838cffab8a369599faf3cf
Date: Fri, 20 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771593893
