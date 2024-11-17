Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A072629
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731802554; cv=none; b=Z8rCAi4/76ll3TjwZDoRsdVOKwguAFyZFBfhtU1vUVLupFIahw1AaEkR8vIfQpGbq0ShjWCAu0tTbOvZCdr0cvTL6sloLwjnGqv8feP2DxUTfDp9HelLO+D3yvw4QiNPHV52jQNJpga5BmMQRWJwkWuizLw1s2GU558PEcEWjSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731802554; c=relaxed/simple;
	bh=9wl9yKh7kl0h/Ltqozi2EGELy2vl4rA+6xaFjrTXASw=;
	h=To:Subject:From:Message-Id:Date; b=iFgMFGXz6ZgEY8sn0ifgVfSVrghEogQCeiDfTrBWq/KH5MMvtTWkQAcUfVkcXvCiA7EBhZmNDsEjOl59lmXuuRh6eZARYZ07ThwAaM7ODc4gisP72wQmXnYpFXWzdDBPHARoDs0SLUmVKiuTqU0UQXeJokLA2ljHhiJpPwPk5mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7lgB8kF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7lgB8kF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61FFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731802553;
	bh=9wl9yKh7kl0h/Ltqozi2EGELy2vl4rA+6xaFjrTXASw=;
	h=To:Subject:From:Date:From;
	b=X7lgB8kFfd6lCrko1ecUrXrHYWfF01u1TTkjRTRh/685ymGBOnx1DnnIn5IANv9X0
	 P8rieelXnyjr83urBB/prHqum6QGauXM4xttCYdouW0IRCT4fEtXLuys80y2vd5lM2
	 7ff0eCPZJLOBLfdnM/GW7N/q3aGuk8H8cCC4rOHOd3T+Qetul1UW+QmErEA+/ZnSq5
	 oCuB5IWdqIHUIIgyvpG+JDDrHK3+4jSYDUbF5l7uecBC8hQz0tXYpjDY+ddPHUDwim
	 tswNS1ju1pe/laqRXc6oIENHmR6IWJrSntkn+rxL6Da2nF1JgFjZQdVpacMTC2cv2c
	 I9ogo6Gv2c+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED1D68BF6
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173180255358.20502.16990378444065103669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5839054bebfc29d7d2526245b9a4b3f9e92aa722b93fa5e71d2963604b09add6
Date: Sun, 17 Nov 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731802553
