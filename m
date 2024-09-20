Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3207C291E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726816554; cv=none; b=DEIzZ3l3Qgkfs/hL9Dg3c2H4ifuj6I0bZipljtuDcm7g/Mbz5uT4W4apTu0ipXN4qf92MP/mP2eWEPLVjLu3/p+u5iLfKDgJav37ZZH69Y22ZeweMMhnkIklvlm/9UCaaeTIvC1QxIfAjjnvoNvsUNNjiRBHLO/0kmZdbsfPxNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726816554; c=relaxed/simple;
	bh=CjPuxjB5oeplYhM2KBjVj4lQXO01gTiCv5720hgiBls=;
	h=To:Subject:From:Message-Id:Date; b=O5xeFqC+XvLqBjgHb/EtnB8dMGU9R99xjWpfPqFEktAErsNPDMU9rJ0Te4qSpuYyhgh7BgbsIjPRqw5LHmYLrZpVIPYZzmJKqINeEdD52V1CSSI0Ax+VX0qAu/t89DylWt36G08dxdTzaEqYvufBekYrTfeb5slcZCSjbyAcVf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQ5pCSF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQ5pCSF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5592C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726816553;
	bh=CjPuxjB5oeplYhM2KBjVj4lQXO01gTiCv5720hgiBls=;
	h=To:Subject:From:Date:From;
	b=IQ5pCSF86Y0G1vjzaVW3oSZJMgH8siWZ+g1XpFQDaGZkJL2eQJRvkOX5WdeOz/wH3
	 qHHzt28SwcFwGc288UCrYNGqIZboBwmmcUWbiDUme03SuAxzqGWW9rxexKvt2m3ICQ
	 h02Hh9U+qm+fz3a72/8nryvUno0MpDEiSgr54ON6zpPQOnPGbtNqY691/5JaKvD7fk
	 5sgXOuQZpiRYOBJBsUBy9EXHP+Khi8KK3aqRXDaudqwpfq1k0w0FkuH1B5KvB7cKiN
	 S9bz+wPdH3KMuUfXp+v4rsOEyPD8RDkDkHnenTGLNpYtIg8cMlJCYv98Poo2CfFATH
	 HYiowJoIfq6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934DDCF58DD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681655359.1440.14009753387916648517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b365492c5234e26155e32719b60935965460fc68746966fe3d0986d089c3d45
Date: Fri, 20 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726816553
