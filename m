Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A6B8BE7
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743308995; cv=none; b=qufRsyS9EHvAeCKwKZ/YXEmINlTzusmZ57Z7X9DyQKdK1wBqMdkHco+NmedqPLpe+8gjwm/LGgwphU0IUlQr3TS5hx6c1wDzzxI0p4vxTRyM6PaUDGmpfq+3JMPxiDy7CexeVp4llpy6jTIIKsROt72IVUvXmnwPxMGqVoFmUFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743308995; c=relaxed/simple;
	bh=bddqmNCz4qQbo9Ls4OEcntjv8MulddRuF4Tcm/PbPeM=;
	h=To:Subject:From:Message-Id:Date; b=nEZB0/4aboMLiVCyViU/XaQMoJ7QVfZh5dYLLX60RisrwdzMrASqvBIvXAwLnfScSxzHIK/ZPBxTBJH371UaLR4Ydm4RsNK7X/7BlNXJl5tS62C5Be8PxDNrxyLbVhoKG1URTtTYUV4lJ2QOZ+3TyqubxBTomWlu7SEhiDhQxOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjjXZ6YW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjjXZ6YW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4780C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743308993;
	bh=bddqmNCz4qQbo9Ls4OEcntjv8MulddRuF4Tcm/PbPeM=;
	h=To:Subject:From:Date:From;
	b=jjjXZ6YWPtlFQQFDoFTDM9NhfYxxj8zvw6V6M5W2ZdkiTiWsD8zE2baNDuBJbFubb
	 A4+vWDJmxZcNvzlECcMr0jrv0+nDDGz3fCMyeux8AYeDPI8IiAv3VbmTtupU1uHAdl
	 HNoDcA+6rB3b9OmMnOWmNwGZfWUpEx/6b62A6CrChL/COocEqwxLntdYWfzuDev0yc
	 +cV8Zm/AsTJiIk/KU5wT8/klWZld6uL47RsQ1FHJIjfLzJqytW4W2MCCpotkAVkE8d
	 zMD6DvdOEBRGS1HJNW/QrFckRwexdUHBSEvOsw56kfmFktRXWQ2L22I76oLvLxef92
	 Q86AlOWq9JhEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94696C3600B
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330899359.4006.13921701114324958190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64073e483673e848e8694da8f0439ef57137776ac2057317b1573191386f605
Date: Sun, 30 Mar 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743308993
