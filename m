Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0C422F76F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751366394; cv=none; b=hmTvTvZ+QLf6DLFcjuy3ANoTlDG/YPTnRJMLDT1paYfyBT93msLehOB8UXaWlh9lUdG9QNiNulYbBhDTf86LrSR2sWrNPJVU+8gH6fLF2csgknbsYWkXC91w0QTjEdNMEO6XaWcwzhNiN9iNWef34YCC1y6/XDGtORaB3bK4fWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751366394; c=relaxed/simple;
	bh=nOzW+mIL7g/qPRkapQuQTU14eOe/sf3t4ot6OnzNvsU=;
	h=To:Subject:From:Message-Id:Date; b=bAmEcgr9PuVwnG5UaGvfwsmg1Cl0L/nPnjafoolh0VTe8i4vglrEBnMoawYBT4x8+usLQrvNg4wNRs4NrRBzK8r6ejO3JNR2lOcEz+06M6GnUIovPdBHjr1kDG4uT4UjUnIMKSJBVCfQD9hZXAbgEbrfQFpu++MsSv30KJr/RVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV0DMTJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV0DMTJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39C1C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751366393;
	bh=nOzW+mIL7g/qPRkapQuQTU14eOe/sf3t4ot6OnzNvsU=;
	h=To:Subject:From:Date:From;
	b=jV0DMTJrTln84kIKfdYlWq1QjGYi+0QBOLTwR1miGOXlG5B9wByfcF6wBTRBGoE7D
	 Gl+d4fTjiNT9KcOtP/nhtiqYCD5pO0WmFSKEkudf4ZPuYx1ct6TcQYHLvUCpgXQ9Wt
	 RRyNmCeGiUnTdIWiCcCEVL+kQv7Zc/xqh0Ue11zr8rFA9yUqiAp88PpwZ7xfZBlYpv
	 eYrV0DSS7l5ne2LeXbiolM4xd0Y/5L5abBLkZpSn94pd3S1OJJTUCT+YRuI594hXyq
	 22nWUW2vz363v5JZzlvjgQkhqfpSga3Mpcm/KjHV76Pgg46BHVhOQwfI94+BEp/L+8
	 E30TY+bpJ0cnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9548BC8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136639358.1424.434404435296382039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495166efab9e92e67ddfe55ce3a5118ff07a65bd9cb08c23668aad045fd91790
Date: Tue, 01 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751366393
