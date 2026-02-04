Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC3D3644CE
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770243234; cv=none; b=Q8E8PAS/D3RB+aNGeHVZRE/WKlz4hEaYkF6f1D/IaWzIhq7uIg0sO/FFUPnZdH+rN8kV3Z7MvxDSyy/4OwrF5ZgAoGdxjYbHSuDuyKwSCsu0CBoGpS58rfrj4ipDOzBZy0zaHWmmhS2mxhHkZPgevZHOaZ0El7O/QOScj9j2+5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770243234; c=relaxed/simple;
	bh=zdAEUcPJmQ7C5zAro8iz+how93f4zjD/W6OsKpcZ6ZY=;
	h=To:Subject:From:Message-Id:Date; b=EaDRpU+wbytZc+wXdE8UlreCxenLv68AbNdr67tWWHKy5twdD4VsK/v3vbbKv0TBIRusmngmjs5wSlarUpJokdFy/E8nlqaMXfjBkJ4i5ePAyH5PZo/kxAFuzfLGjc8uBy9meojnmRhHgxTikNFvqonDWFmZ3YEffQ3EO58ZiX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6r9Cewh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6r9Cewh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B2AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770243233;
	bh=zdAEUcPJmQ7C5zAro8iz+how93f4zjD/W6OsKpcZ6ZY=;
	h=To:Subject:From:Date:From;
	b=p6r9CewhqCF9HvNbBtfzoK0GizbAkqF2L3Ne45D1EVIhzaSzeCyet3tGuHSOLswNI
	 NqKNJA46uI+ZqtvoHbvcNdNprghrfMHwCLhzZaV5wY1cKjDTp8KYuNOOZ+g1QcoWZm
	 cUTE1P5DtYA6PxM1tz5+bEYn+o+r8CQvF/f/vjZeSikN+IIk5q9P2kzx6gFtX+OREE
	 9uAe2x0zaSHbhL1i6aMVbyUVHfbxqUBH71LmNgiTyyjU56AGBEypwDPlpUNdpOesPV
	 11qx+Cx/O9Ky+AxcCUfaS/Li5S+HhjF6g7aKkHQQOzi0BFrs8kQi1epJzNUFeJzo0r
	 520755lpy2nZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB22EA7946
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024323366.28054.6604058285906247332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4add9d888938221f9e62d53cc84113b3c5ca7f83caacf76367ac8e5ece49d97
Date: Wed, 04 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770243233
