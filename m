Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198111E3DF2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749504594; cv=none; b=M8xsVLpw7HSRfHViIxXvfGyWFUQdibdgaq6hiyUWg7mOaWeWpe/RyBhRdQ/dicehM5Rms5wg9/upacurGrxjLuz2h/EGbceON8X03To51mewtT6E474Rd/LN/bTfxq+1Fg+ucPTNiTK++ma2yA34WAmEWbr1/aAuJRZ44N2qJM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749504594; c=relaxed/simple;
	bh=ZpZDIgGkBkG9ce3gqOqXwBz3PBjAjOZr20O9QZOTzjk=;
	h=To:Subject:From:Message-Id:Date; b=FlBMWDnUnL6aCvuTNMPq9rHhFle1GHjLhg1vcGsSI8OXIUFapiAQJtcPsu0hL28KXRQlEtuiNQYDQpSlYiSOrAaSVPg98TdMhJr847Rt0bq9EUNAtVgYloxJuIpKODBFyWizs4SeYHErLGYqTf3klsZ17X4HnuEk3cWCjuaoNkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCMVlLjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCMVlLjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8E9C4CEF3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749504593;
	bh=ZpZDIgGkBkG9ce3gqOqXwBz3PBjAjOZr20O9QZOTzjk=;
	h=To:Subject:From:Date:From;
	b=UCMVlLjHklWRwkY7BUFiDcmpLHU/7BsnO1MqDF0MOXXY9y7F1iZ/kDz9IjSIEFAg6
	 NFf2QlqwLE5SOxSn6QVd9tujtIfowfwriLcblHcFXYI9cETO3/Z3ybqRiJr2YcthDm
	 JWUJZPKMVmyhTvlSrRe21Z9Odx2oOk3D/nGPYtL0kFmEYVuvw8wJ8molXdxWSjKBez
	 DCJdGGhJG0NCABWOvt5zAFsa/2f8iLR6nzH3pLOX29lj0u41OwZAvD2Eh0h2JB6VRH
	 RCFzpt9dts/BShwDKxXF21u7ak4HgdutscxUbljPF7tlyYgM9RwRBdl9/BP8seVP0F
	 x5cLfKTYvyfgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E728C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950459357.13337.17635298194408066240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93ea84de08010982fc4a7462fbc9b3c2c1aa4714538de8bc9f6b234981394d5
Date: Mon, 09 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749504593
