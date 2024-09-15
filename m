Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9C11946A9
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726401954; cv=none; b=mpThRsKHUwFVfafhKRUVQHnNe1qFQAWjA5u74i0WUK35OP0s5OHsiYlXDt6SDTc7PyYKcYSv9vqAEppNhdAdLopoyGJzJWyBWLqviHcnb09MKb0y2HY0eNVvjrDsT+ODbtE3LaVHhdjFXNVhd3YYgzRBQTYAvW4VLUIj6il+42U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726401954; c=relaxed/simple;
	bh=nGq+PZO47oPlrn4nWO9Y1TVGXiocH4bJRGEo10PY1Ek=;
	h=To:Subject:From:Message-Id:Date; b=ilOW29jjgGgA1zqJi04HaqoEjAqY6FfvmpOgk3lyvRMNAKIKCNRAtxFor03ZU/eZCgXruhcy8WvK7s5sw4slmleSrUExbuxSZcG0Okn7fcPzkUiViFF/83HXIBA9GrBrK6ot6hKWULnVStisESrFVXa/5U1F5brOAN9OQbS7Wow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpweAf2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpweAf2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA034C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726401953;
	bh=nGq+PZO47oPlrn4nWO9Y1TVGXiocH4bJRGEo10PY1Ek=;
	h=To:Subject:From:Date:From;
	b=WpweAf2euaMdw7xHRO+3q+iDSOsoSOq1lUrZn8NxrgKiZwGqojV0+FiouDkKb0QTu
	 iS1y2Mu2iL1ALUnilAZ4Jodwpob74d1Ed64/mxJN9trPNWzfvOsvlClsGrlHPiFM36
	 eyhHknAB690+RWXQNr/efrab721cdVi8EPhK3nPITGYaw54PSHI0ZQ/yJhUpNrYgYV
	 McF9Odplu+Ghq3WFAycPg7q2edHtetvSp9NYV9gAnrld4aWfcPWwewq+PguYFoJCXW
	 XNfTaVTyPWaLjR81FDAJCIuqxeywG11EmGqaK82Qr0DahOQTMzjnYNi+RiDAVFPKjq
	 hSVnnA7JNEsaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96161C35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172640195359.29665.9970151381428430968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca47e3917bd35b2bc3c0c6aa5bd0c0f586271e61c51ba83604137c0399b3b2d
Date: Sun, 15 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726401953
