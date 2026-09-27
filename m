Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F0B231842
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790481634; cv=none; b=ClVtovcL0GYQ2f0yn/dkwN2arB4T4+iFZyThIjCX3n9eWgs36QeGehcnGRfLy+OhAuyD44QUSLYYkZ/a3zqO1Aq1o84xSuC1nj7JNAEVN91BpgiDDUiQEeg/nygwb6Q0423W5oZ/zBgp5HQuP7TR576UXNopGV3ECr5ZN6cXw3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790481634; c=relaxed/simple;
	bh=bWYiqi+v7W38J4umBjcAe8P2CwLnV0OUZnYUbnHo8WY=;
	h=To:Subject:From:Message-Id:Date; b=biO+JSbXCrdoXXcMrCzSnpOxIkbuGICEqL1C1SmOZmhYX64BIT//4+TIgCcBLSQPdoMABhJpB/nQmwpkTA6BHcsDdIDbfsRdVV6TSf5NSMe9i5yx0GtuJjFXZhxGHBF5am01r7aw4lOl/7lpJtwRvCiktu7J5BEwbBLRN27jfJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfFCW3zE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfFCW3zE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF4EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790481633;
	bh=bWYiqi+v7W38J4umBjcAe8P2CwLnV0OUZnYUbnHo8WY=;
	h=To:Subject:From:Date:From;
	b=QfFCW3zEsq60QLdw/szqa4qQ7cQtf80hrBKZBuhof71973AVLhN9rEucbibzSaKI6
	 BWFHbaLqZ66dqL/4A0Nb2CqRhc0it629fHTxYicYogzD3igH4HBwCLkN6gpa9Dk2/0
	 I0w3rmQDAbW46pNVSO/wJ0FKFtOdY4zBWRJUUf44IqMXl6RDDHYb9hqqVs11k+I3Ge
	 p38zcjRX7LsMbo1+z0lH8pGTItJSDzUOQ8UTR+DWMQ+OuZ1oATi1Il/9axmNlyArOA
	 4vWEtBvypislDnrL4OvjtIv7W+Y93vkJwAJLBmqNZC/9HVcNtUku/SylT+mk1t5JPM
	 NXW6nH/EuSvKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2FAC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048163368.13911.10364354917318733678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5f3b753d397277a15c03805da5581f1e3694dcab6c86f992d5a5378a135132
Date: Sun, 27 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790481633
