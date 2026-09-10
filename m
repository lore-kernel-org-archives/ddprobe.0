Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0773AF65B
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789025434; cv=none; b=tgdrQuveMxArua79d6lwQv+GKB3C7PQ9pCjiwhUXh+ZpG/uNxM1DSbvzyyNzh4nSN1JFmaqo5ArnyVDIY1fNnWaO1rzJh+bddN4QMAhZJ7yE+EAzyR+oZkGE9QTAdJY/r2x4cDHRhu4lJnV7dnPCRj66zkl6MmLE92+DbMzW2XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789025434; c=relaxed/simple;
	bh=ChZRPXROEyo7nx9ZGKQZPlv9hqS1B3TswhQOGJYu424=;
	h=To:Subject:From:Message-Id:Date; b=urfYQ75RBg7V1lnyoWYnfvWejSeD5dLEBDaf06kagat3+0KNnzFfTA0F2PWWyfSg6kbHiymZclC6RkLp7D03soFWC5MwttbHzXTvDm4CZFs3fs8Mxyvr/Zh5do5KfuEnQ72c+B2dIwHSKLKvAibDrBuLuLKrecdpBsl2Iz4RwLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpYtCpbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpYtCpbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE13C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789025433;
	bh=ChZRPXROEyo7nx9ZGKQZPlv9hqS1B3TswhQOGJYu424=;
	h=To:Subject:From:Date:From;
	b=KpYtCpbkdg1CnqFweDLY/fQO+oxDW/8yS12Je6nc6sW5Bfw6e+nAWLAsKxyFJUA0/
	 qNEJ+U2yQGA8R5UGBckZHE5ctC2i/Cp3987kvCBej4I4uerJ8vMo7ST4JX6RiPFoEA
	 7sCn6EGW3FH8L6y+YKgJ0g3yfXW6/Dq3AJh7ZncWpdeWgwdSv1e379STeCUsdKc10V
	 tBX9GTDKfovY2lUQd/RiiWqjsxvEgF0QBRpbUR8cynfPohCRV28+FM9+1Et+N4ezFh
	 ofA0j/A2CRYrYDnU0MOh3B2upV2WJ8PRpMfbVhCr52/7c87c0icmnegkYnOL8kFK00
	 CiRkSKFGGyg7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC484C79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902543369.17249.12541925814282998771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed5312b4a02ba209559f03571b2a63d5a839eba154259c8ecb7fa6c97750743
Date: Thu, 10 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789025433
