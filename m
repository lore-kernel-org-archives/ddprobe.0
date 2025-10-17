Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CA6211A05
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760726994; cv=none; b=PdzEF8eMBuWTL1P/GsRaFbCVA83vDXShuVcsVNi4sMEaC5h6sLGbt7ozEISf0+Af4yaAGyrRCTG9EI2/COq0N2VCWiFyAuGc9l/KFimuSR4Ebuop46n4MdAM/c6GsbbepLAjpiM7N4pfiXilQhmtb0VCvAx8cyT7YpTXOsyatys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760726994; c=relaxed/simple;
	bh=AG9fygiv3GL5V1ZFgP2qchzIYDdTGUSrRpHbL/rASNY=;
	h=To:Subject:From:Message-Id:Date; b=oQZ7Wtw0U0eVddunbn8MkUs9hzoWNaJ56PrOPho5yu1zdEl/auwYG0IU9JtJTe6NUgkECFyzMB7odT7+WzBNgPMpizezJYB8t6yVtqGsIlGy3lqjiVaDZHCtW+bO4n9NUgHJ2WmT8Nn7rkk3C1aUc6jEvZa1d89B1bs6WLlE8YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsttlXEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsttlXEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D48C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760726993;
	bh=AG9fygiv3GL5V1ZFgP2qchzIYDdTGUSrRpHbL/rASNY=;
	h=To:Subject:From:Date:From;
	b=tsttlXEl/4FJJuxeDVsuEvFs0E/E2793bjF0St6h9k7qp4Gy01S8uFYCZ23ZfMD8Y
	 hqzTQOuBy7aXF+etheAjhQDFQ3mvXET5Ls/aMltOC2BKdZ+xCdepfuiVTWmLr12gno
	 nskyTPH139jSXZXW8VOkYydbg0zk3EIrp3iaqzBRBftsdRNYOI5SvMOhEwpTe74uFK
	 q/zb0f4jj3GbL26UF5mZLFZxgPm1qgENFBvBFpFrtgO6YEfe83KGfG56vsXlsyLjyt
	 J26Eu3d37zAMEArycBdBa82lgVM2dnw6VyqAqB5Rvwml33HPAexquBrGGbX41vJJQb
	 7eefFwEci1veA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DCCCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176072699358.32518.8789611596432239601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acfafb5534fcd9f6bc65f3ca3e71f4a7cadfe64fc7543fa127f230b6c396b6cf
Date: Fri, 17 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760726993
