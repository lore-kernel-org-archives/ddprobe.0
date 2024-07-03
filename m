Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450B413A25B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720013123; cv=none; b=qDxC4KCi0f430CeB7TIx2n6n2swYnNyDa2R1UaApxbJJ0NySVbCbO6wYXB8iytg+WpHo2HjlDTL4DOKc6NdoyqM8U0VjkYSuSvYQcghHAn6VS+RgjkdnatsyNyb+rn46g+G00fOPc6qWCknaJpgjY2FhWb3oslKIXkJOvjChmsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720013123; c=relaxed/simple;
	bh=3tTbO88JI/iFC/AbBEXiZYPVJqn2MlGC67gHIfaXfVs=;
	h=To:Subject:From:Message-Id:Date; b=mXzzfJzA+XTysvjNbJZvseFIWJMG8doetdoUrWiUT6lRaaQFcXqGT3Scxk2ya726gwWihZdZkNWSW33o56ilQ2nI8lxYWgzYVtfZfNOCIq21TGblOJ17VXPegpVTQd2xaGo2tCPu4SfYFIXDpnv0psWXMcdhapnh3iZbSAstEQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYWVMHvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYWVMHvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2786C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720013122;
	bh=3tTbO88JI/iFC/AbBEXiZYPVJqn2MlGC67gHIfaXfVs=;
	h=To:Subject:From:Date:From;
	b=rYWVMHvYPTAt3hK9VSc+xx4q+Som379lfnG9Q7MdBakDLj2YrQySVS7yIs9agMWx+
	 s01ksRTyvBx9auN+wGpAGPN/l9TrF1vS6w3baWux1q8v13B8w6GyqD3nRezeyOPave
	 JOMTus5hN8G2oi2XYv4lKtanhWZwXbvN4K556JsGfQQQoDv9SyuOplwatLlBcF9F0d
	 yCPyUvjO7pTJ44ORf9Olx0WLIMbje7OQF8O1qExohfWSrPmQ5zJaFrqUGixHjNHD8R
	 5owwfVQLxwKxx4d8TaknDMITv3XpQDZAzK7Yp/E1anyMOSkCuLiLt4S/xyWkNY5y/W
	 x1j8t6fs9ezwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFD5C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 13:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001312277.28795.16012157730360290988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25e2a9daf6043b8b22e0fd15ce9245023162fb85f7f94ec42067e6a48cfb4fbd
Date: Wed, 03 Jul 2024 13:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720013122
