Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5881C40D57A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781933794; cv=none; b=GF7GfAZ7e7eGjwmt1uOK5beO8fcXtQr3Us9VP2ZPJTTUtOSeT5h0lRQ6CaCMkxXw6wjoQZKskduB28gL2bYJsJirWXZQ6XcKBw6q3MDJ1EwIKc7gyyNLPF4RmBVJkWn61z0K8y9m3ZiXWpN+BJedWaqWD+G3JBUu8X5J39a3mqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781933794; c=relaxed/simple;
	bh=lXIF/aootVOy7uQStlwczZHG1Seyfl5mizxw0F+LcBc=;
	h=To:Subject:From:Message-Id:Date; b=S9z7Xo0QUVBvQ1NCozZFLLzSFCYDPI4pc+19vg61ppYFjWboO4PrDL+YjzjqvRXy94Awq0475u76Mi3eQpDNxjDvd1Jsuj+gAvezYXV0t6yOsXUcDtV86w/Vzaxhx0WDJp0fwXCxOYgY6Urz64hjgVhMQpaza4KN1MLn3NtT/DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEdfF3X4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEdfF3X4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD398C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781933793;
	bh=lXIF/aootVOy7uQStlwczZHG1Seyfl5mizxw0F+LcBc=;
	h=To:Subject:From:Date:From;
	b=kEdfF3X4rkGmvry/unl2OVrilBLNseBBpWtHdkVqzIbjadPAa5eostgWEsUqxbMYm
	 qfS1dEcM71NvsanERGtY8IiMvUj1lDvrJzPUwSPQjWwlC1ZmkxCNW9Q5O0zO9MVOmM
	 oxkoogyylza6VYQ6LbJAq+nfbF1mtwTRho/tfSWLpkJ9CSutXP7jYzQWhdZIDlqN8L
	 V5JO96GViAMyUmnAyCP6F2bSVlmiS5N+TFZHKxXhX+Tp+IZJ5OIoOWXm6Udcl7/hro
	 PdHebUzdNKRsXmPgAUYkcCafysybje0OA8EC71+0RC6qnpV612hkhATGUJCxyjcvLO
	 e99NpPL+aO3ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B804BCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193379372.23182.2454248316479825184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fd3cf48ac802fc6a280be6aabf0566a17df72c759236ed9262a981f2ca27fed
Date: Sat, 20 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781933793
