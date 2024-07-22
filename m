Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA841754B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721651154; cv=none; b=IZC6uZ4pDhE7RwJs4c/gDIPUd7RMA6t7VBLSCzK+2g9iV/Nh/Cqeuz00wxHXnXEfAN6BtUJXv1ST976IR18zER8seVagtSZH06cS+4OBUhth53wDSDqHZqWWWQLGbltrIPNhruZ1jBQPFwUHSktFTNe3T7qu9vq+HPZsDsJ1Aa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721651154; c=relaxed/simple;
	bh=YsM6/Cz/3vGrzt+gOVSCTWPznDd5gfLNbh97YoxP4F4=;
	h=To:Subject:From:Message-Id:Date; b=Z0NdKbQEmLAx22IMeS6GQb1oudmzXilTxBg6lYnWKLZ7LETnEi8xcF8MzZEQQgTfQOXqytB/ipDeo224uU3+JWKcXqkvm6xoJkC+n8cukD3dUpip3shbirr5ojo8ICfYRavb/Z6FWyoECqBeZNDEWCZBJMLtMUjYa/jmCuvla2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+QpZB5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+QpZB5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A836DC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721651153;
	bh=YsM6/Cz/3vGrzt+gOVSCTWPznDd5gfLNbh97YoxP4F4=;
	h=To:Subject:From:Date:From;
	b=u+QpZB5C2SykEaoLjB7jO72d1V77oZwoOHzHV2Hsx/+dH4Ur2aK4ZGdKlsJbnqCpW
	 okZhE7BKul76ottEKi83BMFgCCwZvhzWZYblvEZpNtcX/eacacKN9QWVwt9nnVjNgg
	 UI3DjtrrZ2Decy/Nmu6u87Sn/l2sR7TZmhVVDe/ochQIlNYvEDE82VGubf3TeqDmEh
	 +wW1SbGBQkIoC8JYNEGJb29EIlpnNf8YuUsGm8lDclO2HRa0Cw9wDuAci0BezKkfm2
	 WH86RZ4p2iZrIT3EFhhpVRkPh5iz/tjokvsgzsAMxyue4jLD2DemnXoAEcZ+J7RHZF
	 uJB51QbyB1Gxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961D4C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165115360.16535.13653253034364562301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2282ce40edf11fb3966dddc9cd0a8983b0b50c2d880fd976d8f6acaf926ff1a3
Date: Mon, 22 Jul 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721651153
