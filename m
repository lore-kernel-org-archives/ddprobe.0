Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE212F50
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718312303; cv=none; b=EaxOEaTkGBSIxQqLdvGdp/8jtizzt7buEGe4BTewq8XMBS6OnzmkyzVE0O7S8J/Ytiwk/5QVSvsmD1YegWwF1giEik6EhYsvwAVRlAaC2U2SdmwdUbBo/yuYC4zMAN4Bo2LAoVY1SRdFLwW4teX88IZ7NhFCEc3ndWTw+XdOLgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718312303; c=relaxed/simple;
	bh=JterIJJjmE5MoAeOBSTjQXejB4nwuR8hZ9yp6k65foc=;
	h=To:Subject:From:Message-Id:Date; b=QoOot78as/k3fzIPRpDHOptCNMj9VtJD90ROUtJYI6wWqpJzelmlmHKxvgPVsy+O44CSzT+XzYuFZZ1YY/0/pVnWGu5kSVqPPXdhb/k8fe+bSfQZVj8TQ1Sh2hCrDusr1iaCyJhUNBfEBCGp8I16wFYoLfmh8/lS+EbPsrT0B6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdr1aO4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdr1aO4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E20C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718312302;
	bh=JterIJJjmE5MoAeOBSTjQXejB4nwuR8hZ9yp6k65foc=;
	h=To:Subject:From:Date:From;
	b=Gdr1aO4izHY9LahziE2GWc9/B9BGstZTQV9quVTOhnN/YomVLpyOGuwKjJLWwCZRW
	 Z95al/AiH0e3g4uOYyxaDb3aN0qbohobkLJrDEZIQbVy0H/oMz0YklBrq6tRLprhP5
	 UtbEfkA7elp0B5qA4e0O3tXynzfXxi0NXqscFMq42ETc5aPCFy3grwpQl0rjmfp86b
	 mB+MbxrohBwqOKX5QzZfAWGK/Be0koylIW7J7Iahvq4V2mdRcHucEcnSymZTxLwjsj
	 OxGj52SBY9GIIkjDoncvXS0U/IXeiVKl48i8P/S4p8+BSZsGoVt3o5/jS4ynJORcxL
	 5ziwxzKPG6ZRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F89C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831230280.17494.13156219651575246033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72878b244d42a88ffbc748b89bc594185331c8461f7ba08582b9a13b8f4e175
Date: Thu, 13 Jun 2024 20:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718312302
