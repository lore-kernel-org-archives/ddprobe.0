Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E62F14A618
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719836723; cv=none; b=RpmFkr0iNKnoFKOQ+EUgJ+O9rNJ7PRmn6XWDct3046UiKDqvjP9hRxDZ62ed2FlhVKdIv6cTlz+1MXGKD8SM0KH35vY4hynppIYkEYolGAzRlXZmEpK7CSRmRkZEDnOY2SrF6zKseFEI+KQD/ozTZJR86akXlz+9msOy2PiOL7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719836723; c=relaxed/simple;
	bh=WYMwbb4CRz5UTwZNA17ik3NR5cgv3sGj7dzAaB3hbRw=;
	h=To:Subject:From:Message-Id:Date; b=qJc0mGeZBiFd81Dcu6HCCUGAAgagW++C7kB2NnPLQgXU0QMmyAvtOx8uxOK+EwcgjcE3EFxG2bKOYQZMbP6Jrq8Bek2JXD8WnrqKoD3FGQlJLR+5F36wQxfzWlrqcT4i+MGO20ioEVJ+MMomubbxH0dJAsneMKvcGSEcz9xq4ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iz86K2O1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iz86K2O1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB0DC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719836722;
	bh=WYMwbb4CRz5UTwZNA17ik3NR5cgv3sGj7dzAaB3hbRw=;
	h=To:Subject:From:Date:From;
	b=iz86K2O1Bs45RCEqknrLQCbQWKiOiOtyVAiZ/8CaTo9qL2Dro1BpYaG9+JLkdQs6s
	 26yaCOJILHuNJhVJ9XXL4lZILLwCp3m4mvuoLv2K0BtpBShvbRtJS+5Grzw9bfvapE
	 J+nghMrwT08Eog9pcYrb7XEmK+kZngiQ7WgjwZDhQeG+g+F0Rm4gf6IA0+fzI2X7Cw
	 0LWL/JGi7xPWAhB82KuHtI7bGYQwE9YqzuK1iVEC8MwBRBG14ruvscD+qUQhQRMGPl
	 wJoPrtAMYtNA7gfkmzMuzGzNV1k7SEnBtYyTW2eAN9tQ+XMufIKMGobr+0LdLq8K1D
	 sXA/OsD5PWuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF534C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 12:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983672277.24047.6312980398180782070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6210fb270ef6a85fc13efd8375d259aacde6f8f61066a134241aa71a8fd4dd0e
Date: Mon, 01 Jul 2024 12:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719836722
