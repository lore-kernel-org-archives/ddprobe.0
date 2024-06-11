Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D53F38FA0
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718123903; cv=none; b=GCWv3qaW7bE2u2CnccmW+ZcLiRPmDF2XE4uw3LCZqqGdyA3mt91zrFTZIXBGF+ubcK+nKWKn8YKNu73EKkDbwlTrtMXBdEwoIYc4XD70YNkgc/mh1fYpxvKIrm34oy3e4jli7vEmTOUdZKiBXHZm8K3fC/HQeSV/4Ng2dpIpGA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718123903; c=relaxed/simple;
	bh=q9KvIragV+A9AD9BCLOplx7Q9RxD5qGVDzCGOvk9OS8=;
	h=To:Subject:From:Message-Id:Date; b=f7L4StbloLqyUlOJ5qElAFTRA2Z5kqtcH0JY74TV2xNKRPamTTdPpgvbI9gaiWUAxpHxS7O+8LvDHQ/2ZYSBVhtRI2/9iMZEjls1IYmp0Z8752w43C1+7v/v/9Agf+8JKdixFzI36sBUpK82g632ezvWG5dUesfd6iBLvPqQFNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7Y4BxcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7Y4BxcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8ECC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718123902;
	bh=q9KvIragV+A9AD9BCLOplx7Q9RxD5qGVDzCGOvk9OS8=;
	h=To:Subject:From:Date:From;
	b=r7Y4BxcQyWPFXDkPnyeOeyCBrIC3ZxBMBkREL7gm2uBiKap5qMus5H3q8cR/y1B6b
	 r1LRUyPH3hahymPVcEQP9CauMTIF99UIG617Mmtq21QxtYE6eTi2GmVnFRr40Iw2pO
	 G3OqCA2lr3DglHwH4dcfS+AQw+ut+/uXQQHJErKQHjlg3ALDZx5cqe0A+rWv3DHR3s
	 xQV0MfjVC1XiMDJnhAW9tFqAcjz4qKTAnXgkJjbr9mtYxyE9rbJVXWuQS93qimc/uH
	 YKeJFI62+iDGHk+l7GtTpas3bekzsBxD0sptnrtd6wF0lGY+ZJuJab3stFUULK1DJD
	 yAw+byUSmuIzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5E5C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812390275.30217.12346437733527859732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e8dd2361f9712bbddc4e4d4544da97dadb4a453a1dbe63d1e9b3ea197402582
Date: Tue, 11 Jun 2024 16:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718123902
