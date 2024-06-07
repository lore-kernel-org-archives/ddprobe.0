Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3EF39FFB
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717736843; cv=none; b=fSYg8fsbAyyVJkRXO5E9HEMWOO9mYpFDfeuzxqGaSteM0tSSJ/wUL+0SV5JQ5aq1ugkOUHmSF5I8CyHpejpuR8yB+A3iX+UDrrDK4O2rwaiMVDGjAHI5oLbaZXSQzKqhYKjd6BQXkZAMo7rJsWB6N3l5wd5KmOpn4YGYsA4CBoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717736843; c=relaxed/simple;
	bh=ENzpwGcebmR8g1rl/bJKTYsNeca6EDTL7/F4J1GrLA8=;
	h=To:Subject:From:Message-Id:Date; b=lZbChGXWXB/886uf3VloLYpEzf/06H0ICFGnoWt5b64kqT7SaCFQCQ7It+82i2uowZtboZl1Dw4zDp3reoWrFSKd+P+ulCCQCWsuR2nIBoLCvUhckvk0MhVhaMsNMu09/Og4bfxa6UyN8WqV+iBdmBlSVmaMa67m/eKxJ1H/8po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgR5U456; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgR5U456"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0CC4C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717736842;
	bh=ENzpwGcebmR8g1rl/bJKTYsNeca6EDTL7/F4J1GrLA8=;
	h=To:Subject:From:Date:From;
	b=BgR5U456wVzoKzLYviVGobMNDOeo+clw1fT+kw1oZzRYWMNILCJ5Nx1oTAU8rLr8L
	 1VT1qeWM7abbfMAJ1EgTyFBY90NTKBJT/GsiYJb7IHfQGpCSKeaodhlhumt5vB7AXW
	 7ZO1QLS57T32CDKMwAr0Tccjv4HV59jzVGUJinVt/VHbxxCUSTKTiHWjGpRrZX1P9T
	 bqCQJdbqgOtIneMs94sgM4scuUx6bsAIQDaTe1hF4CkimXfBAsc+iJ3MV0/HNmPyQs
	 XcKOVHuqg35ID3Tgsh7j7ZM6cNAH2Vz54k1GFdZG+lZCi2P4Mo+eAs3ulnI8Sz8TZ/
	 40ZtRAOiGGVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9794C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773684280.14871.240348351744712429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d567a454e0497faf2d8b7bc80a5372caa9fae56ed4393b63bb5295f4e86b945b
Date: Fri, 07 Jun 2024 05:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717736842
