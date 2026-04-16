Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0125F39A066
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776331055; cv=none; b=Oqx5IOhMmayKQ4xKNURtk9Obd2z2rHzQOaoeJ+bM3IoWXVce5JiKSh+tm6LSSDPTGMBs9TQONK4+Bq30FKscZsC1F370nRFqqkYuH6v7JYPhvpvE5W+XOXoDN3lLaCLNUrQFDjQmOJM0mDecZtDfwGGcQUYteQlbVeEB2RR+mCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776331055; c=relaxed/simple;
	bh=F+NdHWOwnCy4Ods2lBRbkefWi+CJkWdpVOjZPnwqyGo=;
	h=To:Subject:From:Message-Id:Date; b=aHXOc7ZDZQUNrVVyushc1IJqG7s/7LJpf8MiagKrKs0QIXT/ubOFq93U5y+/OJ3KKEEHtQl8s86H6nmSnahLsuMfjEPor4z76eltTXBfwHuShwQQl1Xxp0gCV04eXp1UBktmok9I/n3lFllqaSTlEWh+zzauHKvue9y+OYiePqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAnwyJ8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAnwyJ8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0BEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776331053;
	bh=F+NdHWOwnCy4Ods2lBRbkefWi+CJkWdpVOjZPnwqyGo=;
	h=To:Subject:From:Date:From;
	b=gAnwyJ8cC4BsnvcbV9mz8Cv3VxgHpwQ52lZQj36Nei9pIepPtEu0nPSnwb1t9/GYG
	 OO7yacz3lEd088yrFRsoZEWy/Nl1TwAbGnhkNt9Y4/lRNL2n+X9X3tGg7mChraaFse
	 f+ZS69UIlDj1fQMUPAc4W7M5tUYXHOMNmJJS/oDjBoo6PvMRVWtx/Siaj9qofXG+sV
	 9yFYxWkNXU1+AaF1mvdu9gLktjLTR85hrLnK68qcb4qUSR+bWqOD5mytfhuh851i19
	 yIEbxvLTkPekuQa+/zjvZW7o4E5VqvAS84uCAr294qWxFKmRjTcniQ5Z47nROlfsyE
	 9rGdc2WPF80hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAE2F8A149
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633105369.18929.6378142841845661700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f6d35ef47dd399e015217e10d119d1d4f513d2a5871fadae0976a5a5f5a0ff
Date: Thu, 16 Apr 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776331053
