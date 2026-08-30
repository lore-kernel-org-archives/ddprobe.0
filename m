Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E252279907
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788123634; cv=none; b=BMF0JRgByUyKQPpzAd6NrTvf4LbjHS3q7crUOSmXsR9duOhRvMB0nX+SQOqTIuEhi15pVYPt7WvLbJBv9y+HNaTo2P/IBV+6yJjV2F0qfnD9OjjwxayVEK4EZXTF/VvsFiTWXoAiR2jxxSWpfNHQb1tGfJNc9O0HFK5IZoSh7gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788123634; c=relaxed/simple;
	bh=jCvPLumhridxNde+EWkBBNbAvhRVW56tXbr5C3muL/c=;
	h=To:Subject:From:Message-Id:Date; b=WkcQlS6R7skd/sYCyg9sxSTY/zKw+fntiulp+oE+L0oCzUPSaPfbHvQEp2JzPGkYjeGpVF0mPAx6q6nQJlOhIJlBFagLyEecYKAaxkxlHI9By1IQQGvlJjyilab5ShWYp+cYtgM/7v4LFLHGBE0urgJ7snYlOH7t5TqUPTccP+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOcmFVPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOcmFVPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB825C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788123633;
	bh=jCvPLumhridxNde+EWkBBNbAvhRVW56tXbr5C3muL/c=;
	h=To:Subject:From:Date:From;
	b=lOcmFVPr1xs673MK/U5C8veiZlV8x91HlebuBS287SERkbZ6JS/lbKYGPSTrqF25M
	 eyvgO9Z+Gqhi/T9jT9crDEYOiNNSoRlFFGKkGVLOawK5j8lqU2TADBffacVwNSoPbf
	 lARokiCdD3LovZ0S8xHDLm9GPEjE/5nNATilvLH8hwY+25vNh3Dzur58dxVQje7wNQ
	 c3jO0h+ujuYo35SdpTYvg5yUU0ASAGgLYO/UJbg1uf27+u+OW7eDsMNawSK/nuiXgR
	 iTW6B4UzEPl/QrQCSOaQpkpofW8olim+8rYOim5h5io9sE518h7eCIm3WaDhPAbxM7
	 ttOqEXiZCPo+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2342C61DE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812363370.5044.4220634763862253311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d834c2d37f1c5eba234c6ddab36779ef320f17d8ce540e1cbceaa425a6bc37
Date: Sun, 30 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788123633
