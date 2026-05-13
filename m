Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E20637206D
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778676034; cv=none; b=fDhYsQRDVGr99OWNWw899mmWZISexyJN4ZZaBkUdQow0wkmozlg7H+xdjfOaISip+avDHI6lLSZRC9ukmF6Wu2EjiTtMiWRLaI09UnxS1GjNo+UjbG9EgybbfpewDWVXyt97ecoHUTwcU2zdf0bpo/9Dp39Oc0loQjc/u4hRgKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778676034; c=relaxed/simple;
	bh=npSqQXD0RhKCb0cAj0yIgXVDrSKhCvHtteVyrGv0v40=;
	h=To:Subject:From:Message-Id:Date; b=pnGeaQiu126Q1eXav9HusLyGU/NR5lhVEIjgLyO1nWtPGVxmubeLJERSFxEjvO5V9HeFeeiHH6HPifTcnU7K/mN2sMEN+BxhUSsk488nbY2P9ZtbTCMb/wWvc6I+YMrCNDm4lNKm04wOG/rRWKM/r5WiCFZ6Hs727wVB/YxRkQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBXubYlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBXubYlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF44BC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778676033;
	bh=npSqQXD0RhKCb0cAj0yIgXVDrSKhCvHtteVyrGv0v40=;
	h=To:Subject:From:Date:From;
	b=OBXubYlSDUsLdra2iWM2NHAMFMJJVyg4eVsncxPyLXUl538m1ScMwnWXhcTzy1hZS
	 Fr/tPfx1u5dbj8TuKbrqpdT/3amYqidJd3xzXb8jFZop9V9HUnAgsxBhD4rM7UOOyp
	 C/DuLl+fePPJRQeveHhDMJwWYnDBOSoXkCHsxZAdRDqoiLmn1DZv2RPJJyUVeKwNxY
	 nZHZ6W/wrYd9StHVTsvyqB7Id85te2BLZ45QczLYA63ogz/nltakfSw03bVv/OzTql
	 L1Ms2afEltdo4Yhcvvv/k07etYExRjANCl90nili6uJmYCzU+H3s1aWwXA3E5R+v2e
	 1WZXcqlVQGG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAE6CD4F24
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867603369.30381.5502239951857648944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463156fde7622b12e685224aad988ba98261dee255edb3953bb8ec045146d08e
Date: Wed, 13 May 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778676033
