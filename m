Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7A03438A6
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779242434; cv=none; b=PHnxj3yC7dsV0u0INmF1wf4pFjgtBgLLtF6v/ExwV3/C96a+IvIPsl8lN7i4WxgAH2RyFr9Te5O3FDTRh05HT3RY34qEcap/t5aMP7g4oZLVDvdsei6CopSVwB65vbD3xScU55GufzySpthFD1n+Q5aPseo4Axg/aqWeGSXtWC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779242434; c=relaxed/simple;
	bh=WV5zLQsSV8HS8XeJ4MbZSRSq9n46EHq/sBa8PzfA1Fo=;
	h=To:Subject:From:Message-Id:Date; b=qgPUjjQB5qaP9EWypsGWT5E9lOTZ7H2CBl8IxM75mRRDESICQ6TtlbdAPjyaX4HbxtNqLGlTvACiiojhOhz2NjZJpyK/PvqVe6hEp5gxQmWYcOQWb3Mq5JfnV75B7kfSDcV6G7vVsZHkRE33nP3IMPePYLCEAj7dIBmWeH84gUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQgMSnET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQgMSnET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7305C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779242433;
	bh=WV5zLQsSV8HS8XeJ4MbZSRSq9n46EHq/sBa8PzfA1Fo=;
	h=To:Subject:From:Date:From;
	b=MQgMSnETxcs/1kFBeKdp/OTkI232m399pjQBqjpEstfc0i4wA4OyjTY5J00k1mftY
	 FOQGY5NSfbNOwAIEH4zPmK90aka/6WkobFwcNJCovpebdjlwuMO8jlQga2AV1W1G2M
	 uoUfL63nwILpB08MLamYphjMjtZS1Xq9ASwo7D+vS44x9X05rAOLUbylG4Dr5OX0RM
	 OyWJWUtjrGa5iVNVq9QvZuylv0XaL453RWe00+rFmTMeEOkkBL9QBfyfOY81Q9Okjh
	 ufHH+QkElPaDaHRrAPeTBm4qwgYBWNxPKK9hRbvCJxPNJsqI8RXMNDuRxitc21bgxe
	 Omq3tmMUC1cow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0323CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924243368.2469.700481770614086650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e51c055f182818cc514b4bb7a94e93bfdc70dec49dd24390dfd64275b8ff66
Date: Wed, 20 May 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779242433
