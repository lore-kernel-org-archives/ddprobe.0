Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243F7241665
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770925494; cv=none; b=jPMFhWnO8cw2668WjIzKzGSMVKH8G456bVwmYTKaPzHTcZuLIPEJ487E31NtCQrMqRcT11xzoB6yEP64qnA5zwrc6AXfr2MUhGyGJNliIJqUCoZLPoGGK9jtFB0TV+exLVxuDmjzunc0gQTnC2wMNu4rk0ERgG9YAxgsDVwUti8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770925494; c=relaxed/simple;
	bh=+MKIHCXb8/jLhFqFlCquIMOqSeJp8Sy+E5bS/NYTusw=;
	h=To:Subject:From:Message-Id:Date; b=jdKybQyzrR63P21gZlSZNCLusW0+wcvTEM+71Q64f8iQY0FM9tzK4RKKzWxhDneDFn4EI+2HMhJANaqHhH+dAM01QJx+hiaLTA/yduaNhSst2PQC/cBSSdeUphyfoqaFaVYbTZIlFzypAFhaqTSBO2uFFqaK5+EaNa7/uFB22+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUL2yQBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUL2yQBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E52C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770925493;
	bh=+MKIHCXb8/jLhFqFlCquIMOqSeJp8Sy+E5bS/NYTusw=;
	h=To:Subject:From:Date:From;
	b=UUL2yQBCfgUpYafY/e0jdkKSuBoBVh/K5b9lpVXj3dLh3XvIpERq6sL5OXDGJo80o
	 Et6mbvTgkP6WlBbTkceXJsuT0dt8onQpK0yeZUdX6RUKmB6lgjr8kJs0WuTAibXJhI
	 yruFHPMu9vvB7ayfZ3nLEAATEvJMgMByJLt1XPScgGq4pkOOLTq/Z3qZtvZORNztJC
	 I005FFaKELjMgyFB0F8hfk1X+O8XZiQiv0xSXVmfH5XhGw0hRuEov7o9J4miE3m5C7
	 Ctbez9MjIxdjvAY6JtGva/y2LPjSpn0sAkNr9f0PQDR8qWcyaorV2cgBK6Ar4l1VL/
	 WmLrPC9yacfzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A283DEEA84C
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092549364.24028.2904225317939706409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7bd11a9fdb0e76063989b790b93115ee485fcb9508ed2f16cd336314336c87
Date: Thu, 12 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770925493
