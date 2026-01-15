Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0164C2D3EC1
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768463034; cv=none; b=C/SWRFxjvJiR03VGTi+1SeXfMgZn8tbGPCFlWGiZ1frpwYGkYQ3+2yCqgw6cxzyo8COxXDU4y4qp5Nrbzk+e6a8oNfSUZCV5efN5T/20VLu7edeuNQ8pWN8WnEPGTFy4K/+TtTQMhpC+iNUUwp5V2qQaKDqalJRpzJ1MznnuqBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768463034; c=relaxed/simple;
	bh=SpmtmCPx87Q7j2F0Jkem2iWWzQ/S6zboOeRc6Hp7VWs=;
	h=To:Subject:From:Message-Id:Date; b=DWFj6q6P52aHLtLGUuA7stJqShLf6EgrNXsdd6rwOq6JXN/3pZSb9wIFQqmTfVHujtPVOzzGJwlaE+PUgHf4zVHUuoUNoWNDCgiMMLUr0RCNWAmbRsew1iVMZWmOM1rD9OsI3LFGIB5QAX882T3JT+C5N2SLdkxGJjvQbVGhd3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeSpAUzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeSpAUzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B82C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768463033;
	bh=SpmtmCPx87Q7j2F0Jkem2iWWzQ/S6zboOeRc6Hp7VWs=;
	h=To:Subject:From:Date:From;
	b=FeSpAUzEo3RfG3CDCV9t51AvXzUIGEfOvuQW8mF79vqpvDBLwQFRGRGnEhPOfN419
	 xfuCa/hGfQOxnuyUhdnoDFjmrunTUGW7ONuc0P6fA/2UPpIxYO6T9dHv5Vi4s2deMA
	 xJ3aWfAEQbVC9LXCWF2APUJ5eGDw/xkdUlJ8vCy4JAIppnZSUM/Jo4Ah/2ZmLjmJC0
	 hVeYfoVOWePKWLa6HhZdzFylnSFpuHbmTTSls25k1oKzOA30nLwWNDjie04hhUdZOD
	 +YiwlZXz/3ajNiX7iHQLlCiaD7o2F+De0x7PbpZ5Q6a61cDxPMkye2Z91DBVu9qYIU
	 RasAhlrD9E+XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D5D3CCBD
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846303357.20062.5828494683131471181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfe55494d14e61401bb19142ec395ee0437b1f19c6aacf140fa6a0bd76626bb
Date: Thu, 15 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768463033
