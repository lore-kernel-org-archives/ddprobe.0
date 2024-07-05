Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B1A16EBF3
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 17:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720199123; cv=none; b=JJfPazgPC39k9UEAIYPhBjzWTd7L4M3Biln/lg0tIzawMs2oloAbsuiehKEKFxrXrZ9Idm8Kj44ksOKAK4u8KfUadQIpLJRqC7N/tBFtcgwRnH0sU/5jD0ryIh4AIt+5k2N/hp/LPW+XvJND1xpf/n5ksUrSGfaoWGkhvIB+eOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720199123; c=relaxed/simple;
	bh=WZa1fQeca4poQB7E6S1/l8PiZKhkff9ipRLWaiuVirA=;
	h=To:Subject:From:Message-Id:Date; b=h8xzlncQfUCN+NT7xhVEjSVRl8owARmrpSfaiOxEEeO6pvlBsGAVmrt20z9yii4+5/bzY0ZoyTLhl2cAdO+NbgdizDuVbBVjYUL56CLhgkHXpz2uXFp4NwYHSl/JYQigX9m8R3J0MLpaz4KPDlOBU87fR/mKRGE50MV4HbA+KrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeZEsKqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeZEsKqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC65EC4AF07
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 17:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720199122;
	bh=WZa1fQeca4poQB7E6S1/l8PiZKhkff9ipRLWaiuVirA=;
	h=To:Subject:From:Date:From;
	b=BeZEsKqfXgp2KGYfBsPyRlbC8LKd0mrvDs4/Pe3OmtwAMytxUvJgNjWjNdSohVHrN
	 ovekfe87mlecgSDIXEfRks+xnhpnclH5MNupVbt02HUpbwxzbLXd6OUWAjjhlEj9hs
	 hvVCDBAb/9WTUp5ZBE/+RxE48MXRGFpzFBi8EcJkvGZasYRXwjOg2xY6RQYfBYjITt
	 NFFPU7VQOCsdrfzcbkixVsOCH5g+LIby0iDdyo8loKAIu5bbXjB5Ljo2rOTTdF3ja2
	 eRSYn4FcpFADCr707tsWwggXxfOYQYkUyYlgHQGpgJlLB7iySlrRvVB0IduoKN41KG
	 k9RVdH7vmXqMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB091C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 17:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172019912275.7037.14900543571751725032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53fbc46ad63df2c3ca0ff7636cb8262f6dd803f80a19f01178674e44f791141
Date: Fri, 05 Jul 2024 17:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720199122
