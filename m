Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3581C397E89
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776880654; cv=none; b=uAkMlOjjxOsm8gx/87+6sPQiHiPMQ6rcyem2Yo6i9ZJQmi7VNxclOXax8FcUcX2lFkvcq5e7UOyYGGP/ZGCPJdittwkRVHdXmpv02ecxBoN5CK0VppaZudkGdiZhDcZXvbW1YTzewKEyCpL0i83zJ3jkPMfSZH2dkCimwOJQnPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776880654; c=relaxed/simple;
	bh=6YCLmfvVvju5O04q5IWgiAsc49dCNytBfnT1b64xaC0=;
	h=To:Subject:From:Message-Id:Date; b=YgWmYpgmpifUuxp6kW30x8rJl+O62syPZmwhClKmfWgbO2BzV5CVVET8m3w2mHBgEn7M487rjpwiGapIaCYedankZyf0RYQYqnwqYK93hRC6FcZPpAWxGM6ci3HkMTa8DOq1HSTY9hf1hVjYDEdwfN8LLGPWIozRNCTkoZasd+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGVNasri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGVNasri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1254C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776880653;
	bh=6YCLmfvVvju5O04q5IWgiAsc49dCNytBfnT1b64xaC0=;
	h=To:Subject:From:Date:From;
	b=mGVNasriPWWP2pMgV/jeTtfQNxB32mTWx0EyOD8dFACO4QE8K+jYBnzlS7yz+AL4F
	 vq0FuPc4b/476dddK9RxG0QsIpCtRdUMBsZXvlKTcFry1eWVrb+72qCbo4cuX5vsw2
	 6TnAxqPLSRqpVeAcmMeRAZp0zI49mssZCbNuUXVvGbClxcMeCA4kTuCFDNvjSKAMgT
	 w6bKQqO8jYx0IlRUAZHQWXUdlwz4buRsvYoHYBRQ2EEtgIWGyUmFF57YnRyYAhOaFT
	 r19Te1ILW2U1TnFo2diinTr6sZ8JpNQDXaPmdK0MyaxqcoQ5SUgoziqG4jhEUsUzyk
	 ox06Zku1pr90w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0313FA1FDC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688065368.31451.14393698289955396612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3ec7fe0a420f8880f12268d51bf734cfc15f23885a5cdd6e34eca5f04f9595
Date: Wed, 22 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776880653
