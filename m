Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AC164
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782307654; cv=none; b=IUjFIr9Elaqgq17ZGFWQb83w/nbvH1BmsdxJFz+7276hsshuqfJZXjk21Yq0i2wEvULlj/oOszpd6CFr4tAbp5N6WXEdiv7bZGBDG7vyN+OUCFG1Dp84nstSbhyTSvQzO2cXSDGgnSXM+G/IjwsFr+PpZxmWWmNQWEZSS+kZ63Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782307654; c=relaxed/simple;
	bh=nlH5PgPNBhQzHXpwLereGfxRrZkVAM+txU7igFYfaqo=;
	h=To:Subject:From:Message-Id:Date; b=sWQbTNHqsLpBK5cw2gg8lsGSmhsMNUOlROGrlJnBXeoOoBUpPVk69JOBRxqE01U1GMp/+GLvV1UVbrd0ajxx5uMejwkp2xEQVj5DfhfvOx0+3ndvja8d/9hVwpQfsvidVRHQNRqX8iVCKm8zv+OPzfCW3NCCVzm/kSUc9I2npUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pktri9+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pktri9+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D9FC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782307653;
	bh=nlH5PgPNBhQzHXpwLereGfxRrZkVAM+txU7igFYfaqo=;
	h=To:Subject:From:Date:From;
	b=Pktri9+M/m+nwXLNCXY3G+IidIl8E7jJ92dXYLggZloWrFj4aoXKP4x9U+5U5Us4D
	 hPKLtMGv76Ogc6N4SuBzAPAzG3dW6INeAGH6Cp8VS8u+haEliUxVM6lsJABGEuH2a4
	 Hau5V1EMKJI3oQ2kMZCCV0dAkZYDuL5Ojb9tGWdagy0N7rYFIXgogC5aBa7dpWMsgV
	 eC7EahYRWox8gArrAr6zar+icJ4QpyffxRV1EgNnFqSEvCp5yxVAvIErhZo6y1Kk8R
	 DAlrBMLUXzIy9C0O0BPUhkQf8ZGIBONK7G8+Equ0JspgRxJC9WUcPcLE5PEvhv/4Og
	 5WaOfi6UoyJug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB7D2CDB481
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230765375.15083.17601383557670090822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec99bd24b184224c52c9244f25df1e6d40bdcc1c3b0e5daaabf7571124b7073
Date: Wed, 24 Jun 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782307653
