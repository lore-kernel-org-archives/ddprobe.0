Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC5B330320
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770766433; cv=none; b=k9+7YEAj6Ev3EfTEENwtl2BtTX8XA5hYXlpDYnQ4wv0bXVSEhLz87j6JuqP6GgWvFwcw7T4IDSuQpMXbAWHuneoRJAnUPr+cfsK1QHkmQp/KSOOcEESKySP2C0Nuo6AexQvKeNnar7q9UTRVDrfxoTDOBj284EDxGgYWmwkMX7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770766433; c=relaxed/simple;
	bh=80hxwseeVR1BlKw0geKADcaMYynBGkFSIZ2lcPSMOHs=;
	h=To:Subject:From:Message-Id:Date; b=S5lNkiL0fKnD17kh3qhQayIwF4k4wgadt8yMLkOapdgB7FEMij9aexYV/bpGIagcMC2y55vr8btBHxF+1d66/v80s2GuuQa4HLXYlhtVI+EyiFEF5Fm5LDlYcqEf4+3kxrvRQ/+w6yvWbjcDwUOALMmMaMSkU75EBGMtQKNXUlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6RO/ARc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6RO/ARc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0108C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770766433;
	bh=80hxwseeVR1BlKw0geKADcaMYynBGkFSIZ2lcPSMOHs=;
	h=To:Subject:From:Date:From;
	b=J6RO/ARczwnPvA/kXEzhnEDvGkmixbQ9nTc2O1mhUozNvfDy8dB63VdNatNOyxU3U
	 u3BbhfjNjCnTTU/Td3Hhf1yY2El/xL0zAZ6L7L2E1vwx9KGb7eMFOpCDEqTHZEtut0
	 b2pT7vuT34Lmq/+xHuzCMGDE+RSxDDSfDOz2ZS9/fWBsKc+FwEDRO1Bu7VKUpo+oGh
	 u7Ylqnhs8n9FgLGabvHtV7an0OQ7w0Ohp49tYip1s+T0UDJr+OiTmlfZ50BH6Y3N6E
	 tQH139jqQdOTp9ZaJdeQF46MxCBX8AKaK0XSOTd6lQEmqsXjqb6AgciQ72x3/V5e9g
	 bYzYJTDlb2k+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF5BEB5940
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076643363.25683.16779092300058580881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f862daeb857622c5e8248b68181256517661030eea659be0358d6b236c5337ee
Date: Tue, 10 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770766433
