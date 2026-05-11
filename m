Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB2E6FC5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778511634; cv=none; b=i1gpQLdgojyXH1CGXcRguzvmO844hzS/2y2yx9UNkulW1277cqbxTFDqw9Dc+KykZHVpENcBi1usP4xv5llBahUZvTSZzETj++42cCws9HouSPuwG0+yKF1HoXN4maWPuT6KBzg4bdN9IWJbPX8voKzAVCAtexo0ujIQYz1mwRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778511634; c=relaxed/simple;
	bh=0HgkbOqpBUMZc4C0FplReOceWxjM6/JWGYuwjahapZM=;
	h=To:Subject:From:Message-Id:Date; b=SNJVbZMvjIxP9TE2wy+A4rlTIQ0FRJlS3pdQp5v1mphO3D4wB3N1i8IPn+Epm3uNI/fOHTueeQGT91kpE048E6y+0SmKZfVfgSoSzxML0Ek+8UtYpwbSw7Nh3gpmNkS5kXHRmUGkwTjC6uvwW+3g4adGllHXxfOqBD19u5ur7bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oicRzxyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oicRzxyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B842EC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778511633;
	bh=0HgkbOqpBUMZc4C0FplReOceWxjM6/JWGYuwjahapZM=;
	h=To:Subject:From:Date:From;
	b=oicRzxynfXeS/W9NxyhUEHFXi+9pKBDfu+5qYXF1OIar0B3blOberFJi8qi8ORXV/
	 Tf/6C3DHm+9+Nd40wxCXL/6YineA4cyE1ME9CICRdpeiLsGbt/0pt9G3DC4PTF2CIQ
	 Uesyj5YXPia9JHA5b85/l+sIFE+jaBA6ehiyomQnM+cULOU86lX7JnOn383II6cEdk
	 KbSqRloD7Rfd6niatJk/EaqQkXRefrAMg20JSjwq0G0AKEjkB+c4DsaqrHiNefteIg
	 6FJK9SVWTsak5SUMAfR9nEWeOHBRnEE1xQGtOLMoHwWXs0F3HC6h8Q2LfRVwH1DeMg
	 T7FW6FM7doGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA725CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851163368.5490.7007711456783386889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e633aeec93408b0a4fd72f08a81787883751e2c836f01ca7cd49986523197f
Date: Mon, 11 May 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778511633
