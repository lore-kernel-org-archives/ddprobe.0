Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569D518030
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713715223; cv=none; b=uvbttSIhbYyV5Pi8LayW24VmpI71dwRC8h/ECT8klVHuAATC25gNvtjGCuBGZgqhbgtXqXiRzK8yrMTpKET4rPRDZLosADDlZ9fwOLzMvDivmX67XUBBT9DVmL16blr26l/XTxxsCHXuFLvRud9QqOg1+OPR0QOOGrLplfLGrYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713715223; c=relaxed/simple;
	bh=3gCheKEoVvnmGHaQWaANkF8QoT0/5KkD8CcxiZNy2v0=;
	h=To:Subject:From:Message-Id:Date; b=Q/La1Nez64Vy68M3xtmbgk2CjnqoGBuoSvn0Txq51BHqlehivc0a1NZ44mDclZGbIJHJ8Xaowdl6cLDxLv0bB5toHyBCIfXAoD2UEAVBNPJTi6hYCIj0A8WYd0IykKKwdmI4KieBS4onK9i52L4MPWkjuMsdxMGY7o1R480ttsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3R5Jhhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3R5Jhhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB37BC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713715222;
	bh=3gCheKEoVvnmGHaQWaANkF8QoT0/5KkD8CcxiZNy2v0=;
	h=To:Subject:From:Date:From;
	b=E3R5Jhhqfk7fNl7UL4UML/sH4hVIJh6ZKm/u206QAbQShWgW24nkixbGSt3h74Elk
	 AK6FjwksiY17VfiCje4SLG1QkBsD+z/UbE7Dtt+kK0Yw2CiSQbWU5+sgYrBBIfWG8n
	 E3+vl7jwzZ+ujyOJtlHcdPBVj/EHy5e4RxAGebDRLLKOOfnIexjYKWwc6e5fuR95+A
	 nNJ119CH+Nntyj7a5pD/RMIr4HYzzjUJ0WwqtleCezGVIbG6cF6FkPBEzGk4lBuJ+e
	 TORoEdZjeMM4WFw9Wz75wI1LO603l8dJatKVDQUZjLDJL7y4xS8anbrF/dgGMByAC9
	 o8emKOL/hvH1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FF9C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 16:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171371522278.22631.17059215510080257114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4914ee6c58412f2858bd2fc52ba2d6714416d6a730da02fb8a9adda44bb591fd
Date: Sun, 21 Apr 2024 16:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713715222
