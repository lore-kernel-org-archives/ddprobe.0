Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A51815DBAE
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727261754; cv=none; b=J21bulzyH1W0JWduvSr/LsHSeM0xCjp39wrNKlyjRKeRzMs+dj9QrPJN1rZjmUsAatniBy9oiLQZApsXRKEAk4Q9EQhTT6dq3Vo+PkQPDN2MQrccVJnZNDnMilNdq1RaJ82nXs69A4wK2z1X30NSOlNsYG2ElAvm3E6ZQWcU7OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727261754; c=relaxed/simple;
	bh=2i07nilY7N2Yi991F1EPDZBEqu4gMb95RzcogDd6Pmo=;
	h=To:Subject:From:Message-Id:Date; b=JP55EdjMvTxbPA+aDnwoUY9gJKdYvZtC5WL0D5JEE/P6n41mm2jI2N0Br0fThEAeaLxTv4NDsvowSnV9BuklWXveGL5sFg6lF/msW6zDaO88yb5qLCVdYrn9LAW/B51slUFR9NdqQN/AzXadVUOtx+NCZXYMMRYGQtJ8nfICCLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtU7tZIT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtU7tZIT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F97DC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727261753;
	bh=2i07nilY7N2Yi991F1EPDZBEqu4gMb95RzcogDd6Pmo=;
	h=To:Subject:From:Date:From;
	b=CtU7tZIT4jUf1kmcj/52DN4O1qrnWWnxTchESKmzKw5nb7szpcspl5ewIGnoB6Mfj
	 eB+wtNYPU23HuK8ptYJd5yQLEW7n9HblgwzHNMjBKcfOUQyZiaOKNpHek2+CijBt14
	 enNeoe26exBx3bP2GbBUCxc5xVcEYOa3MuFVXDJUQWDLgqSTf9wvw9K/EMk8gFwnTv
	 W+2CjVRyDVD/A9WbjOEEqiqwWXuYJ/qjugN25ibPD/HEHa4pzhXBgYpjKnAgtEAa3O
	 pkK9UEUjzQCXUSXvIL+/k9E503UhPSNnVo7hxDHKw49QT9SrokiLoYZYK+orcPj9LR
	 eIQUYts4A+Qbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90722C369C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172726175358.5018.9988967994297627082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67025db05a8a8ea8e679d7cf0180aec8c8930548a01bd5ea0c05140777465ae
Date: Wed, 25 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727261753
