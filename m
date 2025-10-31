Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0253016EC
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761903594; cv=none; b=bPS3n5rlcrhf+7Nh+FnHu3xVfOFHYrPrTdvj9hd/4u0dhMe0fXZ6QQaoAvoqk4SbGxhOQkSIjm4vq4WsD+mIIuSV9SQgZ0j4XGajdAbgeK8kSiho/m48eZsMtmX9QB6Z/CF0+CuGtPz/h3K3lsDpY/VZg/r8d+ZNPPPDwMGbB24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761903594; c=relaxed/simple;
	bh=oQ1unpUYTCp/Y7rF84qwbrdPsmAeU5Zxy+bgm5mp5qQ=;
	h=To:Subject:From:Message-Id:Date; b=Q5oOAShxTP4deeF9UPCoXp04Y50GM3u7rL0UbQvPX1PArCf3ZszQUJiusV1IPfuQN6vhk3z6ti7tbl1GX2WGxU2fS3xjn5K6BKbHmRrYS153KQ5u67Kz683T85aP43vj6UnUbdCxtUtP2YRsUUpXJFVJivutx4MzV2dC/zqGEUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XffEKfCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XffEKfCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F538C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761903593;
	bh=oQ1unpUYTCp/Y7rF84qwbrdPsmAeU5Zxy+bgm5mp5qQ=;
	h=To:Subject:From:Date:From;
	b=XffEKfCAtU6/QGGFnoQTdpZFQYuVdAfH40YULGQ9MGJhF5xGxdCd/qrJlw78v5oJW
	 WFY9QSihPfUm1T3hNqut39OFz/y4YOKRCL8tkfn+8hEh6KWNkOGAw55IjuQUFUwUYz
	 YUbjMdtk8V8NYB3Gy4dn9VkGla6oQ0FlTCpwNfQrF7381zA5F4tvMw7Nv2nAuK6POY
	 sWXjSk5QZ14BMFXdGJTSin+MCH8n3cfiMmzl7v6KwP0Q+Hzi1EJICikqzxCeADt3l9
	 GTvpOESTCmkISWiU0xMFqUtINBwBxXIiXPu773dqTJ7y6bEW1s7YQ5ZlUPkENtA1tR
	 cCUpnNg8cFsXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90519CCF9FF
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176190359358.24077.8578807261286547423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5efb56598ab5e4abe3b31632920a62e848739a4301a7487a0fa70792b70dd4a
Date: Fri, 31 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761903593
