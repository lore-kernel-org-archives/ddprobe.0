Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5277A352012
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787245234; cv=none; b=ZhwpRL2Jhl8vVzLSg8K4jQfDM9+FIwykOa2w0F6KSFORNHx3xrGJFwE7BW/mVqi8kCt9M4NbwcdQwdWZSV67/ee0YCOo9SA0oyBvl/kEMVbM7xxH2Im4lQI8dHF/l0Qh/MGhvuzDeIrWwuVo/EgsrbZN1adf+1sW0YDJdjWBdT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787245234; c=relaxed/simple;
	bh=H+BEcjP0FovSyX/Z7XaAZyC3gqjWxlv0XCEE6AkWqmo=;
	h=To:Subject:From:Message-Id:Date; b=AQsjkzYLVV+k9oP37dJxxYn9EKVpLSM6W/5wT0sUStML44uxLqXNtGg5uwpH1ydAzrw+FRg8w7uQW80WYpzhTyeikxMiFFlEvphd421UaZns3inTRwGR/nYHxbxoHQXRyd9z6ShaXEKCfPVNtdXbFfWJO3QndTaQUiN9ju0UqhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9azxTVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9azxTVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3ECC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787245233;
	bh=H+BEcjP0FovSyX/Z7XaAZyC3gqjWxlv0XCEE6AkWqmo=;
	h=To:Subject:From:Date:From;
	b=n9azxTVtDS3FPhAZzJqpDA5LEswpcI4sWO9vTflQLT3juoJEC9u6Mt09ehRwiN56U
	 UVpuslyE/Kb9wpCc9JD9CuaBBi0R47cwPAf/naPixIfbFSJg5T/D/lFQsCLka+B48F
	 O6FJbSyWoDgPnaodBWHw7gpcjSWZcZlzPizS6y4eyg9PFFqE93r2c2cxryL3qyB+Xv
	 1tLMGsVwGbhhfMgF0pSEAvbCn4Mwa3YBdtRbe4IgHaE5fqeg5qzrKrYIp84eydvs4Y
	 EhuuUgyk34cLNkEDF9P3KSmXUNUNUIJr5LvVvDCtL1PzDiAsK/sFQZy3DDHfGp4CBG
	 lNjLg+0xoe75A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAEFC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178724523369.20146.2508772886789992632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d664dd638bc05841ff8d88fe758ba464141c4c909c5195d03f2e29bfc90d5227
Date: Thu, 20 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787245233
