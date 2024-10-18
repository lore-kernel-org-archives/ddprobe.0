Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CD820400F
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729277754; cv=none; b=K3k/ZIK9nKRykDfqNgDYhbvoZmOCIdkEyK3ciXI9ina4OtTcZTfKKuDcVEcSe5eTgKlOua8ji6/n0bXyghTDIlbNwrEruFawPQSr6TJ7dapZw8pe29jA6oCq9TJxBMzUegViMfpXkZwZva0eGlg1vXJcr9xhye4SE0FkauDEOfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729277754; c=relaxed/simple;
	bh=s2e+b80SaZuycpoGQQWy75JnYKMyevwC2v3jC2QgBnk=;
	h=To:Subject:From:Message-Id:Date; b=OVsGTGkBUARPWAkaLPd3ZUyHiWkMcpmUQrZvQ9E8ECaUbkfgFV3WLRagEj36hHQ+KAqLB9tB6gHpXYpxgmzqWUpqAEiKxFtcBpqXZTo5r5iU+h8YlQE6QfBevlcNogRVRRf5T/B60bybjy3yRjM4l81cT/MEhpWoL8PzgJOBjwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6qgNTkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6qgNTkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C90C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729277753;
	bh=s2e+b80SaZuycpoGQQWy75JnYKMyevwC2v3jC2QgBnk=;
	h=To:Subject:From:Date:From;
	b=L6qgNTkHqZ7gEMXXa2DsZvx1Z1mJ6/au6Eet1AEMQisA6ThVJBTQLmgGm4VJcimO1
	 51dt8ppTLoNtaGD87erWjB1Y3qRQ0EW9ArSyVHGvqbSm91wNo9XSO6LYXlpUJFBKQ7
	 vVTZQ3yNUV7XDK0N8rC2+SsmnLiFdjhA9uq9Zb4vohvUcvDiXGLJPyQuWXliTPRdGr
	 8xFsHsSjwxYWWVcJmBPe7cUznjEzde4Lf9wsdYdFEAQYqq8S0w74Q6vP2UzdyjMGm+
	 LF4yICpvqX6DkBq2xPFOupg3/bgXGUpiMQnGi9mXvW2F9aivga5UxFKEypb2IbKQ1C
	 LG/BDArEZNyzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92334D3DEA9
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172927775358.27903.17444283197503409947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e621f2c028997ea3553a5d4ad118dcc51c882bf6ed2f1664cd2c39a23d105104
Date: Fri, 18 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729277753
