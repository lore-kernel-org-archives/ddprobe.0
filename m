Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184351FAA
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749421794; cv=none; b=Rcg9J6mh7kGbEkhW7aD/fFOunIlC4d8uKMt/JUzLACaebT1YvdN7+2am26qNE1rJGBD9c8F+7/RJuVfJFxcPaczfP9Q209SY15Px/6PqIwtrywjpgaQM9v5TY7lB3f0usygkVRCiSAy1LJasQlY5E++sFNI/VTzl7RbKXR6m+J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749421794; c=relaxed/simple;
	bh=gM8xdQLh/vfAbqguCaYlywIrmTAH5H+A+bCT/ZaWL0c=;
	h=To:Subject:From:Message-Id:Date; b=ct3sBdhXGKK0lFnl28dru4eWPcssMRoUQp5qhzvC+jA2taU7nXvXSpAPDMkLmtTxaQ8/ZJgHdNx6FOuxQJe1coCmtenkGjv8kj9PGcn1+nebEU2cW+EBCOx7U3+PMGsSErtILsyYDp/BXw0ASKFLB8EQxyL+NYA4yaDeqdjJ6ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeUvTTER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeUvTTER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D4C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749421793;
	bh=gM8xdQLh/vfAbqguCaYlywIrmTAH5H+A+bCT/ZaWL0c=;
	h=To:Subject:From:Date:From;
	b=jeUvTTERigEiAvgeBJVYK5q6i9fntlQU5ZU1DchIp9e3x9hfYUD0hPYJDiWtXHPyp
	 V2pyxsK92Wj1b2Fh2VaIrNrF2szPefuCDPIKD0iJp7I0hFPI27N8LEAsTYUw4WBB8i
	 3kYMuo6omOeuDDxYAqs/ppEBh6W2OrwUuTuFJGb6vlAMm863ypXS0jblMiXh4YiS5X
	 0ntMLemZ9rXyPaQNlzildwrVvT5ndVlNPMaRWKC5+YXFgHaRuuG+XPhczeXdU6Xrh8
	 tsHaIDXBNUCzTLskso/OZhdsjmsOQ24J55m0mR3kWKYgBrQUVHOQUU8TiALNN9nelP
	 snmIMRLTe1UiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215AC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942179357.13647.18236766157276271075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c780308856d94ef9e92b7db1036b83788473608fd056ef15bd6ae37d7f8b4e
Date: Sun, 08 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749421793
