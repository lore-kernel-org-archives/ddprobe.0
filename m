Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422DD13777E
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781582794; cv=none; b=FaGexnPFLESr56hM6Rgj7oELAYgtGZ/2S4d6dQaZaVBlyXDB8xHn2GC33dhecNiAyUXnbK4gJOFA7JcqUkgoqzchorOk8clc70JC/gGrXvEgT7BZ0gibypGO/s2eu6ADXwpDazesSk6DttaVyy/P6OfKkKVZE5CYGjzwmNbG9Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781582794; c=relaxed/simple;
	bh=t2XFkk4sjPWxkvSKomS4DswlV+pCtHBoMqzvnX5ksyU=;
	h=To:Subject:From:Message-Id:Date; b=HIQ2RgaJllP6gy7oEJQJReXydMMgop/xYlWvhihh+0lq/4/mbUhkgCFAOZing3Kp28NjlmCWY79A/90Osx3/QsgVtGjXG391b4BYtVQ71LKEC5hSGUfLYcskx1Pz6MQCUCTUJHI5jPdJ+QZ7DHrW9jA5xlmJMtvao+cLm/e5EBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYCOSl88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYCOSl88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0663C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781582793;
	bh=t2XFkk4sjPWxkvSKomS4DswlV+pCtHBoMqzvnX5ksyU=;
	h=To:Subject:From:Date:From;
	b=KYCOSl88QDTG0FUI8v63HFXkfUqvsp6svd/tDtaSf7h6Cklp4pi1+JTl04gD1v6ae
	 020hXOmcXHTjdP8SBlgE8EXOc/LxC45zasT88lHXmmt/TFlD18k+ftGG3Z9hjaRM3c
	 ZmzZs29TX/GPkE9dwbY0kg3pJ510Pp6i+7XYX5yNfFhKzBxr6tMk0Nfx/fwH5YvfLo
	 oHpSVinyuJqNY3lLyTmG3nG8/AIFB0mf+QqqCcbdA8xiBd/3BOMXadYtbnB1lGruBX
	 XbBMiqr0KF+GGALRX7qkj/4KZ0BGVYZueWno8yWPoMuHuRhgYRPiMb4f/5m4FiOQL3
	 ox6kGsGmLpjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4954CD8CA8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158279369.10755.15636573481821584419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6885260aaef0bacaa0e2e5b8f096149913051c5d26949a26ae1125bb422eecac
Date: Tue, 16 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781582793
