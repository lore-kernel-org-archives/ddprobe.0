Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836FD2D7D2E
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775155534; cv=none; b=fneMfR5l5c8XQnmb5mGrbC0CiWVhgh8grN9vY5SARFNNBJkehtjy/Wp/U21GP3t13fpPNu3Gb5mkhnApy3q7hSv8b//4UYNKIpYsQ68jGjTpN58E7z47zheOAxkCTalEVDQuug86Uy1C/pCz+yZGgS+90rUGFQI1u0IDtQyDdiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775155534; c=relaxed/simple;
	bh=zN4VTWMi5PekSBpk4Teovf+Ed3JneQ+FVjSlw3yfCdw=;
	h=To:Subject:From:Message-Id:Date; b=tWmnC6r6gNB5/aQUCdU+LQAkGvptvYcUVGjD4chD+kUPoJ6h/Mwtd0EEr7kw9VglVpg5RME4LyixT41MRDo3QI7aKRwx+dM4KHnycti2vn7ZOUMQSoLC9DAJv1pPMNcna0AXYr44vE0qx3lJPUbv5aVQcATbF02eZTRN+oHE3Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eB6BdG4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eB6BdG4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0351C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775155533;
	bh=zN4VTWMi5PekSBpk4Teovf+Ed3JneQ+FVjSlw3yfCdw=;
	h=To:Subject:From:Date:From;
	b=eB6BdG4WFrvX769FMRTI6/jnOm1oIFAdOqhEcx/xLDrihCD3zqkzEXPRra0M9/bZT
	 zTKz0+Db4I8tmOfUW/NoYQVCKKvXon/sBcnra8LviYzVO1YFrdmh3AOZEyBMSPaQHY
	 1MTNvVZLF2kmkUrcHg9VS2snSayeuUU2CHE+JHMd7dqwMw5t8S6gKMyvQ05w72a+pp
	 bZOAbt/ThD4gD+l972rZmiT4Gl1SgwX037/z+bW8V1ZzzEfrt/pXpybiPzsknL9Air
	 RHOwwP/GvuoToNWgSTavGV61wCzsukhWbgUzPdtp+vHeHNVdvSavLueVm21nno8CEL
	 bmkFfno5Rz/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFEBD6AAF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 18:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515553369.17287.3096583662947665021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b6bdf408621a3afcc86571a29daf75c1b8a35c2018e3ed9b6b5a00418283b5
Date: Thu, 02 Apr 2026 18:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775155533
