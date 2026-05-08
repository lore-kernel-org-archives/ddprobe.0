Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF2E34FF76
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778219855; cv=none; b=rWqlbXtkrG2+2d2Oa9jHv5hCsvrISRYK1UuH4S0whXLMtk3F4D2KuKmFeR1MdxagGsObNW5IXbGycskV7QI8GeWBAiT5zxAExn01I7nZzGg+8z/1whMFMIXYp8Zz0XrQieKu2zlciZpj5QMQtOL7TEv5CZ7kNCQvoPktaCwfGW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778219855; c=relaxed/simple;
	bh=jDP04OX5KVycMH29ha7WN/6R0yXymYIltCJwZsDz8GU=;
	h=To:Subject:From:Message-Id:Date; b=bY8zPNwVGOMKDNbua8DDOmD01jNN30CIUIeTCj1aEkZ3lBOfcC6R4+iJGCF8z65mCXDHPrJsvXjMo+fdKSqwwrI67ZgSvTql6gbJlhtfZWA+ROZpr6qie2S5Yy8FX4mBZTGxX5cXqnTrpwMZ/JBB5ZD2+JQyUXQwezasX/ba6EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyQqKWqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyQqKWqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB23C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778219853;
	bh=jDP04OX5KVycMH29ha7WN/6R0yXymYIltCJwZsDz8GU=;
	h=To:Subject:From:Date:From;
	b=TyQqKWqhXjk4O6tW1EhI5U5nuVDOWrRY+0G5oBJa9hzs1n29RPHIYaVdEIGIBmtnV
	 VWke9HMdl16roEMSd+DRkcFfiEPHFl2OLfgIwd2A2tuUspALnPGwHwmAg1ysFLsPPa
	 lJ83ayvF7WXSrpwrHDYCOWSR+jNcXtEiKYVGzc4VFbLu97wsCMwX3JPpuv0cCfNJT5
	 ecxe+wTbKTe42FmwpYw3SEEV1Y1dkztU72QDOY5GLn/bjmPqRtLmrmX386x6FZfBL2
	 xRWVyljx7WdFkyxB0WaKq9RVEiWRVTg/QtcexLvw6xiHh1sHt1r/IyLX+KFH2Zw5UK
	 blHKTV0WD66ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9CCCD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821985369.25723.4812723374530821480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07534d5fd5d844f29163204e2293eba7a7051aea3dadbe2bb034b1ba1120c01f
Date: Fri, 08 May 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778219853
