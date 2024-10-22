Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C1317C98
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729626954; cv=none; b=qYrGFEf5IodVNPksdd9GQ5qtXYAN1OB5zG9X03oT21cnto+xW1Fh6TCokRzgNV6rj8rcszv+KrkXIia36scjas3OogImIIbFRH9lRel59iO++aMDC/7odPZU1sKWzy0RqKIMeOI8UHf64voJF4RzgiWsMCsGvN8xgHA0jvp2Evs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729626954; c=relaxed/simple;
	bh=pRqJpLAJ8wuE5CSlitFBr+2WtRQH6aYxMsTFc8FD34M=;
	h=To:Subject:From:Message-Id:Date; b=KV6Bf+/4ynFHRvg2thCTeMHsm4hkRuquUKcy+h11Nt6T+WzqxpDlzEffzLf5zyxIZWbxCsqYvlOPY0z1HAjhDzmpKujCug0N7wail4EOgIxtoQgDzuPsYIHUz/x6nC94fOrE3RB6ZxgrtY1mbPuIUUZTAv7WVm057RFYUXsGdek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQiGe/l0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQiGe/l0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06D2C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729626953;
	bh=pRqJpLAJ8wuE5CSlitFBr+2WtRQH6aYxMsTFc8FD34M=;
	h=To:Subject:From:Date:From;
	b=RQiGe/l0DxM3MIdtPJN4eYZ+PMhHXCKvTzmy9fO7JHJes43VsIVlVd/eD88wV3+G9
	 60zUKc8JkkOF2pZZlStZ6h8aA/V4PIPb1FVhYuZbp9IlUbj7FD0ozyhYCFNmoAdzby
	 uEAasM67aC0TyIx2+ioDlB5oiv3lQ/Wgm+fstiE5C/yORMCYyxx1zp1vfJJBZt5BlQ
	 Egl0F1pJt7YutJobmeCyN//avz0x3oWjRa7K9YNqxaDLU0y9zHhpAC84BZ7NEDklvZ
	 oJIzj29SMs0wxC/MLyqvb4x7BijAmR01PG31IJht9/uj8cPJznPBCeWQFYBudNIpl1
	 H7LAE+ybdGlLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C8ECDD0E1
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172962695358.27604.15971603774111883703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85b9ffaacd2d01bc61136d7d7550f18164f61231fe96ca0b0de677ca54a3028e
Date: Tue, 22 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729626953
