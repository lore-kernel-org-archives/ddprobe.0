Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E70A2E717B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771070694; cv=none; b=svRFrMsPRq4MOoA+YDVSlEveuAx1m1r3fVGGLcYpx9pshbK07OiKkPdn1aQEwsAb1h78fRa6nnHaT+GXaMigWSbbLxubP20ATdqRzsnl+bZC3v1E/q/KzUjeYY8vw9omw+Yl+TsO1XhJmCqCBFSchhE2AkIWGFDirk0zn8ZQn60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771070694; c=relaxed/simple;
	bh=osM3hy2zXW98H9P/QXg7UXMDMSDLgXJvXisEErROVss=;
	h=To:Subject:From:Message-Id:Date; b=dYf4KhvReqhQBR55auQEMMuL8bHNtZA5IIKeyjkY+FkVurLhACekdCHMS+To+2ielfKEmGjkjkDRJm9Wi86xIiGjx3PBN86comquVxPB3+GpWAk9SbS3+DNk3kmrTwY+SCUBQpT6bzzV45R7xL2e8KTr3MgEo5bKJFmYIFzaUc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBLn7Kk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBLn7Kk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF07AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771070693;
	bh=osM3hy2zXW98H9P/QXg7UXMDMSDLgXJvXisEErROVss=;
	h=To:Subject:From:Date:From;
	b=YBLn7Kk1CeNZ0rHF+6qoPtks87RcTIHxybXd3JQBmandgry5B1Is8216f8BDtzfmK
	 ovAQDId8/uLNdJ5cbr2fAPgZgInVY60ICBBMQy4Rqh103XB3e0FW1ebuFzw8ACAvyl
	 7cgWOYzYhWwWDxeUNQcXAfctQPcFwxeTkLsicgPHjRCKsXzmyqb07Mavstb7lzMhou
	 2cnmKaVl/s5xfVMAZauq2I/EVIcYktVJe14Hk11QSk3/HqfSLOjJqgA1YK0LXbODK4
	 Q67fM7Zhn3e5/NEkNQ+HEW3QhCtLtkJuF/Z5LHFU1sypP+9F5xiUV2no4Tdn51DR6P
	 arylfxXrVUkUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BAAEF99FF
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177107069364.13078.7161396133466782505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37313379182142c46a6ec90fc1d2e4fa3110078c5da9769ec818805d3d7ead1
Date: Sat, 14 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771070693
