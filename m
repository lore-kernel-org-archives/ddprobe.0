Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4169217997
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718738963; cv=none; b=ixByFVSx5xk4b4v7sZ2UVa63KcwDI5ux9OsL1hlgx8Pe+rqzKuW5K3tDjY/zEbkNsnH/txsPSfjXPsn+kX41TX+RXeytarF47K8yPp6vNDaXkwEb59Ryl4GpngJIH1Ta+4w9ujcbJozhYUEZk2Jy6JNB0LdZrJeO+3REbOdT1xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718738963; c=relaxed/simple;
	bh=cQT/KYPsrweJ4HdSeSzpE3OPOHWSD9SxCUrzxeqnbno=;
	h=To:Subject:From:Message-Id:Date; b=AqVDGJWHAOCg3waWfWR6Rom2EH3rzgo6oTvaLqOr3UIneukghQ1cQlLYRZZPETX2KI991Rv10YnTTo1frP6Qvy6RoLKbTx7GNVMeSwXM63UX6XrMspS01XZbuHZaqcEFcARcRiEdUYVbWRdru0iU94IENvBJdAutvmHvgLtoSho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1StwE8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1StwE8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3877C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718738962;
	bh=cQT/KYPsrweJ4HdSeSzpE3OPOHWSD9SxCUrzxeqnbno=;
	h=To:Subject:From:Date:From;
	b=K1StwE8zFmXhSvRYZ8nfF9q85tyJ0HZyhU9Kexq+kCos8y3Rvb544eupUfupHCtbJ
	 bHNnQR18fTnxhAOSS9QBMzWJKkqZXgmSH9hCGz5SIQUpSzGkM/lvhNbS+3jYxucMxW
	 RewVuDXDg/KRS/diwjgjO5agLuNP/8EQRW8twHMyI+PSI3qoS9lWvtomoddiZb2t6X
	 J6ojghDEmFxnnVx00UmRgiuZLT7H7n9Zk9YuUsNLXoXN6TydcNKlNO4/2W0HCOcVD/
	 GBYrA5eCPOIkYuTcOasDZZ3xhgOnqjj83SopI1B+WF57GP9Tc+4NdJtNOxoAI3khTp
	 34Er0mVpf2A8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C290EC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 19:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873896276.27738.7653626610666371264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef04a417bbd5477e60b96496e803f9f29644c8379d38b0ae0ba2eda830637f04
Date: Tue, 18 Jun 2024 19:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718738962
