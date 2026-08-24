Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED1E3AEF5A
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787564434; cv=none; b=qWbVhUixA7c/gHSxJvUSr2g3zXgmrBcyb2lhhrUpvm7iZ1lG4iJV6Vvl8y8FeJ0fwkPVRwJXwDOn9aZguJEtKD09XtZuUMjVD/ZQXsRLrZKHOLStp1sYgfEaKaGkJEEbj/bpzPG/JP+ecCAttB+wre15LSOcIifjQNQTRkneDIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787564434; c=relaxed/simple;
	bh=iaYO1nloDG7ZUBFvnd4G5tqSfDm9rTfOfAlW/+Qfjus=;
	h=To:Subject:From:Message-Id:Date; b=l1HxzLUUGtFdAptmoiSo453j8KcGdLpPttQQICQk8H0NtoXR/YqSH+COlwBrCcdGQQ0gMsYfRutX8ZXL36CpS6GRBsCDYky4wWu92Xn0gvlmsq29LH8B0eOrYtAL6mnE2nPiuRmNBqbnHTOOWVcvbTrHhrroOaw+ivhl+z1MIEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMZM+gyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMZM+gyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD9EC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787564433;
	bh=iaYO1nloDG7ZUBFvnd4G5tqSfDm9rTfOfAlW/+Qfjus=;
	h=To:Subject:From:Date:From;
	b=IMZM+gyD69SasWXEQE1E6cyekXG3zheWU/YybFCtjBwx6uNVB2nfXXazI8o9Ulcft
	 qfVqffFaargRz4rnqmpxfJe6s7H+a8CHL/1KymfFfMEUrW1CXlzSTCVVT+EDzEHy52
	 lPwsSJUJlFWnRXQ2NeEWRYWMbxqs17L1Gwz4DLBOKMeu+pwD0sTUdHGHlqyGgUYRep
	 Y8uKeVPHGe8eSn5kIhpcIYNCmOzz55Onaajbxozvsp2WBY8niyWIN0bLNZ4FbkUD0M
	 BQNinucEksYuJ3zEsBF0KVk7ALgPhwGhYNnBbPtFcW3M5yJrbttjg9xaRc1ubagzth
	 /Jr0DM6k6jFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFF3C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756443369.11475.2944327016031247464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da94f141543912ca6b2a576b6ea972e5b1f1fb840527db0118cf7b20da4e2f44
Date: Mon, 24 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787564433
