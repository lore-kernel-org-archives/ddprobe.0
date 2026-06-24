Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4164D2EC09F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782305854; cv=none; b=hzoObkzvlzVGEP2kL1YEH2udDnegS947Hy+Pr8+ZoMgmMGM/Y+b2eU+L6ablcWf6RYiGCbMyuCrmHzP2cDr4qwBadTAqZr5AbRUPFu+VmvLW49/BFIlSFPapKSgVEcCMtupa+qonNrGiDko1A9h8mR9P0XJQ/zspwTpkh30REoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782305854; c=relaxed/simple;
	bh=HL6+rSPoKQfguW8HXILY+j8oO4xRG1fNZK/ViGbymRc=;
	h=To:Subject:From:Message-Id:Date; b=ag79z61lisXOu7QvM66kva6whoK8vxCh4op/bJ3nIN7S7dIbRfgTux4DhaajufFEyIHncmd6BHrC7wHJrka3Mhm21m26/LIYAYzePodCqbfvIWyAfsk+0ATWvVGEjBvKsJm63LTIDG6x7bZ9icBYOq0/knfBmQB5eHo5JoH7Ofc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8E3txGU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8E3txGU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA643C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782305853;
	bh=HL6+rSPoKQfguW8HXILY+j8oO4xRG1fNZK/ViGbymRc=;
	h=To:Subject:From:Date:From;
	b=H8E3txGU2r8O8ncEXA56eP7pZCGrXN7hec+tKsp7TBHD3oYQXmxdLuxTkFLj0THub
	 5lDP+x2MC1Zz5/bKqtML0sNxqk2r6w/C3ZScP3o6UunGg16QFkWO9k7X3B8LEFt51N
	 yDj7eWvR731CZIZVOMciPcLzwnphBTx+t5Y2AAIpxziY6Ud4O4T0TNnU3cgDO+wyf9
	 ByyvTvYcqWF4ys9pZzEQaVkA9TtK9winUJv8HfPWy/c2De8G2l3s6Wno/T3NawJZHq
	 oNL+g2uuRS1XEdLhw4yyhbs3yZIKSzB2xcQEYfZOIl6R7sjw/clLnFXWifzVTZv4iK
	 dRUqOwt1b/vew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84D8CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230585373.29267.9495661895225338835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb3c7d85cb5c7e30b429c82c604874fbf90d4b851782c208d01386cb436d3ab
Date: Wed, 24 Jun 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782305853
