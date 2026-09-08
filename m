Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABFE4EE87E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788877835; cv=none; b=oNK1ysnxS4aqVSHyIulDP9bbJTLf6eQG5WFdzqrRSJWKe86Odoe/EJsN0bKV/XYrMIn4OKJgcp8fCJ0/pL2aNwYBMNZIvUds9DbbpYstUxIRpLkM9gHsY1sDvwb/TXDXwGOPu8KsE7tvm9am7siBtH9ChdPu0ByDlr/OKJEnoVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788877835; c=relaxed/simple;
	bh=/7eXXvouXlwEZtKTRzbAqpKdnJE1oz7mNeQ0Xa6h7KI=;
	h=To:Subject:From:Message-Id:Date; b=SU09BHAEwxpYY7v5T0WP3sACMrzBux/v6/BTIvBTb43CedZVhiPbb3zRBfsfrXGkEgBJJtfxZ+1MMlOqHpXmlRZS6JFUFyVEMw3Q6DzfYzNEgSEZbXdOvLbWYu/EaZW3oQt1D4b/Ws3RcLVoGb3H1VgLrHGZHQsBqXmumOJny74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Laf82Icg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Laf82Icg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97CBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788877833;
	bh=/7eXXvouXlwEZtKTRzbAqpKdnJE1oz7mNeQ0Xa6h7KI=;
	h=To:Subject:From:Date:From;
	b=Laf82IcgmudkTyRo5DoR4S5q7cwCx8t7JNoGOGFyvriDu7qwZrze+VHrRbW+QDI38
	 MdXYksE5CA/cHidgSQVxaZeRFOKDm+qdgF/bhy3H9C9NlvYKCF9cEfq7BBA5yJKx/Z
	 2BVPEqgo+/CHggVVBZfpyAfm3KnW+sMuIMyClaREoN8rGo51ZsQ6nQllJftvzZIDHB
	 bfirkvDMFnXeVTxc36iEe1dqzFKptEbpzrKvY9ujeK/S/OvvCiPjG653ZbDPuk7kOM
	 PQSU7d5U8tBofZi/mV4MFkdv14wFqtsmJO9yUDxB0Ghk25Jsy5j/EmFJgEADLHrlHR
	 BLGwsmoO4vi/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5818C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887783372.4664.11989046468002965905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34ce62f7e245024144513148b00e0fd72f89f549d86b223f4abd9f1b4a95d73
Date: Tue, 08 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788877833
