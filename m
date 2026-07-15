Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBF02A1B2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784087914; cv=none; b=BlpK6JgKx9l3KkHSm59D2sHpTX1i78m1exdBQMgREXFFy2nNMsASbfon7lh3aEgjLSvvggyVajconCtZqeHuvJKzi9qTq48LHtrVTND9z313tve6q9MKSDOjyoDaoVye+nseIOI6H8JQg3Dg1L6MvJU1HLFL8SwZZp3FhCmXb7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784087914; c=relaxed/simple;
	bh=vUycXIYn0IOt2SdmAx/s6VkxFz/Q0/qoeuLtwp0CuCo=;
	h=To:Subject:From:Message-Id:Date; b=J1IkTcCo5u4ZseZ4VgALTURE/eKGVyf+YUkettnNCY2AXzNRw5wsn52YbpWRVVCfKF1SLqC8uB3ABn09Vnae+jU/S0zW1Be4OIfRZ9DtZWckhDHc+EnDxVkkKe2wjpabx9Q5quhMiBDQx3xYUujYY2wZzdEYCqgMAUGjGdPGe4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5xMMrdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5xMMrdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFDDC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784087913;
	bh=vUycXIYn0IOt2SdmAx/s6VkxFz/Q0/qoeuLtwp0CuCo=;
	h=To:Subject:From:Date:From;
	b=f5xMMrdZp0fWWF88eHv34sd+gwG1/e11AIl/KcPb5rJKBvBUwHmBvA/AfnbT23enw
	 NikYZJBpUA2Ky5vuBjJm2MHSK8vNcG1r06ixrReIUs1grAY60DdS2t1FFx7YdoxfUH
	 +WSnUvAyJoBpSt6ET/nzBFNfATeDe1UDSQFlpZSW3hMiBAzm0tPJtv6H/5Vf6NzJVU
	 vQzSkzKG9G3UwfLQkKtOD64QSjefuUbWrWhM19vqxYmsErFAj74dN8pQ93aQCC24gG
	 6SYc9dLdbOg2+IrUJOqbDeEWeo4ZH2R3MtCDdmaU53wdFx6Jwe9YyhyORGuZ2Mm/0R
	 uNRCvIPBrkRyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DB3C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178408791368.14731.14970225743030424649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f4a602b73582bbe80e250d9c61fb5ff75becb57c43eac645100d43ed2e3d7e
Date: Wed, 15 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784087913
