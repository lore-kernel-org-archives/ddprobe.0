Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B348381B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721756754; cv=none; b=jLsh13wSRoMWDU+GiHDb+m7YFT+it6SexLx4znlaVm+jRt7L7g8eZh+2Io+BAd8xGTdb7/qBu2QEMca2uyUGkKMSSWAepSIgQPOyq/SD973coUvVvpnHkim/JcXwHFHhYalpcyIT+mwFDI2irtxawsb7hQ8fB/W9tXlK7AkrseU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721756754; c=relaxed/simple;
	bh=3kwaXlw2+N4vbudW5Q4sRcjouTtyfNnAb6ZS4WcGVCU=;
	h=To:Subject:From:Message-Id:Date; b=X5SGedND6TtfjYgNZGDncay/fFouX31YfTnn3s8pmN7sDZunlAbFlg0MAZr2HsoZ8OCsfv2zOIjwQ5H0nurLYNzKiLtb6qhFClFub5WGyC6BsbZ4xpU/1vOUtx2JzH8tnv59zi5CqU1t57GF/e+7z4kI2lnvKxHzFmWKeW6CQAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mh/cUP1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mh/cUP1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9905C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721756753;
	bh=3kwaXlw2+N4vbudW5Q4sRcjouTtyfNnAb6ZS4WcGVCU=;
	h=To:Subject:From:Date:From;
	b=mh/cUP1HKmj8W16ISfy4VdD3FezI0hB+b6LFDUXwyvOIrRKncndLvXEYEOKD9Z/wv
	 g5tS6YZKE6TDEEjM3XVWriK6s8BeFepikYFvcglG2Oqor1Wr6cr68MOW2rcTYMBl7E
	 MIvHCCjwj6Cj20j6dlGU9JZJqKhoKo85pLtjc4P6G4CkCO3dtmD+WMqpiBOK3WjevS
	 4FRY1LO4Kxi0pBHe/ZhdjZFzIEeWY98x7HgNMfgmPMw5jNxgybXkBSrFpCIfWNlPq8
	 mZJJP3Q9uIdLVH1Rwa8UZU+ZzxnPsKyFh0xCQJvhXBmddIkAhdBnFYDMDw7SxAeSWd
	 DCoT1BhjtWZJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7B8C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175675361.8460.15355269289936892823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3df37b7ebfb96b6aaba1fc3351055b441fd9419c3bddd91bf611322b1597be
Date: Tue, 23 Jul 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721756753
