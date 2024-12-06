Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D19620125E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733488554; cv=none; b=rFfAG7SBf8M7yyTW1tMzqXiJBMpg5ZymXiO1vDApqLRJqOe57XW4mjNOqPR/IzKrUJ91D2/M4yiLEZIdl2CAx2x9eV/1BZ0oGM4VIirAs68R+0CW9E8pzpWAsZ82AzT98ZmkZZ34Xz3HmV6b7niUbC7Cq2d8zYkJk/3WbFptyoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733488554; c=relaxed/simple;
	bh=6hVhkg4rkQGd8LU4a5TMBXtmsZGHgrVrNgiYsynwdRw=;
	h=To:Subject:From:Message-Id:Date; b=AhTpV0U6RWvzlJXa9+yff0Ep3F1p6GX9htuLbT5JF0rGrmZDv3UqXm4SkVhCGApu9jbE4ezNLGj3fPHZePqGJjy+3730SGb20YlJp7E8roeeff4HKG+sEHwLXcUaTdg3Q8AYzrb5//ySUZvxnzUCBH29Bd54GteSplDbJ6/g9TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1cQqNhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1cQqNhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA54BC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733488553;
	bh=6hVhkg4rkQGd8LU4a5TMBXtmsZGHgrVrNgiYsynwdRw=;
	h=To:Subject:From:Date:From;
	b=K1cQqNhmdWHuTvZQSPo5BQErtuadMc98TF0TMVLVDWEP+oJoRURkY01RoCHVox4Iz
	 04Uc6bicxJCzEDM9+DPYLIpx8LaQv5JPIUfKUT2NmEVEtJre/+sfPSVBmxhIc9sNEk
	 iwptf1nxgsiPicr7L6Fy1LUy4yTvUtZrToO70/8MELvlN7TfVXDkab0tEzQCY3xKYy
	 omcwqYv0AzkzMiD1hWiISe6LT0osjpb2HC+jK4QXmIsSFiUwr1uFuKfFgGcky5ScTL
	 6U4l2wMqlgMeTIYLcLHXMXoTYEHdhM4JkccfWpBp0C63XuTKqVKTPIAp7Z8KOBrL6W
	 QCzip06qfb6uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92260E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173348855358.11022.11738376376665694416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e1a2410edaed206d7acdb86dce6348ce9159a36970558d96ed8616da6380c7
Date: Fri, 06 Dec 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733488553
