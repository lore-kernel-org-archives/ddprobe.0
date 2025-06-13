Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6451D619F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749778194; cv=none; b=lEt+gCdNAnBNZSiSLyQHAiUuDiDS+DmEA6ZVLdVezwA/uUeWyXGE0XAmDS1geCzPD0hys0AnogpFx8dzA7iw8/yGA+4UnBu855bShKht4PfHw3zFEmt489aTo86b8nZ2dCuBarhzpOmSMprC2GlxidjOq1+IHJ1vwMOrb8TSkcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749778194; c=relaxed/simple;
	bh=2yQe/MF2j38JO1pWZ5fyWQqfJDUec/jb/8lspNpPnfs=;
	h=To:Subject:From:Message-Id:Date; b=EKAE5dZhwNV6jh5tf3iq6ajWis1qRKctiyQt3hOTYqBHeRj5EYIFaS++B/jA6dCltDHDtK90D9vy+XQD8npjg9XCBVJGgFrBKUJ6Fwh1bNVS2vMrJRpchtVkRzD7MWAT3tHPrV0vWPuiPlAbclf/DYXd7d9MEspprAX0m0xnOfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf27b3O8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf27b3O8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF5C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749778193;
	bh=2yQe/MF2j38JO1pWZ5fyWQqfJDUec/jb/8lspNpPnfs=;
	h=To:Subject:From:Date:From;
	b=Cf27b3O8VZPyC8RSqJAqnr33CprZFL9QWiDIfnAXfke7CfF+9cAXEipvjI7RwRhAt
	 uN8Aa7d3xHsV1ac5O97Mk3gUYH+O3EgMUhrBjmXHGQbGjOhVny7hP0eIrRoDaaCeqA
	 E4KvuPO8QQ+agMgEsU9NM6XWudsuDKKbElOcIXDWqvK8YxDXPnxH9y2yh9m5p3XzE+
	 KNlh4wEdvbGWhJN3fb3juS6wz9mwC8pIxiUYEnX547KddiNjRV7F3J+YnjWCZA+5SN
	 IXTu/HMXZs0cJ9WAdMmxrB4nNkJkae2mJELKc7Wk6FUgwCiJRMcaPBwSIBHQ3BBkaL
	 NttfgVYXJDoIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91102C61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977819358.25729.9600277625699774449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f829347337a69efe0505cf0893044e54057f57c35bd58cf7284c622c7671b73f
Date: Fri, 13 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749778193
