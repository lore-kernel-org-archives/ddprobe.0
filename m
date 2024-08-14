Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FDF3FB3B
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723653954; cv=none; b=uDQ2x9Sto/WMoHUFH6tZ7NIG/AdXhbgITvgiTDanWx6u8CYN+dI3f6tTyW1Yhk2pO4HsYUMA0xoFdCy9IFWhFDH4dbrNVrwNYP4OEn2kFPTse+wCbN7a1PZw9AeUSKvJ8OzUB2zyiokCjm2dsivo9qzPzDHFSMbqM0fN59/UU5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723653954; c=relaxed/simple;
	bh=vzTFWreUvzzqfhVGVRR6QkTRf6xfdK6EzpdVPfnP6Co=;
	h=To:Subject:From:Message-Id:Date; b=kp4ppp6141Mgjw3Ic4h/adznCerOp+jtYbx1j9uaQFCcbg5gwYYct8y7kjy9rjvtCgRV9D9a8EwWtmkyzjBE+r/Ryvkg1P/eoFev1xcIVCLDKTWyLbGaRE6GNnYPN7/yJUKI1t+OgRMBgDN982g9cQruQuyaf0RUGtDNcUHxsBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSYufJr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSYufJr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1C3C116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723653953;
	bh=vzTFWreUvzzqfhVGVRR6QkTRf6xfdK6EzpdVPfnP6Co=;
	h=To:Subject:From:Date:From;
	b=BSYufJr3C3+hwkex7aqFub3qF7QdF29/W1KDdNn7+lGM/0m+/1WfzDWruFTYkCWqI
	 6PsmtNxiydsexBxagVRhXlqxkXqBb66jEm6LaxtmOEwSl6aMa537EWpP74CAvYePJ7
	 Hqi3rHoYavo5gU9dYBbsrtV7GU89eH8HdTSahxCQlv1dqOfHP4tka8vm3DAqOOublh
	 m3S8jKVAfTOVNt0hv/Hjg64OH+0913RdG18avf4RSS+4JjL8lRRpEtgEK/RDr9uv5n
	 DB2WbEqEpzMCOi3i7/ZrntmkldCCAkV1OPihfPNLH4KDKQDQ/8BWBavkBadIB87SKL
	 dlED+Z96B6aGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3A4C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172365395362.17066.5371764429151597855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79ed6b05cf49f3cc04ddf430e5440de1d9b907de1d309cc5ae82a0d843d0b90
Date: Wed, 14 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723653953
