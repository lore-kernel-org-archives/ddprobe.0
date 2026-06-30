Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F0C3E1204
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782812314; cv=none; b=bduGCUe7sHYVRLkmkvGVOX+J96X5WcH1gPbJwmeokfuoZuDEYdh44bT3v9w53gMeWXSGX/krkqhwOkiNA3Yp4YMg87RXnkX13ZV9ETTQi2uo/sKHju7KT6akHTyBuTfzX/Wubw76O+ZNKPdL3YujNhDxgMokcPGI+M79uLQVAI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782812314; c=relaxed/simple;
	bh=fCqjCyO9wqjPAqLqfiZ4wA0orpd1yB3Ti+qpuKUl/kw=;
	h=To:Subject:From:Message-Id:Date; b=Pc9PSCAnvyvahskkulrKvLAmKwoQFcxaR/TDYnTwX4qI+qmkvwwB56aoYlxKgNGuCLV8AF3wxVAWycqDFZCAyXtUjdQmN7ITJbO03P8dqZxf4rMO70jSqOFrLMMnxK7yttcO1M3eOlIU0Q7A3d199eZHckfJDzMJVJHnq5Pjknc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGLkOPJA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGLkOPJA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3456C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782812313;
	bh=fCqjCyO9wqjPAqLqfiZ4wA0orpd1yB3Ti+qpuKUl/kw=;
	h=To:Subject:From:Date:From;
	b=PGLkOPJAGXyBLJm2v3boOLqeGxV7NRIrJWiVckWMZY2TFaaYi0aoKg1J4NWBbEQIo
	 GQyz0B6D1in7Z1PmSPbD/j1DHMHihuVBLcGRtN1sHgBcSSnGMX1KEvop5VGe5UMj7x
	 Xh9opN2yukmgJ+KqWKtX64xC6s2PSwLXNYhmM0VUqypIHXMJyhEo72CE3zifcio4Ar
	 EIPBYj9tcU6AyBShGLwpVR/FY7rH71aSJ5WrT8PVAZyIp400PvjuSQuhXsfbUPiQM/
	 GW9DR/3dZwg+kJtOoaMYeZX2blueW1ZfZ2BTPWCpbYFQY8lEYMcQlYKNvbK/zfI0r5
	 zNAADVMphAsWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B01C43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281231368.25276.15555850697513573921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05af00e9599af93915d432fa0cfd21bfcbec6e1884eedbd6877b525918f5e1b8
Date: Tue, 30 Jun 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782812313
