Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13730A920
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752414594; cv=none; b=Uy0nDOsIUHgmbbxODlpmZEGVdMzuUWLnT8dYGp97KrmTC/kPhp78zmK6TCSvbbeaZfXFSnxYNO4kDCT8wT9+1LAK4/oxzjBVAK4HuN4QIeCKByK4PFyMSzUrhJORt4JlePMT2Fq3y68ddlRwBQdNZ2ra5yOvEg4ew92V60h27MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752414594; c=relaxed/simple;
	bh=X6vMgA2YxOIFQ2fgXzBCOiQ+krm6X5gdai9lcPYQmcU=;
	h=To:Subject:From:Message-Id:Date; b=GrSpianA96+hZ9qCnztShi0s9IXIbShGgVTgYJTXL6eZTAM3fhX0z5efaZleC0sMnGkvlU0A+UyAaL5Xrl3vT8OAsSxrEO48ZOZ9MxqSAguYy/10STrsl4p7kxCmoA0o+CeYWPWHfjdkAN2ZNrN35rLeXHseKm70re9yt0Fl0Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCDAyTkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCDAyTkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DDEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752414593;
	bh=X6vMgA2YxOIFQ2fgXzBCOiQ+krm6X5gdai9lcPYQmcU=;
	h=To:Subject:From:Date:From;
	b=CCDAyTkDrsNodlQgrPo8nvjxP9POyfpaCZZrhF4k/km+8vglbS9PuTjSGgQqZSvrD
	 vqMX5J/QOd03SnBdYKQQJ0PYCNMLout9SIX4ag2SWu7A3aLTIKIhQVF4X64YhdhQCj
	 wi9lNiuls5VKf2maARq43E+G/6dYGC9RgIxJz5afux/7drjHDk//qAJT0Th9bqd2EG
	 L7VxoQ3vLXLgM6ake1VQo1aMTwzRilYOkVvAj+DX3sAUrJmtgyhrpXFkjmIqe2DPbc
	 SI1hGRKxqGc7dOzoavcddnQUNDum7ue8JKvx3HuMVNC6zR98kTQnAJcTxqLlJ4E0Ik
	 YAe1hjoThXXgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E43C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241459357.11049.8328254154871617677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c8d1293943cd3794a4e2b95d5a2e807fc0b98cf3d237986fb344a8210a595e
Date: Sun, 13 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752414593
