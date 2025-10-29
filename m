Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE1232572E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761751794; cv=none; b=tm/h5hZO1RluxCLVPZcuzs27p5V+N6YeokDr/nHbIpLSKu9QLQjkmW1j3Ju9sRt5mpysIaMRKSQzyv/Vk6jDJobjL8RNAGDcEzxbYQwmxSthY+lAhYoecIYLLuJvcUjxA/ODcvjbcEfiovAsBMR3Z/GP1WSFGQdZItVZo0g2q0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761751794; c=relaxed/simple;
	bh=cnMb2xxGB8rKhMLcj9Ehr58ztwd+m5H5brnjY17jc+k=;
	h=To:Subject:From:Message-Id:Date; b=XNV5fCUxt3L0dRH+5FkIv+G8dxubMsvLn0RUnJRBybDHaAwMqU2ST28qfJa8dyp7cKJ0G3YjbAkMm/dmnL3Seajfd0w+cYaoTTr92j4hx4puJN1Gubwlgg5/RxlyYLskFrV8xNgn6MCi2ljuVNcMe4wqUMgC/0EatBtCoUvfKxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6q9gq+7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6q9gq+7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF12C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761751793;
	bh=cnMb2xxGB8rKhMLcj9Ehr58ztwd+m5H5brnjY17jc+k=;
	h=To:Subject:From:Date:From;
	b=p6q9gq+7b18iGPkjl6vV5xFAkBXSU4JxeEHUphPTXOMSWcvTkJgl1LE0str6wQ3B9
	 hrkDD3niRUbCCQGIWTIpe94YVfOJKM9zyJFYcYiMlrcqL+fHr8lDryAKgxeaxlgDB/
	 Yg2HvGm1f5jqqCsuOne6PRjydVsey45u+jcpoLBwg7KHwEaeOIlHNWttpkqjraLmec
	 SmnSfIoYf+eB68lje2nhuBYll0Q5ZFIpT1hluwr/Ub6Hy6UK8e86wy41tlqb4pvt6v
	 piMBunzVD1zSQl3G4Dl6p3lrWYWhscAPU8oVeO3RWwsot5z4cutfEm7ObSppjFu725
	 msCXzH8chaMmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC588CCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175179368.9055.10634736868284790245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5515d1705d7be68eeb32e9c28c889d5953d732f7db7069fe176c262ea579b7bc
Date: Wed, 29 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761751793
