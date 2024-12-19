Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FB12163BC
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734592554; cv=none; b=MM1nJ39ufsCyozDTp0/6KnZ32XNhNVBAGOtyfDXtuxum9sqFNhsBZThfEgYL60/O8DvGvlrBAdz+T4fDqmo/yOxR4lUH21W+cySmJXjtjgBC+3duxl/TEjipzp/L5vS8L9RsAnDxTPxm6DmuSO+H3vyDM3MQYsoA9InmPGIhIOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734592554; c=relaxed/simple;
	bh=AyIHRbo5Mf3OoZHHWIww7nxD/pMniO7T7EmG/cKkDLs=;
	h=To:Subject:From:Message-Id:Date; b=kQkq/BhuhSDgaYkWQxPWGQXZm6wRBGuwTPeTId7Yc7dG5ocepSst0uN2+vov4YW65jW1D/bEkquRK9dixT/qLc6xN9eoEpTprt8RkpIANblM9w5avEozK3kT5YZGX/jab46f7SYzdVEe2CHpw+RxuinxVt9L1NwFbVGsX7cxzZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHqQHXWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHqQHXWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4102C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734592553;
	bh=AyIHRbo5Mf3OoZHHWIww7nxD/pMniO7T7EmG/cKkDLs=;
	h=To:Subject:From:Date:From;
	b=iHqQHXWhJhYogrcVuR1HW10Zz9zVHD/1xd3UkQWTzxw0nq5ctT2WqDNSWv2YIn+8u
	 q1LdO/VvPGdalKUraMac6cBkbuKubby1LvSR0CZiHFbfP++uL1ZZZ/3jOpeWHVAcs8
	 giBHGrDDnh7lrWPsrRpvc8Z8iUeXaUzYpfHX2eahlvA2gDSyUb9/WG2/TjVF2dycMo
	 OuoCz/7tPXtWKKY/JN3k2W3hraHTZQXo6k3B764tM5uEFfohQbH5LmkwFU9VucI9JH
	 VLRI2IkbmvcSPJt/sbbpmMjgp3+ORasPobpP0C1SnG9AQh+CmFyNmqD/t9FHg3x9XM
	 zpJOH5ozWysGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D1E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173459255357.29736.16094919299378280751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c8d18a3bddd08610e16276baf6aa9304dfbd24a6a0d87b67530fe2f8157ec7
Date: Thu, 19 Dec 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734592553
