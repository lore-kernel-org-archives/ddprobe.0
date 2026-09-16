Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EF23A4F35
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789580435; cv=none; b=r8QBPv05T3sbrIG2vIIFkhHK/QBAlmDzXploQ/ph0c2A0oGkTBoQCuNIUHWL3X7EoSl30sCXcZk2Ce9D9Zuhc+dvC8XgzFn1tZkv9iOG7UAMdD83/cix4XBpm+o2JN3PwLVLoTL4GioVUcU5fGQ9y2hJiQPvf/AXLOCywqIeRCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789580435; c=relaxed/simple;
	bh=N/Xb2ggPVhR1ZUY5RNPDBUB3EtV2SUPPbRqwap3lHUw=;
	h=To:Subject:From:Message-Id:Date; b=MLILIVcvB0ASosA8AHCRMb8izOCLgLFgUDCCsAB/VwAIMuord5CYWuMKq14L5RCnuoSOjmUtWlXXHktuGzbbVAqdSdCesCeAbzx5NgiXstg5ooGpGHQsdJszssDj5T10WLTKWViOkgY/lrFbGu/0d1X80dVRg30xksxjm5K9C8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBVPvJuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBVPvJuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE06FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789580433;
	bh=N/Xb2ggPVhR1ZUY5RNPDBUB3EtV2SUPPbRqwap3lHUw=;
	h=To:Subject:From:Date:From;
	b=aBVPvJuFZy8vNGUtt44ThZAQp64Evw6P943FMZyWxGYopy2n1Vm89vR1+bNKDTRtk
	 Ssal8oyCib2RcWh/KPUEip9bshrKUa9oUjxcGE+JmOqWnkPPy7ek3S7wSs/kIljjYa
	 CBladXW3YAYxUo7FyPWUkH+n8fvR4ZpWWBOMnqT+ddhMuZ6TGeyH+eVli20H9Wxrxi
	 IKMcOsHhRDwKvhwxMhyzoixuYfp77s9Ivt/5QkitQlgsjPA7zmL8rm1EXc6OH28Aj7
	 jmuyoMek55pzKdjSoD+i2pyf474YviPd0NvTk6/wTeUaLfZCflpdNQWQ1RkGX4WOrx
	 jiR7NAIuDayfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33BAC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958043372.28545.1407320693086555062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee882a674d0f660f2ca0569d56b81c61966ffe993e6decdda51fd08c116e8875
Date: Wed, 16 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789580433
