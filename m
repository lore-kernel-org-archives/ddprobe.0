Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2038B23A58B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750768794; cv=none; b=bSl67L4fqwOcjq+iF5AP2h2rNKUum2zWTsEntWIGk6cxLgSp+vUdKOv/2EuDAMvBGuVp/GcNQu3yHAzPhAApW8FUMIhL+XQ3YUsUT7/n+E1NYuJ9qss0TuAyoOpPvkfUZ12zBFOjKELMz25OnOG8G0Y4QdikFcDJRslXQ6DccFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750768794; c=relaxed/simple;
	bh=sVXmrXhmOuV8MvoNu9vsRyWZqCL20e3sSylK6ZDJmdU=;
	h=To:Subject:From:Message-Id:Date; b=Jw9UgL6MP5QDIAIA/Maj/TTTW82f8OUr4aJ/WxVT9D7Lgxqv54eH+ihMhnLzhZh82KBpLsewLCXTYHUULujAZueR6NRYanlXziirMA4PQlMLJtktKcBmc+L8+UYMitjMJVZ/qCQtjgboRj49dOAkT9wprzHcxEo5n2zXYfszL+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1ica2q9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1ica2q9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C0C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750768793;
	bh=sVXmrXhmOuV8MvoNu9vsRyWZqCL20e3sSylK6ZDJmdU=;
	h=To:Subject:From:Date:From;
	b=D1ica2q9JBAHXbnCdS+bjaCzc/Q1x2++tC0PAU+rfOHwcj4V8otx79ffV+rqckoP4
	 fyOUNhYMR79LR7eCV2LGnQpPRtvGGBaBNTtigv4ruKsWZBMJfs8mLHZQqOQO4NKLW9
	 ovZbT4VQ0XympT2uSFSQdQf3gl3S8AjdRTicylW5CZakWJrMSgk74e+2m7vUsMs1NB
	 XcEN7mxoJ5XLduNFgwHBg9rArVoG+vcWg8jblmQf0RIZVsb0524LbWSr4SD2sZ5Iir
	 ahPeCYlrdvDijCtsWYpkFtPb5mdvWKp3PG1PqQIx0YrIZF+poPBWQ8ZVhFbeO3jJ1w
	 bYOknYp7NxesQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB6C77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076879357.29851.8575845384718946441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7d35549cf16ac8f1d03fdb33cd4368555ccbc5ed9e05640645205c3c751af5
Date: Tue, 24 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750768793
