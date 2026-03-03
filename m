Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4610282F05
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772540093; cv=none; b=RuLzSLGARM5Wfx8dGdOLUoaVlN7KKrr12577roKmXsvkV7gqx/Tbbx6KrGsjzHzt0Bl7j7t8glVG9QNuCPIK4kEs7Oo8+dpdjiZXqrPxJ/ltLHoJmTDxSZz1HYriwTSSmboOrlX4ls/EdJTa28HBvAtaedzCZDb11RTK6P1OOnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772540093; c=relaxed/simple;
	bh=kkF8W4XZ1nlWPZp/KTLFXrAR7WZ9utOQZKKPLyjoPvg=;
	h=To:Subject:From:Message-Id:Date; b=J6YFN7E+DZCF1KIvNrkBPC0eA//UVVv1LanAZohCMF8V+Kn7H+/YV8FhMhiMtPQfJN0LLlSA9Cj5bCU9yOffaw8VcyxFDKqKDrwo0KvAYaOTqG3QkrZHQbV8dPkbSIBzAVcZhPZ5RvkEJbNBjtaqLxxsLe7cuQTslmD9vOlUhZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSliH0kV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSliH0kV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0DFC2BC9E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772540093;
	bh=kkF8W4XZ1nlWPZp/KTLFXrAR7WZ9utOQZKKPLyjoPvg=;
	h=To:Subject:From:Date:From;
	b=SSliH0kVCpHscroGGLE/Z5eYTuRwwZvfUoDki+b4pNhfaBSLrnaoJG+CCoE7AYUpt
	 M57Zjqfk3xsdgUYIAZj4l8rFSmr6Vh75aOaIeZNGhyp41N0vRUWfBwrF3E5YAm10fc
	 1xG9/hgfdTXSZ4hRLMYCmIaL8fDqJ4r9fHCOO9f6yttuQ4xSFn+xtBsU/lCpmu8BGF
	 NcB/1RTb+blU3332LGwulXi5hMCXDrnKRqP4TPfkSH9qW9G3XhmhOIY3XsX/GWH+Sk
	 5eqQn2jAdWDcyS3X+TJqsbOrFRpOr9AQmQmnBZL6d9RK/2dQhXTU6uQ+gfZTWpxlyC
	 ihu41gxF1HmnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B39EC1430
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254009360.22490.16302750987007571755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76853116524145a69a7c37caa4392332080774d48f52d4221c15aa4ff74a4b9a
Date: Tue, 03 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772540093
