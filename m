Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7C3132122
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726496754; cv=none; b=LhQLAytDJ9/QNpAryVPTeg9hHqucUSvj4NhYlmIsn0yKlAWuyszpstar6yivsoYnny6gNutJUzCBfJWwDR6adheDcL/YWqSD5fOsPDf5xplC8ckJjSgZKpAMXQauXcaunvakpxmbAo4tGKI4ZxZ1crn4v8Mp36QS0Mm/zDPtugI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726496754; c=relaxed/simple;
	bh=smycr7RiDIBNVI3Hmrku7yrTxrgrkk7EcwDObMHHtrw=;
	h=To:Subject:From:Message-Id:Date; b=V96ahOS91HRM2FeM/V6Tj2VtsudSlEuXfAjXTQCcRjaPLLTKuLGcPPXYiPQoKJNMTRIzsD7FmRpjJ8UWNsFLClRZwW6wo4HlHzVaS//HRo4Xuabg49HRFbjcmo1kRROaeiia9sTbDVPGUTUBTIhKXXuT+VaUS3w1TZyFoUX7Fgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyBg7zFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyBg7zFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5C1C4CECC
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726496753;
	bh=smycr7RiDIBNVI3Hmrku7yrTxrgrkk7EcwDObMHHtrw=;
	h=To:Subject:From:Date:From;
	b=gyBg7zFWQxiKgbv/hempz42qigSfmWokKUMbO9J/TZlO6vzbTxg4O/JeSK2CxYkmy
	 riknkUGmqoBGhgny5+ZgmMTsEc9Qawj6j6dJOKlFceoxNvOp49uhISr4Gt8Hp89t+P
	 4+ESQuGJTBv1nyK/UTc/VBeMG3WWtSR23lthPV4GyqaY7pNQd7M/JBWojTv3x8+7hS
	 Chdu/s12qhB38FHFCSRglRef5n/AEvXzW2iwqJbnp8CGV0IW/p9CaCWfB6cjmIAe8M
	 FecCsQmRA//Rq8UpweIwF+c8C4kGX0Rz+xsd0InmmsG8NTar3y27WCvNWXnBl1evnE
	 IE/tKKkdvmOIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDFEC3ABA2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172649675359.30289.9283415524346869274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c62f0bcf07f3c70fabe4cc055e843cdb26544f49459cd7adf4d8f8d8c8ea88a
Date: Mon, 16 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726496753
