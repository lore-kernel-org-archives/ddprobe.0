Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC973749F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791639634; cv=none; b=n0MLQi7UBqnss0L03cNxAQMVbcmNwROoRp1QT0D/v4JseRBCgFjv8SLW0sc9bDAxxfvBuRWgeanH5ZP8Gj/Zh28gixnWD4QBgaqxXA28xKMe4kqzJYMRJru+1zvUrECf4nj84rych6c7yp1GWa9B9dG/1KLkdCUqkMrnBxIwN90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791639634; c=relaxed/simple;
	bh=79s6ssYipRoLu/iG8+oWTZfxH0q1IOuwGU8HdDEV/MU=;
	h=To:Subject:From:Message-Id:Date; b=sm0YhuyY4tv38WDIJiar8eLdspNrME5Cu0HArtC3ra+lycdrmRYsDrE043jlStKo3u7jrZR93BHSKcCGXqiQVEZP4WsliV+bIQ205VkOyRl/8he1nJgbvd0d9I4LbHyFb5EqjPxYF/l25Pmn/EqD4noYLc8ZCJvM8mjigwh+kT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoYZhKy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoYZhKy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABDEC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791639633;
	bh=79s6ssYipRoLu/iG8+oWTZfxH0q1IOuwGU8HdDEV/MU=;
	h=To:Subject:From:Date:From;
	b=SoYZhKy62AG0idGPoMbfXXpQykmzhlfM9RtR8HCAf/VX+9Oh8+elTkCJ9AWQXQey6
	 1dpJWod2YO5WY0QS+D9+Ni9uyGThoYL22PxDUg27vSFcefu9bZTbe89TEyAr/CUji3
	 Cp0IdUzeH+tb9VbFWBFgSH1UjobHAk8tG+RQO3/6dKdcB8Nnq9oZq2tk4y0mwfz2bZ
	 2kM9O5hnwVtZWnIUmOCOBc4T3B9CGX9CeICVGhoB/uN/oz5deUUjfrD4GWJsnJXfHL
	 d/o8+J1Mn9CBrfO0LUQT7OuvxBwHsbeAn5JwpHWKTkBV3oDC08Z3ThVh1faCgBVumH
	 MfFqhxky9Rtlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90E3CA9EBE
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163963368.19110.2822242912822669190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af884202e9835aa303f1a1148d01a7512c67318951b488387383289f536fa08f
Date: Sat, 10 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791639633
