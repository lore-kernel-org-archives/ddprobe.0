Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC0B2C11FA
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774794894; cv=none; b=Ab1Jq/ptSrEXuIe9DpXH9+k0ZhWZbqOq8J539f8K5J+5DSvAh13JLhaRgChoXDpCB1K12ZLEBXRWLnZDy2ymCMhLu/lxZfc/F+zmZeB+d1sAgIjApUuuaLVS+SuiXNKk6yCYS1GzviEUnNQ/OrMwwEkDryUcGl/q8tEtqewwpAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774794894; c=relaxed/simple;
	bh=bqd2iPSH3fy7G0mMCcOtfzFROAXr1ePfOn74hSG5esE=;
	h=To:Subject:From:Message-Id:Date; b=P94BJlq7MJvFP3Ie4N+Jl8Oq32Oi/QmHgvZI6yIMZLLFmzBd3WGYVMGKZlEWW43dUnJdm8NBOqnl7NtIr/GKmVGq4mthoSKgpa4u0ulcumZVJIZdbhadACr9GIbKfWLoD3N9hB3aES/bd2q8Xy/uWcayA0hl4dvHQ1PIGrhsULo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuVQxTnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuVQxTnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C16C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774794893;
	bh=bqd2iPSH3fy7G0mMCcOtfzFROAXr1ePfOn74hSG5esE=;
	h=To:Subject:From:Date:From;
	b=nuVQxTnnFeURoJ5co2zthgiJ7LyFyr42QtTqkH6MlU/eUNihecBLBuCxomV/hiKRD
	 yygVBhJjB2zkfri6dvA17K6e6a3AdWsxGgteFKN0LMcKEyOm16OkjgAK8J14xbavyF
	 laTV7yRHtWH1d0LasTs1agI5snn9c9pii8k9BV6qktuNDf6NWjrDq1zn9wkPRoidrO
	 c1WTQF/sfJe2Xd/RcAQrab5wekaV/ECL4o1I9p3LnYMAOvNI9Vgn6rq0qbkdtH2cBM
	 BaTxdq6dGlgta/Vtvj0uYCHEAGTzhV+ryRPpf3lMEpxyzm0EW5nkdtWtrMLsBAV9sT
	 LOoudk8M8Zrlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9783CF3D605
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479489358.7449.10000905469749087652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a41327f566b49ae62aa45d0753755e313551500b37e41a051eec1fdf543a087
Date: Sun, 29 Mar 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774794893
