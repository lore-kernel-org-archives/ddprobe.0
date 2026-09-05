Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F5A39A079
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788647434; cv=none; b=MIUChCQ78HfZgJZXUZ1Iwm/m6av+Sk+7W7EhLzWTnqAB+8+hIXya53ncAdbOgvjXroUyyjiZPawFsO106I70BZ6XYaUI1w64G8I/O7F9536TTlzxeHDP9bF7uh+P/C+m+VbwoB1Jj1kL5CpyfDG0DjrMzUgFfTHZNWW3YX+5oWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788647434; c=relaxed/simple;
	bh=1t7oQD9LXNGy3XaBfquxMd3G4/05j1VeD3HhJcNvGgk=;
	h=To:Subject:From:Message-Id:Date; b=hN5sEgh0QxW8wH+PGgGN0kECDHxA8Geum14kyWWt1AntEYo2yKaQbsSaM3KHJFaFV6sNd465strFJpNinqhNZ2iQaRcjEwkgmUKJ4Wd554T9Awy/KtkRH82F69NyRtq791IypE4AtcvoSddBCNAKtXvxZGlAz/OOhACPPLWocS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ/FgsOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ/FgsOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7EFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788647433;
	bh=1t7oQD9LXNGy3XaBfquxMd3G4/05j1VeD3HhJcNvGgk=;
	h=To:Subject:From:Date:From;
	b=XZ/FgsOCJUJQFevZJx/9sJYb16f3Jr/owLJ6Je83ePCaCmYoAu5pmn1JWsQEkKcPi
	 Y2k9AkKFAN3dqHjGecZtTNBe0RchJeNebVrO2W5j7okfK8xItffvDg4r4QBtDkDT60
	 aaS44Ov0/zShPR+Dqjfog8sAGOO3346RqYO40NvCdelxP5UxXK2rFGlbymWbpSLshY
	 oAE5Rzg1hGqCPnvRNW5jp1lbMI0MElnErSJuXq24H3gXcZWoo+KIBrCqAckTXDDieb
	 5pjjbL7pm2WdK9uhmBwqkAe7YDj808M/JiLRnaV1uJu2zzmNn2Vn/D6y2cubIh0KKG
	 far+lo3qy5+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4D3C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864743368.18577.2569007991250388609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48ca31b6b6a5a68e5a7fd19c7548f36d5de306e5d4376d93ce93f9b70536ca0
Date: Sat, 05 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788647433
