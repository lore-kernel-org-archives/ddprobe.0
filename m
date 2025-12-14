Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A851B0439
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765692774; cv=none; b=C2AjyjITG0+2SqwQAIVAp60KPLnt//PzjEW37w4aVtMqd4LXqMDABMkXTie1Q5GPE86H2iZ+b7h/iObQAh9h9iKl1npzXO45Pvp4KpuuVgGtBTe2K/NAa7TBADbeOM8hTc6IJRfstWZS4LWoS30si//ZRUqkfjTleAT8d0twRn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765692774; c=relaxed/simple;
	bh=WmLQQp0S16K5Fl0jukQHzTgZSrhRU6IeneHh0gpcrHo=;
	h=To:Subject:From:Message-Id:Date; b=XFpcfpX7/VGmIim9Se1Qqo2yo31RU9MjfO0AAcQ3BzPIMRQpKyOzYrX45WafPxi8Z3PMgF9rZQJuqUwC1E/ymiXhngTet++awH9jU3HL25ynl+qARbL37zgq1yz0qtHVkNmrUz3/r7zHDhXn9mEGPtX24X23m8b9RnWl6dBXr5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVK9Cfen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVK9Cfen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81AFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765692773;
	bh=WmLQQp0S16K5Fl0jukQHzTgZSrhRU6IeneHh0gpcrHo=;
	h=To:Subject:From:Date:From;
	b=EVK9CfenN4fOt+Y/QV9OTiupDxdLns59GaxH5nqID2m91hWpGVRiS4xcze39/397O
	 iap76MN0/kF01ImeVFurl9935umnow1pTFh+D99r1APSWx2oqi8G9kKtYmbVEhk8rP
	 gdzmxhQATPhkft7QeQxGGNNBFE/Oldz1Y7JBWrZ6QUC8ir3ur+9oBwDL7W5xqpnKPg
	 8Su1vIe5SF6p+SD2PUOTSUlnNA7yHh+O9EBAUddUbkfbg1fy1NVw3AG+yp4aXHRMj8
	 2OVSq7Zd2oSnKHxBsmaXpy6TYfvg40/yPaiwqxP2LoWI38H1i2s5V1+kIdo4Mn4orU
	 CjVuvVWYl/v5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AFFCFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569277363.6296.13752061613842546617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db24ae0ebb027b187463df97969632664f74cf694176fbf67b72febbda31b962
Date: Sun, 14 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765692773
