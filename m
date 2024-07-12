Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BFD1BDD3
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720823363; cv=none; b=ECQImHCDlDzfI+dBjkmfYjpU63EeDQbu2pohgE8y0fmek8U/4qWCqHLmqFzCUyR71CNj9QxB2bPa6BACuGX8MiBRpwas9xzzIT3qkFKQhHNwL/nRhfuA5zt8hF/88OlKV9vcMs5XKsuUmNh5XRogguZdMLM37UBtGVg/3yrKjTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720823363; c=relaxed/simple;
	bh=FM51SUtKMDMabEuYMARiEjDj0i0JYiJtu2xDOX9izSs=;
	h=To:Subject:From:Message-Id:Date; b=aCcaBTFY2W8rfkdwiMMwZUHExMNLieCbW+KwRKhnu9n0sLZlo4p3XodoJ+9B5QCBUqy5l6EolnV+PHrGJ0muGj67UO4TRGfEBc2BhErbzrdpYDCtF04Sb1SSMYoy9211l2E3YfLv7Ofp5+/oblh5MhP2YMlCg+s6613vS+tlByE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcfnmOOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcfnmOOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CD8C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720823362;
	bh=FM51SUtKMDMabEuYMARiEjDj0i0JYiJtu2xDOX9izSs=;
	h=To:Subject:From:Date:From;
	b=rcfnmOOhyMVhtI4tGhI5vu8B/KZr0aAFNQr6IdgA2q3AMB3ka8Kz7OUogVZnMIhZk
	 qU2VqsSP51t2BhUEuzDVc3pHBOlSg+sHsxQm0J5Lyn85zb/B9SD8tY4KAfEdRxox/w
	 2WbFuoGcmt9+QNpOB8fhV+Caudv7QftRyAyKDmthGTKUbFIiXbOafg6GdiDO2RFuXj
	 D6Jn+zZbtrHPeIXbMF5Gt9u2A9tBB+svXXfzPS/08RLHahJ6dvliSAwXL+4Y5bQDrF
	 hF/HOfQIr//qBwsaup8UNR7Zd2zTEasHc6M1qsmZvLkuLjnHwTWWqDXPW1Ip3aHxp/
	 oBwi+/QhutoNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC96C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082336277.791.8198683504350621547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a234aa6f3d4b69f94c0d71cfd9ce024e4e110926d3d3c4fa67ec776d9ae77fe
Date: Fri, 12 Jul 2024 22:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720823362
