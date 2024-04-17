Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361A56CDA6
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 07:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713340763; cv=none; b=lRmVzLgVGw0mdh/3ulUoTkVISeA4r6DnTBvSxdiRYYph+rmBJWl4m5LHYc0uBRBPgrMXryo6qIIGIujIvfoewgWMLap6SMaptCyeTkY/OZyOBcWhBgzKW8cmxnTMhXDuX6BJ1CcjlV+z+cNgM7OtCwpLCaZ0KmJtEW+AeeHt6Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713340763; c=relaxed/simple;
	bh=BTgwF/kJJTHbZ8TJC11WA+w1za7QlhCC/kW/BVw2T4A=;
	h=To:Subject:From:Message-Id:Date; b=CeKHN90KfNbOGhgfZ7GUqVtOveBmIfux1vmX4SskAXcBpF/lvWYoMAA8rdl5OidH2+YxUYGckHZ54Rqf+UkNpoxw3X1E4qkpF3+CuWKxC57JemsTxJKSKgWEjPD+i7JvFrqJ7owFMgxddVdVsZ6pldynzTHxo6CT4n/fKR3py/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A6wxQEnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A6wxQEnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0557C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 07:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713340762;
	bh=BTgwF/kJJTHbZ8TJC11WA+w1za7QlhCC/kW/BVw2T4A=;
	h=To:Subject:From:Date:From;
	b=A6wxQEnHU6LOwAp9wdrpYsG5DfXsdz0lQcZBB7berez2uVcsFOgiJpWQTf363QNqP
	 qHv27DZcOpJ5mKWC24Z8RXCSZT8X0xCFPm1I5EdHdo3YlcL8ty/D12lFQbGtnMMejh
	 Munt2oj88NN4YFW/UJpRamU6oqvWDnBjQ31cJTgDXCPxhgEZu8mkpRByO9K94XSay5
	 gTzz30SJRsF5YqcreGXEa+Sw2QGQpWDDAu4ind1dY4BFcHPnNb8dy5EhCTSlm31oB/
	 QVv7iwUpAwRO7YJNMVwixZsGNFCVr3P+0cbOSvcnHBualFP9Czbklr+halPENFLKCV
	 nknqn19cOTpog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02AEC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 07:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171334076277.30599.17117486067291534715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079e8bc7ec7bf6ab63c8999d168f0c77257e39844a879a1881ea0e8a94cdde69
Date: Wed, 17 Apr 2024 07:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713340762
