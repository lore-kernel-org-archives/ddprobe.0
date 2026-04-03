Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDA12C11D6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775245534; cv=none; b=P6kc5w/LA3K5/02IthK1wa5Z0s3w/N0yy309ktgYOvQeRS99pGYirdD+A0ICWmOK4QqicWJIRcc2WefNZL+i/k5pk3XYqHG1MFjQLq2hzAp6JNaBnRr45gKRGEH+/oKXFOntdWC/WazBftrMqAsvz43vPnxGWfJHpc5VtgYpdBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775245534; c=relaxed/simple;
	bh=7MxNG3jrknkBF1qW64bqUHFBZX7/PLrZtdJ/cA92gDo=;
	h=To:Subject:From:Message-Id:Date; b=Uvb+0Dv/lamAPRkoDdQwPOJGz1BofGHKtOjMFv/5uuQlkdms0chOVImU5EgwfNmMreeMliV/02tJSfycRpmhf26JaVjTjg4ukCC4XSWBbiNf7deqXtVdfo2tFapTzTfT2UWH0TFR1NfSvhVPMXP/QoFG6clDp39MedmeVpJ3A9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0DbVuuR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0DbVuuR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2552C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775245533;
	bh=7MxNG3jrknkBF1qW64bqUHFBZX7/PLrZtdJ/cA92gDo=;
	h=To:Subject:From:Date:From;
	b=j0DbVuuREba4lXPjLgRN/CdwqnuG1YOuodNFQcuYUR68zS0ByjIJoHgjEFx+2WyKf
	 X1n2+uXKDRBmOICfOqma2/KpndgqNnNgc9hYzmtrxIyM7JWTSCXGhp6A61NtdBk1jb
	 jL8p2fR1pru+FP32FrM7bgZmBtMx7rB6vOlo5BPN6zlmTYAOuvoaEv89lHg0XesLH1
	 O5zxXDnA/4mO5cfqV7AMEUIQldl+ubzxc8VDPKsJKfgJP9jMwAA1CLTzZyPgsgc7b/
	 nWBuZ+Zw/gW1LLCnOOp70NhCLFGk+lWygV2x1lOhrbYgx15aOPf1bKpGwQNxK5slg+
	 vY9F86eh0VHdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B065EE8538E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524553368.2781.4834911787883482327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b502365c81dedbd7300b8019612d4d5b5f61b24595a9d1e9ddbf7369f2016db
Date: Fri, 03 Apr 2026 19:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775245533
