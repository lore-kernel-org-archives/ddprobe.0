Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250B564A9D
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779672754; cv=none; b=Ec91iWfYBoUox7DtXt1N5+dxUN7N51UJftOKV0UgPEPJVJpeDdlDNTNBx/xGaK/TqK3NAhxbhtEh+Tk97D1ziUX7uoUoSboroFYp7RE64Cv1h8BGLFaQZFO0chTG5vqwSobRvCnjx6zqL7qC5LlNUQ8gOrxoOG5XWN/gX6AdLf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779672754; c=relaxed/simple;
	bh=hKQQV0u/Nv+l7si/LnMzW4kWjFBwXl4kZiURQFlaYB8=;
	h=To:Subject:From:Message-Id:Date; b=XWeE4Z0u9qAon4jC+JlOIBpPx9+/Op5qukRBppF9l/9AO4IawVKP8/o3KcTcQSt/Sj39NmdFhFQf/i1H//2EVnmsN4AiIz91597hcAfb06IWYyZxQ+nUjJZi6H5KFvyeDbv/BOGj7IeuAWoTMLNXY7qY+OWuLOdO952d2fv58QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiRSwRLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiRSwRLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4027C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779672753;
	bh=hKQQV0u/Nv+l7si/LnMzW4kWjFBwXl4kZiURQFlaYB8=;
	h=To:Subject:From:Date:From;
	b=MiRSwRLZoka36InIHv0V6iO1pE+tP5O2py+OdK46y2otAEWxNH9ovUVMuJA8LdbF9
	 JbFVhXSqfua/Mv70X0Qh5dgv9evveyBHkMgc/vAy5inqS/DH/BclVAZykbVwAu8TZR
	 95FKcDw2K3ZPgX861rIeCi6GUdOrhixjWdstuvBkcIwO1tvWoEANFWgDM+/VDsDFdH
	 9gRuhCDyJXFmnrqVBq6ygEsB+81mkscHaiBBZ0dzOOmJYZfFv5v8dhooc2+Rds62Lj
	 qjhKBI/gHboiExg8h3p3lyuvIu+3Kf1khYnyyVfDz9ryQ1GGVE1OV9NzGxBwITmCFu
	 m/g3+oNYXlU8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAF2CD4F54
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 01:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967275368.24836.14219034732276478369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf5f8f87b9f1622e022485e604bbf56becd044c01c9e3111b66e5fec0c03e90b
Date: Mon, 25 May 2026 01:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779672753
