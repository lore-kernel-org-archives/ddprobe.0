Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2712817993
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728749754; cv=none; b=GGCvv7JRCQCXY/bJ2yi01bB2M0Em3ZOBmKNetQjGDURmxAeIeR0eMJ5TKNBPqgiKOaOvOOA6/AHwrOtCCzMHNzFVhnpqVZ2MaajRTfbhziblbfRT8+w7WT9CaHSiIG83Pn3wjNlx5je1gyb6J6Bpd0I8+4nlt1h5Y3DqpyI24io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728749754; c=relaxed/simple;
	bh=vVgOHBPMYB6cSPmQufplJvJ0ze+umybAnoVbICCGp7o=;
	h=To:Subject:From:Message-Id:Date; b=Y2gSMvTniJnHbLrpZ6D0adZY/Ia4mg/nVN8uF+zcnufSJF4WA/duWS9w3k86XHWyDMmBmjvyp3tT+byt5s4LOORuzkkMzkSZHJ6qS4baTreayZfRdO2u0IevIW0C5D5I3ScKPFNlhh6S1FDVdbV1SNaYsMhdeI64NWv1QlqBUI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpa4z25d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpa4z25d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68A9C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728749753;
	bh=vVgOHBPMYB6cSPmQufplJvJ0ze+umybAnoVbICCGp7o=;
	h=To:Subject:From:Date:From;
	b=rpa4z25d/JKjGTp9FX41DNoIWYEJnE5+6M1YcSr9tuCl+ksQqSt+gicad3Pr3IF9w
	 ct9R9GEMJQsP62JwbYbj5hKo3YL2zS977VrmHIIK4VMLCSiaMbd1xdCJsG9HSuknSd
	 IRQvOlOoiYR4DdrR/NZoXR7Z6LLytP/Be00aYiAWgBZpKMx4ZokQWOIvgGV1yui/Q3
	 EJ4XZ2plxMMDlS5OSGxe1a9DWm7BOCBoDRCpeeACK99XJe5YM1jR59ge/x7ptTpBB2
	 J7CLbZt9Ifk4excrTq7ZpVUVOZdF5AHKNFUFERq81Br7yQ9yn1UuhGDDikNKTPb4wG
	 pe10VoVMidz0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980CECF256C
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874975359.1096.4401847180971511681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a66494f8186e13dcfee9f5045cf7bfacb188e74cfd2f147f889aae13758fe36
Date: Sat, 12 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728749753
