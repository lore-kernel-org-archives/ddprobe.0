Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CC4218E9F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751483394; cv=none; b=no+BNZFdu1QxYmrfBLletXfqHGjpwOWwqAayCvtnPzSYKtew7uDlCXuKT3UPYxgFKNm0wlzxOe2vx3BJoOuutldTwZG6o9/0A3JaKalXxZLFkizYwIuzakteX8U0t4x76GAJcA45gExAb77ZgR2B4/sw25Q7wxvVA94p3ZmqUoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751483394; c=relaxed/simple;
	bh=6IAsmjcd5CFNsH4qUXNubXXS3zY0a/4FGeE3OqSsikI=;
	h=To:Subject:From:Message-Id:Date; b=jv+sCU/S27/UR1rmaG1H+ZaeYH5x3eSiF2HBS0BBdtMsOms2j8d44hj6HwtXCvD0TeBXM564IcY5wtIHhCgoHmVXjWjqal5Bg24a4mMAVSdE7oeq1k83uEL1Khw6OTkDdXx7e0YUjp7DC8YHkWJ1Mfy90xQ9+cL73NcMvfGR1II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z29AvTrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z29AvTrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751483393;
	bh=6IAsmjcd5CFNsH4qUXNubXXS3zY0a/4FGeE3OqSsikI=;
	h=To:Subject:From:Date:From;
	b=Z29AvTrkGtmehIrWJtCSriwtgmwmS4VZNuhILFisAjSNFi4ek/sfNXa7/BCh4/Lfp
	 3Gi/7pYE+9u9Q7S2704P21Uh13NCh3tXHVckVOEid+9mmv+7imMQnW1Tgn9wYlkCnG
	 ZjmsuJ1KqLsd/RTSEJz6E+AxWQAsw+zQXsYSqUIZEV2LVjWrgHdesXhPzSmplOCGqC
	 UXoTYr7MoBVzJIT8GMrsaLl0pjxDJg4BTSKzhjIXaOYAYtGJ7uKG6ITXuosf1EquyX
	 iVi0B8GO0FNjUO4Lsc98Ph64J5v+d+6vE7DgBBXb3vASGtkWdM0kny7feGlz7dM/bc
	 EpxtuJGc+Cusw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC2C77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148339358.1855.13809089661303243841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34b870e36b0834b9a77078296f6b73bd4b53ade9a16237f8fcc76af9236a511
Date: Wed, 02 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751483393
