Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7D1139D
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777594054; cv=none; b=qtDOcgqCh7YHRoLsZOcSBlOWrC9tW8DAkxB/Q7IkglIul2HKeAHEq05F9JcX+LP5aFuK6e1ficTodjL9bSpsQxmpBL5IrPFzYoHYOo/H9uVe0eJzao8LqyshWULA2zEWLwdTPsS7z3tJjdV2ByKqo6HFwfaM5i+ZJFgTJPEFWkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777594054; c=relaxed/simple;
	bh=czVWTWGdOdCOHjPEzgoCawrcbjHgC1GoFC6VczbXwBc=;
	h=To:Subject:From:Message-Id:Date; b=qEcpmwFCbljRDTDAAnXoG193n5PXRbuOkK8EnujHi2EbSaxajxBYM+Kz0uhRWcuweVPG/v+R5foBdzU6VJM6QyG0rJshRUJPK9Qfzkwf3seU5sJXFLKWHyU6Nn3N6CJsnSx+9hhIO9dYxRlKMjNVDRLARGvOwh9GMeKK/h3A9gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRJebSQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRJebSQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C371CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777594053;
	bh=czVWTWGdOdCOHjPEzgoCawrcbjHgC1GoFC6VczbXwBc=;
	h=To:Subject:From:Date:From;
	b=BRJebSQsQflyiR4OZlXAKFsZn4PmbcpaT9TzzbbtugGQBPOYzAHQiWb8M7mXXPrvr
	 5q5bdDdkf+ZhdV6Xw3zGJjAxfvzRoqj2WydRUDG8BBjRwVckMml+gYU9kp7O4glFMk
	 4Mt2caKuhkJHHRjbct+Bn3faj+YCw0NF+XUL2Axrz9OC56QTnME9Sj6ofh7Eb2tyUV
	 XI9RoPzWKCkd3e/n0w+qJYOCE9Pmdibt9yE3jIwKjerXCIfMLrxcAlLvSocDMxz5YU
	 jtEKpuCWDJOt0mnrCV3H8cSM5vj5vvTFwr3L+3c67RXk6opfoh7v8lAommZUbA1jc6
	 QQOM90c4hwKBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A07FF886F
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759405368.30673.7673169336917278903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9539d87a4ef3aa5b0dc37a3be62e7ab428d3c60e42bb89bf3725a5657afc3bb8
Date: Fri, 01 May 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777594053
