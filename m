Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2960826B752
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749801594; cv=none; b=VNw6EaxCbtIdY7tGmzaUzHLCSWePfpaNyuCyIc9c8Zhd7MvgRSr3zLKdlKmr8sAwV0davfrfv09y4pj4KABLPjpBMn6QyUZj/vmZXjgSyYAHynfoWOERe45aTY6QijkVXdiFaJixdDWFCo28Wze1/6KnYsfdWCaxzap+YPmYImM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749801594; c=relaxed/simple;
	bh=csx8gcKvDUOMlABmOJvkdLpJfPe34L4iQYAYJyAvv7Q=;
	h=To:Subject:From:Message-Id:Date; b=N3tY0p3ZcCfvklhsL7/TLKqjXIdPRjL66by/4D/YPIzffzBKx5wMV+tlu33SSdjKnyzK1aGCDJSQUJs5H/c72OX9jq4S9xYfWGtRMOt+8JGx8UiIGpKZWuxqiI2OxI7MTWkvuzyZODczoeim25uXmpGsoxAZ5H5v8arkcFDQS8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBOw6iyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBOw6iyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCECC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749801593;
	bh=csx8gcKvDUOMlABmOJvkdLpJfPe34L4iQYAYJyAvv7Q=;
	h=To:Subject:From:Date:From;
	b=iBOw6iyzbAr2RqhKv1ZPYmPBjc3Pwz7RoisBPEoMhgHx/6SkFu+DNnbtArxvgGO95
	 s21WLAgRKm9O5pMIrK2OtvuzM3ld5k8JDRQIZP2T7nmAp/ZMkJnDOl5WMv4gtwq0Lp
	 0QRdjd1ua//ZnOyL6TMF64HlaKu3pe3Lk6I6Yd332H3lUdL7PiZT5o4+G4kZpjp1c+
	 RK3JBQXbkew2vc+yQDeeUSh5tujpOvSU5Hk5uRc2d0O4cQI0BtZ1FPvlsZhhEY8aXO
	 08GHNwV5PxyY0kt5beuHLBCLNlOXRGr7piroxYzG4FoBf8wGh3OoR2JrzyoRSi90Tb
	 hBktlfioKSrAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED20C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980159357.31849.2207535557455739577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e824ee5bd0ce2c4f1985ad15ec8d9cc0edcb62586ffb1942f820472045b6cba
Date: Fri, 13 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749801593
