Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC32B522D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705463897; cv=none; b=ES8dTIoQb32+BGIxXbd9kkpjhgOROuB6s3u19A50nEtxqmj7s6V2WF0ixJT3WWTr5oBRcObnvAq+MlLU3uYI9QrBVVYE2q5uKoK8bBr3mKhnYNGTXWEZWVBzAmN0+Y+EidpMNMFsxIhX/EXDbaIHViObLwO+SbGF2rh16R0EF2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705463897; c=relaxed/simple;
	bh=KEuJeAZMU6tUTJPEIYydQ1jF9NS3+PKrI6fquF6LsYA=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=JeFDoCtocYeMrsa5SZOASAFdf3YMapbkYnOkqC1uqeKtegcEk32iqrtXq0I13xodi843lkp1j4uy0TfoXxceN97f7r9G2cAi476ytNGoWncBzblYMYX35eVss9m0wxbNypSB4o3pRZRWGHaWe+M6iGCB4/89wf0Iwpyolq0/Z+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGyBEBkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGyBEBkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EF3AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705463896;
	bh=KEuJeAZMU6tUTJPEIYydQ1jF9NS3+PKrI6fquF6LsYA=;
	h=To:Subject:From:Date:From;
	b=IGyBEBkFc95L3IkOUEPvFRa3AdOybdyFD81HwYAS/VlwxHn0+Ieakva9ugXJsSr5M
	 2Gw/tPosa2Sp14LqDDCuERYzGqXC+qbXNysa/eVij5mCJhsoKE54BDYoXXL05Z0v+o
	 rgkwQlNT48JigGv9lN7650+aPrvX+Fpto8qybw5lL+Hss2Ojm4HioZFnsp+y83LqNC
	 9SlMr+FKfWfCR2UKyZriy+00rGinggjEVYPVupV8FTkeUx+PDaFeyvFoyQDkzM8w8G
	 Cz4F6Ou+EIN2rLgIXx4sD65XXxDAoODM6pGxEfqHqYBM2EV9ztSpU6iAWBlMkCC021
	 RgIEo8ZzxJS1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6442CC47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170546389638.16417.14909626226500772773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed48b29d4a5ecefc55b1ff7b8b7f480e01695029315b864c031965da37cbc50d
Date: Wed, 17 Jan 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705463896
