Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527CE184F
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743336594; cv=none; b=Yoz87+TVuYrpdqnWzZbNR8rUaWJLqSHBW8eGdXUsReQMHEcfMkJnGNqASYlmfFKRBrwLxQLYdJ1i6tUIwLcEKMCmhKHjMw9l7fwSzTn1MYJVikBhgCtejjfKR0kropIXVXoOSVeGeR4z1hq/FqPh3Cw8pkRmQKDfHAfgRrNLAkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743336594; c=relaxed/simple;
	bh=XJmSsMEC2EcxiR7FeR6e5xA1iK7whdGWCttgYxYydno=;
	h=To:Subject:From:Message-Id:Date; b=s0qcNorurXFNxeoVp85bJkir+ib33ooYEHkxCUjxLKuQr9230vLNegrR+PIGffEkCv1MVlXThgmwsQpDewncJjs6Bd81RxuQzcqC/j4XGXYNno4+J9mM1oPYR6qKcOU+sdGO9J8SCAODMFXxEiG6dYcfk3r9ZWkFTjTUVrSHmR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JknR9fBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JknR9fBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF63EC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743336593;
	bh=XJmSsMEC2EcxiR7FeR6e5xA1iK7whdGWCttgYxYydno=;
	h=To:Subject:From:Date:From;
	b=JknR9fBDclL7sZCnbGzT5GhaulBJP1M7KemrulnhiWRnHwZHqyi7zQ50x4P/xfpnf
	 LTVqQL0QqtSQcf8sH9w6a5lUkFk9q/q1zTcXx//XTCjMMwugTl+wEy5i+3Jxo+j8Ej
	 9BUV/9cpKFTo5EHjNVRfG0+Nd0VxqIcdqTALsQ7IAupX7vYMdtfn4XuZuDozf8ZxPU
	 8FtLeRzPbnydHjFvKaGz4mV+K8nQxlpYDw9KMGvBWpXYzL/9HGrFHIYkMor11x/r3Z
	 CMOYFvewo+MD8VWkVissJdeJ/VRDKolb6tJ3m0SQvSeQ9Xfn+YCxYGG/WDvpz+dk46
	 QvrIrxcD88urQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66BDC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333659363.9979.12925829239358350783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3375c29a8788a7ecd26e16374dc6b6c80b567b843c74be15e8bd2c9affcf333d
Date: Sun, 30 Mar 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743336593
