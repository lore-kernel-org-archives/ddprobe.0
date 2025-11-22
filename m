Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D16B3B1AB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763770314; cv=none; b=VwxCEEVi2Zqlae8L/JLLEZUEhjAfZZScJdN/TLKoaXyyuw6YnuTTp33qLM8ozHMIR/+gxT98qoLTrtJdMzTe2Uu484Cr+57hncREPKQlsXVZw4zvKJmqFCMYD08/b0AdMuEMqOVppcirE6C5MQRVbGmpdz8GdNsWSU8IcaQTivE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763770314; c=relaxed/simple;
	bh=2X8KnreXcdx1xvBv3FyqCrcByu+6HFOlMy0N41jbHuU=;
	h=To:Subject:From:Message-Id:Date; b=HZkYkwdsmkqifh/81+uiRMHDPsF0nPsygqIrCA7FVUV6RBByhRDUL3NT7RYI4wCkkWsJyyh8Y9T/F1Wd+LryrntE3O8LMtKsjn0fxBOlEFDbXDhXMKElsQvQLHhc7VljOTS52Wskbu7P6Mn71+8xKitfaQeOyMB9TesRX1vpRHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBU+L+4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBU+L+4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED2CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763770313;
	bh=2X8KnreXcdx1xvBv3FyqCrcByu+6HFOlMy0N41jbHuU=;
	h=To:Subject:From:Date:From;
	b=PBU+L+4RGyJjgo9dI7ib6JRYRXquWZ91l86JnLh5sY4WS2DowwFEPyBmjWCE/bvhE
	 eBxPLEO5L3r07q+oZEP8mlLB1DpSI+DFrZzooTHHdvzW9eQmD+8AcCAJIR9/7SOBdf
	 +tqCY1I0XobmYtzhDxmJB69gpPye2CTn69N9drfDavH8VGcXjgDuOzQVWVm/9Xi24F
	 LVlITrHgJFjWIMDUiD65zqkFEOF0c8UVLsMj9ZKZJXP/xN9BbLj6cuX+AFvtvZ7yB7
	 lFhR55MfIGyBjo1YHCCCXzu5viGLJocDSb9zfK9kUVSMupP9NB1Z2qZ3V5S8u3G+ko
	 6fTWJIb4lT3TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983B0CFC510
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 00:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377031359.3830.554969019906336805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1595a859cc1cf2b64c56d04fff0baefb5faf9620f9e4895037002579c189bdb
Date: Sat, 22 Nov 2025 00:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763770313
