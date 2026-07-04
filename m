Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2C3305690
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783145314; cv=none; b=W7vDUKdnOmk1MMxU86A5I/yxCe/UPqcaaZzgEkW49c3kNt3RELVObC2anzHHO6daM2t86TWgyEWp0B2khxKRfuUEox+fHv3s240xLSfptA3SlXh67Lo3keMPM1GLvy3lVDS7Nwn2O1BLwrPL98Pxxyq8d5YvQA9cJvwROJGlMJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783145314; c=relaxed/simple;
	bh=Eejpr2cq9RAkBgDcXbrMoAHzB+dGhx+g/D70FaPBPSs=;
	h=To:Subject:From:Message-Id:Date; b=YCyeb/ChbZAc5m+Pjy801mhU9wCn7WKy2RFc7v00w28WJkGyY4Q4upZKDAH9yzLTTnWzZ4/zHM4bD2GejNEGuf7c1a3CFJLjszhevKJxgMkWBpNqcJ1MzuVtvVImIaU8gZoO2sqW/6zzgyfEIuh0zMtsQCJ/G+mWz7wZAZU4wIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGL9A6oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGL9A6oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECF8C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783145313;
	bh=Eejpr2cq9RAkBgDcXbrMoAHzB+dGhx+g/D70FaPBPSs=;
	h=To:Subject:From:Date:From;
	b=IGL9A6ozgayPiUDfvEnZFJ61dVhnJvYT+9G0Rllsx6EWA1lUAw+lsomxz1RPE4ikg
	 XifOo6cF+3RI64OoadCVTx8ZD+lNry85sNp5aa3YWTASweTdtDLyndpsJbDdXRDI4E
	 gQnxeQijJPt3itdkvKyKndOsj06TwUVrtegCH8LRv3Za8PtjTXNPjuCRdOti3JWmlz
	 yu0wDEYdmnZojeuwlHAE+GjWTJBFduuwp+ZBjV/c/ZJajCQO7S+fX4myJRKLyttp6U
	 iDxIyPisVyziNHJBDRqN1rtfYVCeq7WB5l9D/UIdgb4UL30BY2efp2pz9c1ZxQOkly
	 ObSdbRi0L6y2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFC8C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314531368.19112.14308136927060161646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3e9bc2d4828949e9e37fd21bb1e02db071e999b0771aee72ce41b970bee864
Date: Sat, 04 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783145313
