Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2530035EDC0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770371634; cv=none; b=LzyxUR5trgQsi3OW6QB+bz1gn+t+wUXF+Pa6xIQXaiDDVBD+YIgzM48e/fb5s/pEfu2bfZprl/9RdhUW5sgB3en8uG301M7hXUUHsp+jLPF98hDhJmKLNETpTJMFkGHsNtU9aX+Offq7wmED3pE6K4vTQJTqtOiqijQHx4W5IQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770371634; c=relaxed/simple;
	bh=3mqJhqjPI3D65cjUrrs2tme+PaLClPAs43/q6z8OyW0=;
	h=To:Subject:From:Message-Id:Date; b=HPVZZMceL0SSjUNrqwyKCASxKNfc6qJNL7t77SCM+svo342InyMo+wjxCGgyQsPIWWJzVxZOyEVJ/KoS5IHrnelulSdm056JIpzaeF34QilLoWJQSrOU/cGILwN/Kr2f7bb17WMvzaRmDV3Riz/mYsqSv8JYMvHfVkcDDb4ZOw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQNRhck4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQNRhck4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC99AC19423
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770371633;
	bh=3mqJhqjPI3D65cjUrrs2tme+PaLClPAs43/q6z8OyW0=;
	h=To:Subject:From:Date:From;
	b=YQNRhck4EMwSELvslJTB6CZpRV5e6TBrNqGBOthET7DEIWJAKu++mybIjMqi4PZnh
	 5ye2vSi7Bwp0fooo9uHoUXn5RHPrDDbIc/W0zTR6m3d4M89MAaUDOfQdJh5HmecXnt
	 p7kdddCuPH/UvJ8QfyDCjJqumeOvCLZxICNkG16/eDBpZkpgZB7UUJX3bBkqGzDUbB
	 hUndt7uxSnHh6cc0BaywHUsY7FIyvjK3msQnh3lBv7uRdrUWZqVuyGFOwz+0Cy+eHR
	 2oW5QlOQpI6f00Fm612X+uytAk8NyGTMNjTNgkMaAsq4x7V0iSauA7bU0F1NTrLOmQ
	 lFDWQ4TwETJUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995FCEB28FE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037163361.16286.13665716515869542305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccaf97e4145d03af93dd0c0358b7ccdb6c5f1a335065657d5188f675ea8467a5
Date: Fri, 06 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770371633
