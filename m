Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194CB13B7BC
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721859954; cv=none; b=VIkbCXT2p4b9TIs5dyXqVfovZ6WhS3sPThQ5uJX6F4wvYG3w5AwJxNV4IMVhC6+naHgsKQEGG/gdkoW8HP39hPD5MBBd6pmPnC92bFTtDyG/M9fC8QbH74CXNXTpYrmdp6qQuDTTCDexseC0anB7X9drJzbbWhCL5tpD52GCkXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721859954; c=relaxed/simple;
	bh=hYk/4bvYExcgBl3usTDZodIRoEAd0lIqwTmwqs/JdjY=;
	h=To:Subject:From:Message-Id:Date; b=TVklAVJ7DWTaHBQZtqX4CX6MG8zPSCbuUplYUfB6khFK1HvLirHh8t1taJglt3z6WumBGZ4mNm1CFy4pYCT4eEV3rrTzitUcZEKNngWf3en3+HlFOCKh5PaW8UTwx1sAe1OJb6bWF+6Bt/ajzRo029+xCXoejD014G6hJgncfyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdJJRLdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdJJRLdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D99C32781
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721859953;
	bh=hYk/4bvYExcgBl3usTDZodIRoEAd0lIqwTmwqs/JdjY=;
	h=To:Subject:From:Date:From;
	b=pdJJRLdjZUOXYKlMMFs1D/GX99B36iUfm1iwYIjnPUOcB7tKx61/DarpXR+amDS3l
	 RuTtokxg3381B6fq0estOQLWhIUuZKSbl9QDBcP57xYLs0Oh298mj0Hbme2833EnP9
	 dar47kJv/RLFZwGShptUqsCLm/s4VgBO66yJXUKbx4VK7LkO/q3Yujr0GdbiYPTrPo
	 i/TdIR3F/iLeVXHEjCnfpYa/XLVKMkGzyFFxHc4nKdnrFfIXBLsMzPo1nPtEzLZqOW
	 TxsTGe2jVGBOgNcwEzRM4JXKmysP9PYg4AHbVYiTONrnz9nonUOQ87DcOLy/nhK/o+
	 YlklDf+zP86EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AB7C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172185995359.3542.11848823075118775845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2ae627724a305a5514dcc844328da45211e83604c455c3fa3d2b2cc0e40654
Date: Wed, 24 Jul 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721859953
