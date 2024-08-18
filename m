Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3921016426
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723970154; cv=none; b=fw2nJfYD7/IISl1MwjrvUyv7K+OArBY9P/1n6dxOu7rYh+55sfDbKoUQE2oALCEFet0eqQTeMBYN7/KxiTOqL133xGx1dGAUfGl5yA9GN/Fw4DGBVopclz9fcC1KAbOCwZF/PYapD1bKCESSYPZZvYXoB6v1epsFINl8HUqlWSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723970154; c=relaxed/simple;
	bh=gdJyuMDWL+vW4JlZbdfWohBU3KAIVM+LsREUzkbMn88=;
	h=To:Subject:From:Message-Id:Date; b=JYpE2HZ8VcII5WD5LiAMKU4Ip8ZfaMjfNYFVb0U2KCMaPNeE41ZUj1NT5XscI0tUcag/4fFgJriJwsaot49mnMtnpYmZ83QGAHXHCWsRMaaYOijxyEY1qpiN5kmAWjZGqeBz7KekDALe05An30SgeXxm3y5cfIWLSNDJxd4cNGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrtxejSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrtxejSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A788EC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723970153;
	bh=gdJyuMDWL+vW4JlZbdfWohBU3KAIVM+LsREUzkbMn88=;
	h=To:Subject:From:Date:From;
	b=VrtxejShuebYfsJOX8vXcvLGhIRP437pK+JBo8moo1rRQgeTXl11kuTwf2aw4s3L2
	 ieRyqVK1Jv7AevyfdpehEvNoSdmLw1uXFlN/EzxNb24We/iIvqUZXEQ/Lps3BjCVZt
	 NHttYiSQBegsLy8XTZGz0yBuQKPadyAcDEb4Fah1CkP69sbgVd4+tAr6vcTNrjQbBZ
	 N1PCAMSthKuJ2HQiyjfdrHPp41hul84PGIJKRKrBYdAR+iM7RC4q9N8Zs+6HhjQgu6
	 vh+2niOlNxSgOjphE0YQoBL6aroA8BVTuTElcKSeG8fEvtrm4FITR+eVTaVrCoWZxM
	 a8qoWEtMRRqKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB8C5320E
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172397015359.13844.11547474360445624673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9614eac249b335e6fee91dc919b78c27927f247f27de8db19109d6a46968b5e1
Date: Sun, 18 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723970153
