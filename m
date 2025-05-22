Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DF0186295
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747957794; cv=none; b=UeofGLSRPgxOJ8kGjVB+SRvb3hu1qEdxefrqgfmCFISNSLwfek5G6OHmkFXh6rTkzWQF0M0FDt5hbBYobdsFpjBal8cKMLDO9Z4EU1cMsyPUn8MLFGWjye1sSPnEk05BlAlIdXEb3UpunX9IcT2SL0bp23CYX6su7AzDaGiLxW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747957794; c=relaxed/simple;
	bh=M10AcqcCO22HsL2oBP1iOQOzOcdjf2y/fG47YRr5BDc=;
	h=To:Subject:From:Message-Id:Date; b=oXNXLLkTflM03FVMTljgyU9aSmedC6V2qf/LnDVz0cQI4TjDVo/Yn3kaMTGyM8KE/eKZOBPnNodv2o//zhgIFvAW1tZkx2kA7xRH7Ix8gUiLlWGBQBZLSnk9pZu/mgdjHJ9hSoRO9QQE/jRJX9gmG+lJG4QHOfthi4ahbG2UQFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXbczbM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXbczbM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28CAC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747957793;
	bh=M10AcqcCO22HsL2oBP1iOQOzOcdjf2y/fG47YRr5BDc=;
	h=To:Subject:From:Date:From;
	b=LXbczbM/p1sUkTlW+AbKiq/q7uw3s9Huyzoc2MlaImxOOwfVLF2rpvoKIptpWV1mb
	 oqJpAsx0anfchPXL1AiJHNZ8Y/xqY+q/nQojbcMauGw3C117YCOPS/A5leeFBJ2hkl
	 b8uDGhXGigldfLm1n4gp5SEGTMs1zkMcr2YDhCxFt98Gz+HgziU/RlOXeKhdc69lFc
	 PueyH5bv9bBdXGEKKvvnHfZUkbxLd3s4jyjEooOG4m+lRgvYKnDZX2h0MI0XKui8o/
	 DBqKR5D9AXaxhLueAYEBLjxItpB5bmEfRo67/6QcKuUf1OzTDZZV+Xk8vE1c72tBdW
	 PFgpXzHXy+aFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F501C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795779358.12941.6169105910698783274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43e4ebb7780e09cf491ffd77c519f06822e6f43e89544d2b190a37f49b28dd8
Date: Thu, 22 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747957793
