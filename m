Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A207B667
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727624754; cv=none; b=n7CGDHB6+d8dWj5Q/3shXalXVJtDrHua/vGQClCWNPoiN78ug/VtVyLg6w9TkZ4TQMkJMpLTYSHQ7JFsStZc92ViO7dMGDrgm2PKvXg1ROhtLQNMla+6Cd9LfB33uJncheD/ulBTFHZOGXh0GjgDVGFi3ewwTAGkr2pFMJOtyGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727624754; c=relaxed/simple;
	bh=Ukmj+xWMezJcUv3jO0/nfIgZA8L2ycHonZMQrFM4fI8=;
	h=To:Subject:From:Message-Id:Date; b=tArMKDb45Ty5PfBKI1bqorSQKRNLO+La72qQabn3sYt3RgPInAIfoL5v3WJ20ZlcJw+M4NyjjpwGyqhqpcZXjN5jyvlxzG2VeFWAgr70AIVAaRYwwBriADS2KZmUAgPMFs1PrRy3rKGjOFsHs1GjRGbxvLExClvAWfYj+xM0sag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMfeykCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMfeykCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08EAC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727624753;
	bh=Ukmj+xWMezJcUv3jO0/nfIgZA8L2ycHonZMQrFM4fI8=;
	h=To:Subject:From:Date:From;
	b=VMfeykCxFMY03fiEUUFVvAsCp/UK3Uyn8oDtp+f1fTK/5uaHhxAhMYuX5VFNiaKdp
	 M+UyS2ZuQUYB4W717CEPacl0pmGZ/M89QDS5UDI0zqmh3ArOudgxwLccEzFplX0LIO
	 qeZvDxFleSB33fmXS6q9YLU8FDiz4oP5i0iflU+v4wuf7TRpt6vOE9gabsLmRinrX6
	 KMNMgJmlU7q68aVvlsbyF+6Z0mGB1OIk1B0v1QRUCsN2VVC3gTP9mJyvL+E2DT0qxo
	 94d/RmRuhvAjf5mCXibY4UoTmbwjQ9H7MT35qohnc5zz1usq2NaI7+oi+EyttAIMa5
	 qvYD8axTyLDXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AC4CF6498
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172762475362.8244.16009597849513186374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cf5e9ccc3366b8d793c008ca0c9fad428133f362a6a33a64ecd083525d308c
Date: Sun, 29 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727624753
