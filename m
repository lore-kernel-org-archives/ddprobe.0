Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8C74A01
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737004554; cv=none; b=ZF/GRot9tAG7OYOYMWLsfVuYP9K4+uui5T4v/KoYKxrkmdN9YlBE7vHS7pJuuO8N/6woYnTg9uxQuJiGli8XsN/78hTppFOadICOH1Z771/bur2gJwmrji5ihGubdCRNoa+6P0T5i/3rU7oZAWgGYNQHRUwqojmPc8XGwDtQLWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737004554; c=relaxed/simple;
	bh=NmBw9ST8c0Az/Ak48YJCL8FsQ1k+OdcVD23FUJXHgz0=;
	h=To:Subject:From:Message-Id:Date; b=nXCYsc9x2WlfeOrCnNfcvIgtiVPmYCS3FCXG8UuU+Rl/9iTUYGHRGrXhN46mp0fLS0u1Ei5VYcLibDS91BgfM+A7iEgP1KqGnXrTjkyF+WjKfxFURV2rIFRsz4A5lksxd4n7tPkqBvOYzFjNjwuCb1e5f2eIu2DitFCcK59pkCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqoGs3Fe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqoGs3Fe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4131C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737004553;
	bh=NmBw9ST8c0Az/Ak48YJCL8FsQ1k+OdcVD23FUJXHgz0=;
	h=To:Subject:From:Date:From;
	b=JqoGs3FeqVAAHSJIvsJrJUMDna0k9eNiu6P3+iK/fcmyvEXVJr0+GDeXTMOYfHQo0
	 m3bLCx0HLh6dsy1vxLrCWoTvPfieKJtfaV2CIfrZubRQA2IzyCMFNUzRmN4d82qxGG
	 407Kr6C4P20bgk58+5+sL2EWKP2IE/jWeDOSWlsRMkMGjpDbWeKKaOOQmmnWeqZy3A
	 vxTVH6ShyaS2MBTxWp6DbT0MFHkMVstjGZjB57Hh//CdEtmLzmboPZbDnKf1ny+CKs
	 AAIkwUrVNX5xQ2cRmFphqSLb9hN1BsDyAATRBTSo2j1t71FPAMt1JzBnIUIDvu1YP5
	 GNo494DPYtODQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91246E77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700455358.13143.5381261405317816919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6732b7eb4e63307c805e73b671ce6f7f60fa090ad3d1456b5b13cdd2f3dbf43
Date: Thu, 16 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737004553
