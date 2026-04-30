Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3080940DFDB
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777530454; cv=none; b=JM46gZxbg70cg1igp0x2Joqi4XXFIBBIliTu8XAl7byGPTj/JpxHKBzB33P/d49E/i0HUd96b57B/jsJhmDlU286cDRHhzswyCjwWkyr1hk/qKImHpSMtzecanhxJ6hVMrIElHqxvbsWkINC+PlYjrRy9iDhJV02kuQuPm/5tiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777530454; c=relaxed/simple;
	bh=Gy4AYTlL/goMoQhb99oQu4wgXz8aUckuPiQ6T6pi7JU=;
	h=To:Subject:From:Message-Id:Date; b=TKElRMKEyq9QAgWPZwGz2nJQk/z2ctNVDywIRyU0J3cw6rrS4qrpQ49ol9J7/jtpigncuu4BFBCVGgAC0rQ5M+di7DecWQaFK4jTQULRyYXM8llVsEy3xZQLB5SX1SEiE6E0jCvQWTiPMpUUWTtsynj7cUoj6w1WevuXna9vjtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMm7Wq+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMm7Wq+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB1AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777530453;
	bh=Gy4AYTlL/goMoQhb99oQu4wgXz8aUckuPiQ6T6pi7JU=;
	h=To:Subject:From:Date:From;
	b=vMm7Wq+mVYvU116B8cJ/6ZphMkO0JSGBRpwgx6wEkDj7Huq48vYd50IzIjjCRYUt6
	 Hi/cSRSUA8seVeZBlGxYV3ooEs9nvoc+KtfinoVwV34kqLl/2GZkvws97jixkMN6hv
	 83iEU+So329upHpD+xY5w8NVDlxdoNqh4OJj4Z7MWYIM4+kXLF91zz3F4D5Le7Jbha
	 WYNN+mMpuCdOnowWt+mUMRpg+C4TeryuHipIGUCYrLNKP6Tn9v9qofUMIt93oqGV+I
	 Zou90w6P7gp9eyNzF58tjQMNMb/trlBN/3FRstXz8mAvXXq5D69wSBZu/2ONsXdKx7
	 mg4dKMB0vHStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC868FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753045368.1195.7835667490247868912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1309dad28c2853ad2116c1c7ce880578c49eaaad6f61f1deba3a05a7e9f4f126
Date: Thu, 30 Apr 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777530453
