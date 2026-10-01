Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EF9318ED7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790832634; cv=none; b=ST7K+CG2bBHQc7iEYgVKCT0qEUc/ZGr3S7QRfgu70xNMA/KRIgl0npwKQCTdxc8aR1IEHUjNTj5PZBOQOokRS+tj6W1zEKMZvJjSohOen/Xz+1iPIhtlg5izVu6jih9JrPBKnupEJmaIVzy3OfcwcVUfydRyYnayM8KxrjTQo3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790832634; c=relaxed/simple;
	bh=MwBef1lLpsn/KvkAmPCgtqjW4O+z5srTQxnvmlt8BLw=;
	h=To:Subject:From:Message-Id:Date; b=a7OrYvc7Hj/KceUiVCwIGCspBuH3dkyv9qITKz4PhB/0D8kX9rbiEzPI+n21H0DxZnUBfl+48Ol4tNjI/fx/ZRgyoRAuFSjWE7g1zCV9etZKsIHkcDiRgcAJ/CCaHY87iBJpuaj3juxgWgG5XsRErn2pyYG/x8DwHDbSiq2QFBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWT9oG1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWT9oG1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3902C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790832633;
	bh=MwBef1lLpsn/KvkAmPCgtqjW4O+z5srTQxnvmlt8BLw=;
	h=To:Subject:From:Date:From;
	b=KWT9oG1fFO270ds+/QGmisj/JOS/5Agw2F98FvzhJ5ZzYcNIjenNVhyYUMTqj2loQ
	 qO/VcqC/8KwpvEzxIHJw6eLCMOopLAothPYzYZtIT7lGb32JTJP3YrJ9VKg5YfgNm4
	 Bccac1TdPUrv3eWjYOBH8tkDwHr9aEfDgGO0HR5cyX+7QpEwGu86e/b83PEvxDcqWG
	 MOJmeavitI6u74X/5vFmJDgUXiZgdi9uyKcNnIKbF3YTuZzR6OFXYqATBXu9BzARPU
	 Szxz4ST/mIiFG4WGdbZgjPYQXQzcRvEqt5aKS1tUnSPLQ7uUz6h5ArKD1JMB3SwAfI
	 +BR+bmrPMlELg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB816CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083263374.16325.4724882362622545193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8545411ee3e5768130fbca333c18a274724832ba4078e5f48594998f6dd26eb7
Date: Thu, 01 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790832633
