Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3123D3597E
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752870594; cv=none; b=YoEuXZlQNn2dse1RxAk3fU1FHUbgBF03C4gX3GzS6xlRL8IDHf5/qGeJblY0pwTNqB8OEZ/CU2H4kmuMCOu3PKNYc1uaYbyLpFEHemdEW68oaFfmd0fgQ+h1Y5gmFJ1CASr/7xpMSX6dwbSbzxPWFOgThsv+y1tkb/pPHUihHnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752870594; c=relaxed/simple;
	bh=3yFeFhNl2xefpuO2ZlyhL05ssmYlAso+B9Z7yeJ/+lQ=;
	h=To:Subject:From:Message-Id:Date; b=umq2M5QxNAzW2AeA+/K8D0PSrv4xGQKSvcYRI4ja4dt/CxojcU0ujzkYIndHml6U364PWLPYI8/mTEoSLMnn15/fXdxyeHC6aqeUuqJJUTvihIKYcN64UNXKdsZxOiNuhyrZzmyDiH3vwu6juCNfSqR0YcomSImjSysW27gNlZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ou7tEvty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ou7tEvty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28FAC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752870593;
	bh=3yFeFhNl2xefpuO2ZlyhL05ssmYlAso+B9Z7yeJ/+lQ=;
	h=To:Subject:From:Date:From;
	b=Ou7tEvtyApAR7DHpCM0gEJx14XWpzwoAZt3lvKE0OyrkahapKuj99UI7ydAb6oHiJ
	 jBS/udfhQOs03oG2TQsle4pmuzUSZbcBotut/whF4KVSIVS8tc9CG83bZAI4OAOId9
	 BV+vyAjP9h/oQZv9B5KG6D4B8YPGFOr7vNER5LjPl5szcQDOygc9ytcNNPNrTBh8bu
	 yLYkRDzHlDVXfanCQ/sgnHXFt9HCWkw2stWBBJ37deYn/LoyWsm+R4swLohXgnCaY5
	 eVr3Siji6wfsjNYoZdV/myLffFMtbhAs7cKHBeDH3OFdC3VOP111q9R+ky+frY9jzP
	 kRLs6ygEwHc9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90507C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287059358.26524.11370503187995466587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9c99cefa309c3e701f9b40a6e6681cbdbfd42bfcd1fd1bfb26d5116634b4b1
Date: Fri, 18 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752870593
