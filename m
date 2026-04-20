Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF3E32FA2E
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776699454; cv=none; b=ME48hZS3vVF+48rQXEju31egsEfC5E/oYYDxyt2SnO+MNQlmx/KyCrFtWyF3JxmC6kNoBIJiyvmloBj8322m3Mj9YeLudhqDI86YknXj8rE2dZR0h3Fm5g8F5Hq6we7xeN+wSWEpV4VMnRvBYWRcfkei2ucebQWDCm+1Xy8okUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776699454; c=relaxed/simple;
	bh=TnA2TsY2KcQ8LkcKUBVUX4aSOeg7h8imp5Cx3EJlRpw=;
	h=To:Subject:From:Message-Id:Date; b=kmQax1DhKXyG92WdVimi+yT02CYSgm4irWTgT90+6lUJ/mn7YL0ixGYC50mUlsUY48yEcOvb41Q+GNfe+h/sAJYwfmjE3a3KarrN//BKHf87xwNMC+dB9UKARycqeI0Tm3wKvJmKTHVYTRebBnegDZRqnog1bAW3LT+apaF7EPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q798ermH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q798ermH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6733C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776699453;
	bh=TnA2TsY2KcQ8LkcKUBVUX4aSOeg7h8imp5Cx3EJlRpw=;
	h=To:Subject:From:Date:From;
	b=Q798ermHwHreTfJGjrnH0rzQVpwXHArdO5x5bjCj6U38ifAnuVtrmhCEFRUg7ESDq
	 xtbosupkUgrrRcmsu2YHsdsRNVydcrhbZ1rSWLt7oSXsKcSweHbzwYV+BV0kgzkZ3N
	 UIJlD6BcqC/tbxSli9LMSu3v9i9AO998KE86eSvINMNKp0/y3JFhGkJXo+A7xuJERE
	 XdCwpzijkbPANkXgM+Jd5uRHn8wthM9sjEYJTCW9q0RQgMv7ez9l01Rem5wNoLwRl3
	 ziWrGey4kvowxlxkTBZB4tD2JAJdVeKAEvSJroe46dYJn/aWnJhjKi6QoOUoxFitcY
	 8G0xsnsxKbdiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DBF588E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177669945368.21461.5146842543155371706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891b7c732f21c92dc427a86374d8ac83e61d9c1a4b301509dabb06e2a2fd19a4
Date: Mon, 20 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776699453
