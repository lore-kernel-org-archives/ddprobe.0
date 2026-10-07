Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DC9484234
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791364239; cv=none; b=mpdtmPaoQuZstJJfJETWHShgR6gnwyZZNCRXqJy83lts+nCzxGR2AwjUteTOLsuGY9/lnNKGBK4H2LdQyVch6bTix6M0Pwml/cK0xygRMMtRTjD/yV3AzPehFxX4VF6NhqYHkSsBsHVJ7nTmQEF2nTHPX1cwm/uED8t9KlNu19o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791364239; c=relaxed/simple;
	bh=7tv8Q++I+NDqLgAW5605mvsfp9g7F+K9pRuVOavYL2c=;
	h=To:Subject:From:Message-Id:Date; b=VagHkIPbZeZqh8ZgwIqIdyrWb/cpilfCZnAoPgKpaLsxlkUbDsAyjg/6wcEx6TvDUJO47MFF9IW/XzVuYjL/vPk+VPM+OundSKf5OQtnEDtbJDl/hKPR1bm5Kl+4ZvjH8qBXQwMRPNU1jJ5xxMFOHmUMEthRiSdWdlRgtYcJ9Dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNlB+UnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNlB+UnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC94C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791364233;
	bh=7tv8Q++I+NDqLgAW5605mvsfp9g7F+K9pRuVOavYL2c=;
	h=To:Subject:From:Date:From;
	b=CNlB+UnEr9W4MsQHrBZZVZK73GZCb/DP9nVx2bVVrXv/lj8vRKdWXR6jmqiN6z+Di
	 T7pfPMrN+rO4shaRjbnIU2Qn2FEHbcIh3Gae3D6limyBR75+b36HILfn5s40wz3OR1
	 q5cylcZeu1+mWprqK/Akvz+rbB51kdEVEquBTZw9uYdzByLkXYUnVYgKr+Bp3QcwCI
	 t7/V8UUFBF5uyclJZqUqFCB/nCOaXX7XJwsw+EnLytWGeH1zbY9DAqfJXwG1BH1dxx
	 k34EOS7Tuxqon67MZM9EpbMIzDk9VZ45QhOwce2ws/s9DYMYee78IPP0AlQjgovPHl
	 hIAqS0Xne/gzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A9ACA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136423368.1147.3290635303848926903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bbe67fc3340a69592a1d5fdbab28fb31f19b6582c08c8a27b1a139d54d13a90
Date: Wed, 07 Oct 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791364233
