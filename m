Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7513314AE
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784651914; cv=none; b=ChcRiTq/FT8H+RliS3aM0saTzIMd47IgZKD09tbYQ8I024k7WNWMjbkhmoDHq7HqPguZgduEQ/Sbm6c/AKxWBTa93sNPzcKu1aymEY5R1oVSVH0SvHO9tYxFqVAyqUGMt7cpMiw9lL8dMXYFy8rG8FxMm5qo3NRtJdye/CK39Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784651914; c=relaxed/simple;
	bh=JMFeypJNpGd4dIHYmVxr1Zwv+ZbsO2PQwZqMtJd9Iak=;
	h=To:Subject:From:Message-Id:Date; b=ZlbqCzTptclBmqANV95dkgw5yBMoKuk8HT+XFt0H9kFlP6UHF42ZutBaGqVCQWBIsGj7Ssx/52qHrm+mbzsM1qgX1b7YAGv4PqZnukfnzcfFjG75ZY3yWLvOt3o4NfW3brGEdLeGccoKpKkcRf2tCiUGXROc6GxDhf+Zvj37uig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/flQ7mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/flQ7mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4390C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784651913;
	bh=JMFeypJNpGd4dIHYmVxr1Zwv+ZbsO2PQwZqMtJd9Iak=;
	h=To:Subject:From:Date:From;
	b=a/flQ7mqhVN1MQRf4HfOgTVQIVFX8hymzCXu0+s3PmVE+J7GaamcaCZrimuknqsGb
	 fc0NC5Fftq1wrbihs31YGn1biVmUa3lIrqOSE103WjOC+UrIinknLM9oQU0+CXELSZ
	 6kzcyWKkEBWiyAx6Yk4ZDECuWM+3++Zw6RolnPMqz7wL5CHRlI1cwUi9xIIV95sBmM
	 +Roy+ZZuLj0x6UNCK315bjQPQui6t4TJTUKrdvpY/hBxC2uNjkbHw4mU74JNWIIGZ8
	 Jrv01qXTHKDrICBWMSQqH0kLQ0YPdJrYsee1ze6ldU1rc2F9KHrNkfBRWDirbcY7Sx
	 iNKeVSXCEIluQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95CC4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465191368.3504.15615950477080175578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8196f3fdcc9708286b168f4c86497175c6ccb1f9b9a8db18edec750b9b518cf
Date: Tue, 21 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784651913
