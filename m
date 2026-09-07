Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5464C19D8AC
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788771634; cv=none; b=KmKznRFDxk4Q2SxudqNisEconutEO/iZhlKszaOd7RncDk0S+Z21JEwZQUPuCEkAHJJM1Tf4O0Dq7usBlPyreAbNBVUib/4EO8v9D+zZhzAoJ8hHa5X5biPvHozG7NisWkDDWgsqPzq8vW+27bVZNo5hPgkd0kNeAkvNHzRnd5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788771634; c=relaxed/simple;
	bh=rz+6T+BuRnovH8h8gbzYLc/G7jYw4wf3fTzgAT4l8+c=;
	h=To:Subject:From:Message-Id:Date; b=RtA1Ad7ziJK/bnXMs/aYGSPeJG3McrUddU/N4kgTAb4DdyyRDVIbccdkUvfQb9NhsSNcHpNIrk+672ONiJT5lh15YiqAR9153RJHJ7d/Vtt7OF+jt7hj+/BjYrcn1zzzWKh4J+AWSdlqROuj6BdEZi8+crDSUw/p1EWFwR6g5xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilgM1jY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilgM1jY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7759C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788771633;
	bh=rz+6T+BuRnovH8h8gbzYLc/G7jYw4wf3fTzgAT4l8+c=;
	h=To:Subject:From:Date:From;
	b=ilgM1jY/KoQjiheL9RCPH7zNAjzRLmbdoahzkAsgqmNVf06e5mGeaU1sNbivGXk/U
	 z2h9ShxsQ39GEkrsvYNfwSPpAZM89xNIku7B7311ZhrGg32b0GJIc5UQmqls26BB+m
	 7HX7l24XEAPkyC5j90dGOSBkOLrUc8zcC/ciWGOgWF33U5pK1lm+1rigCV05e0sYnM
	 LoZ0d+TRYqzVcZIMgyGHR8MqB93HwToYQETcfXe4ZhqY4J9DxotkHEkSgp+h7v+w2P
	 1VFSoPRAk+WIi6e9BcUM96gfVGamtWK5LeTYB9GrB3IKSpInCw7U0DAePY1Z9Frc5o
	 5Om98V0WgwPSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44D9C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877163372.23241.9279267423857409709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4189fe187b780ae9b500443390b0b4e87053e56dcde8acb001de2fcf9370ae
Date: Mon, 07 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788771633
