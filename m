Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F48367
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707438497; cv=none; b=Np+EfWb4UmK9PeKu0d9J8zynu1UdpLzhW7iy1yZr3zhyJsYQ+pBvPR8rEex8S8O1D409TbRSCC5kp+qJwjFHMiMepDQYzMOLliRJWHtRDKDlitwYrSCfpSOChz0aKvMEOLAPkx6aw0IM3YfHZESi2XHmzCpRU+uNhZE6Y1pVJys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707438497; c=relaxed/simple;
	bh=U4kFWA2tjfWaF5SObwiSzjkZlqTdo40JgOl+saSKEVE=;
	h=To:Subject:From:Message-Id:Date; b=jGA4ZdQr1yqDCUSXP/sCELi+uLifRBGkSnCKsdcBz1ET6zMD8UBPWOSO3Yzku2q+MG0x197kMmmW6wOe7jZegFV405FlkNwtdVZpd2DSnrdAQIsqawRE8HV6TfvDMhHoJtjMAK00359VrsMfYcnTII21VqaqlpzvTHU14I8cz/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctqdgWWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctqdgWWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F195C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707438496;
	bh=U4kFWA2tjfWaF5SObwiSzjkZlqTdo40JgOl+saSKEVE=;
	h=To:Subject:From:Date:From;
	b=ctqdgWWq2WE1gYtWzFJEzYrmMCyHKywJq1mTgvyo8fvnQx31TB4QXcxWjGR7DfnKr
	 YHhHFDXWMpJFdvZjXz7UNRoPdLrnQrMxsNHvnanNepX7/TpL58NcCPBBPHvF+FiFe7
	 lBkGuAg5nbYVx1I4LHYpOOEXWdVgCulJZmhIr10c827WlGxuFYSkI3uJLClS4kuPb1
	 41OmsDoQsbCUHHY10fvOOOQYaTvHZsykfDuHHKxSZYPWHYUN8sBJ/1QJraLRFDmZ/H
	 mNjW4sqHqYB/J+FHuAXbiUMS2f/0qkSxIN7MEzJzDQB6QvIhPIuykEK7kwWvRzs/ni
	 nmPmn6kCiMkAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA66C48260
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170743849636.22637.2335071627717897209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e9f8dfb901ab3a41592ed0c3185afcec4efa735c41590783ea786cf7794209
Date: Fri, 09 Feb 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707438496
