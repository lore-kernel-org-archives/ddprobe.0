Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA6F2DCBF8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790524834; cv=none; b=RDAwOnC88rk3KKr//xaRkgiQGEPsJofF84jXooVJWZQs/U5xF9Qc7bZmMgxCGh5ByHLbLbU97IfGEA7VoANI5c81IaXn4QczvbuH11MRmpzzRti/VVsL67utMnEZc1fjpN/za99uFcD1tqNafYG+BUKnOfq3oos1jXGe7xblOWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790524834; c=relaxed/simple;
	bh=u+E2mDM/FUE7DwW5efwmKdMcLXM58CrYXVyEUiHs6LY=;
	h=To:Subject:From:Message-Id:Date; b=EJITsJlrUZYzEzG8v3chjP4HEepLB7KnjQGinONHSduLK/4GDMoo7TfV6e/16KFbXZ5nq5G9lIWO2X3owjkmGBgyYP/1zmNPJH6mnP8QTcwx+Ssg7Oy5W60MfFBy6EtHAHuWrFefdNON2ZHaXlx5TXTVxnviB2RwNL1BVIg1iLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAJFMXvQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAJFMXvQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA453C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790524833;
	bh=u+E2mDM/FUE7DwW5efwmKdMcLXM58CrYXVyEUiHs6LY=;
	h=To:Subject:From:Date:From;
	b=LAJFMXvQj6JS47Lu9WeoSJiJqaLDLmDbRQAr99eBLqM88/AEn2bt0cDi6B47AUHYr
	 l4Do7xyijZyyD6Vf41nS5OP9zzuMYKhMeBaQIAhK0CsCo57oIocr4sAC/xZ7lqZLrP
	 Z7gey+n0DOYTddYIh/K2CYTFbyv1arr+98NRlpYvPl1kGt39arAj0l6bAFgZhxYuhC
	 rUC/eKNKOhJDrSZQogehXQXyiisF1igWD63FneHTERxeTdStbuwVHgAF1onsQXwS24
	 aeNNkXuHVOrf6prheh1pmIh5PXd9nX4UUUzSllALaz7xRBksuU+bOFAASU7ETA5Vf0
	 caSD0J5pfwVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE869C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052483369.31215.15656567140451312977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7840f1923c20a0b466922790cb06cb6e3ab4619acfc630b3afa74f74369a1dab
Date: Sun, 27 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790524833
