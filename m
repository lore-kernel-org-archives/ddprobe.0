Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293571B0F2C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748851194; cv=none; b=UjAlcweZK4RRsbYcf81KeeZ+m5/vnflhnAJkIH3HxEjo/qW1A6AiGAXzBWPDYUK6cBHSI+zJj+8dXVaUYnxNYuuBVeWr3Zv+irYk2ENGEOo9uajCfgObDazuzU8rDdy8HzqAiLGaz79GPbkqe75ABf+PfKkErreUAG/RlwfAC+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748851194; c=relaxed/simple;
	bh=EtN1lfnNVNkPK2xUgzXIZPEHfE6Xu3reMsWMxjOgboA=;
	h=To:Subject:From:Message-Id:Date; b=V4AX/n7ngCTLQzanMpPLGyfIFSnLSlcYrHznjlq1Pxqt08puvavlv5UnLVlrVRHIay1MxsVMVvwO7xj/mRl0F31ZdYF5mXRTUI6qsXpdtPxMXXoJe8ih1iYaO0vM8D9YWafkmTvwxZvAg+evk8JLImZbg4uGmcK4QURVNr8RSgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIgi8k+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIgi8k+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1586C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748851193;
	bh=EtN1lfnNVNkPK2xUgzXIZPEHfE6Xu3reMsWMxjOgboA=;
	h=To:Subject:From:Date:From;
	b=DIgi8k+RmuDBK3o7hHWDPyjz5fn64zGq9RlYVw/sIAGnycQwP/KCQo+SYxnxlPb0D
	 NuBmIVa/86O5O4MZkfZmV6/niavHHeAhyvFI7FD4jqG/0ottmww2Qxru3F5Sk6zh1/
	 696t5vjtrXvbqQAOuSnYA+6pir1dVS1NSOjFetFYTKrT2j40INMQoGqFE0Sb5u49oG
	 3RAzErfhgnxtSqgMNbO+i/8vQjE+xN1FDEMSKSx4b560ld2r4YxwTvdQKlNZCpRRuW
	 X+bA6IR/5w84sVXAWknytKBrE7/qUgSdWLMml8mH1mJGTbvqHbO+a2pfbVYtshJJ8S
	 JQ24SEwex20/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909CAC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885119358.20095.7965319760356031237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a464fcf3828cdeeea7f280fb63edd64cfbe851c2d207337546506669714ec17
Date: Mon, 02 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748851193
