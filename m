Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C9435DA6E
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788238834; cv=none; b=SgEsDAZb1JfD9abOSeOlq6MsYsQxf1BbMleA4862Cxwx+Tr7K7i+E5WeiWlw8jOQCM88iGOIcP9vHys9ho+XieSgxPYXfeUeARQXZy6DJwz8NZb/auNoxudBRAiJM+xKL6Ax5vMddiNtpjbhb03v9v6v65i9+5XjAoJBKw0hYUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788238834; c=relaxed/simple;
	bh=UgAhMbCavJDDQbS2LM5uTFhudt1eyh+h9xMgnfwX694=;
	h=To:Subject:From:Message-Id:Date; b=VagXBtM8FnrKtNVgFOUpCPrX+JXQgiZFXBY6xTLE+jpuFR5FHCL5miD7uo7eJ8b6GK3Lja/YtcpLRwWVfGyMmEVX4LtwRwdhAdCojfeqqQ/FUBioLMrTciTjsX9HRFC8AZEjExzCUKgu8NS1YakKNUSFpiNGEqTwvUSsiBMUTLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLMe9Of7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLMe9Of7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB98C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788238833;
	bh=UgAhMbCavJDDQbS2LM5uTFhudt1eyh+h9xMgnfwX694=;
	h=To:Subject:From:Date:From;
	b=jLMe9Of7Ml5943Phix0sADjtQdQwrrifVwaxmYdKsPrH+gdH8nr3H9UVFr1HvdjQI
	 2prxvvLuX4yhB2ULd+Dg+kl0TKZKiN5VK2+Holn712DMsus/sGgsPPPfjQMMAvaPj+
	 XLuKfgb4HghSb/IrnnHBTj0skk0YVR+6ftSaAeY+9Jj/vGCUPD84+L3Yb8v8wRCjRE
	 qxIOTm/M3d5xTuM0HnLVmiw8QZo07qj9GIeCjSlbxNWtMBOf7Ipvz1jI98YKxTwMl/
	 wUFBp4AiT6dgUdqRB9S58CWP8IaXOH6ELawewiRIomPSBTxhwMRfgVwDE9OhRBDADn
	 thoSZF0plEhAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B6FC61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823883368.10594.7618885823199517061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058bdad8c56f328b85fdd045bb5625c476696c18b343ffe1e2e7d79fe149ae03
Date: Tue, 01 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788238833
