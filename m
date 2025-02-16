Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479367E1
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739733534; cv=none; b=YyHxkrAjM8Yn8poBcqGS89K6iwkDq0Qx3EdJug8AfzvzptFMZqivyf8QQIWQ85uhCtvebTX2c7at7+79bFPhFhQ6AHjblBPfgWOFo9Xo4tgKjScYp4ecwtHMXvPMPWhUKGJirV3mjdU3PtlmGedd0NjA0SkMh4R2lhLO5tyGYiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739733534; c=relaxed/simple;
	bh=o7rW6VNN/gy/3I7UXUBD77PqQAjWUA9HU9ouKm/fm4Q=;
	h=To:Subject:From:Message-Id:Date; b=t/DcstuaqdAnbCvWbFdvWO3AzohCnSZinDiDxE9qvBtQqd9mmi3mFitDFS/QJa2AVs+Ersvk4mnAcCTBIV7U8ueX5bi8PU7/8hFyLETWuSUtL9MhegN1FBzrDjoIVeBVu02E9IrGokhVCoBGpCWZM6FjJ+fjF+5JH92God/JtU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvaTy+nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvaTy+nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DE9C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739733533;
	bh=o7rW6VNN/gy/3I7UXUBD77PqQAjWUA9HU9ouKm/fm4Q=;
	h=To:Subject:From:Date:From;
	b=SvaTy+nL2HW9UBMEmDDU32lbizt4nWBfhdpp0+XxphO1pBy8nnBro87KbP7VdFdn0
	 d6LA+R6VR4rRZUYOtHc+UnEyXFzU4tzKxKGHfqslYGplhL/HUv4pEJd1A2l2w2RUzk
	 B8+SnP88IgvcuxW4d/np6jGSjmub9wbs1Xq6wvosLCoFHMV9E1tBtFzsXHo31+eRPu
	 uNmUqVMwZBp1i9gqbW+fndJAPE+cMjVq93zV0fFmvhIAXFBMwjZn6wmQ+gMkdYGtZN
	 Z9PZGdUpsWoXRhnEW9oirDZM21llPwCWWyoWpWzo0RtMWrTLSJ9+zgE6pAK1BzoBxj
	 5/Z1lExQySDaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9CCC02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173973353362.27481.4375239836661079727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d852022518692d0a03acff5569c3d036d439b1e1df0d25ef54c50ac9b0225dd6
Date: Sun, 16 Feb 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739733533
