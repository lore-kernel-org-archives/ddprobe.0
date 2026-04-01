Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352FC46AF0A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775060134; cv=none; b=ZyEer1oySDe9c6kTo6p24mX7XhUgy6Z1a45b7Q0kNGmmBsPjKZf+L2eR/f/RgaEEStkGb1saLwuGzu9Q9l1xuockHB5pJsUwCvIOWnX5/rhWvtWAtB/S1cQC0b4cwzb3xq/NiPPJySLYjJkp79YifyDtkaifteRQVRzOnlN/hgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775060134; c=relaxed/simple;
	bh=0oc69tqLYApbCoMKAdkM14JM7w7SZjwF4HmQWow87r0=;
	h=To:Subject:From:Message-Id:Date; b=nobBh7p7Nb/XXdqma4d2i2Gv8YFh1bO9eLdp/wWAeU4CvdCRNHBYAip+zXGSiX+tpMOP6fztMzghlKc4b6lvowrZ82TzVhYYZpfhDCH4QZH9HyR9xmmoWPCd4O9wWps0KMjbFuNGmHLuvNTdVUDA09iu8tcxXS7B3v9vvC7qV70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lQnGDA8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lQnGDA8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0509C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775060133;
	bh=0oc69tqLYApbCoMKAdkM14JM7w7SZjwF4HmQWow87r0=;
	h=To:Subject:From:Date:From;
	b=lQnGDA8pOblIHA7tBvrfFjpP3NrQPCqV8aVlpvbkgHtizXpcZ5ZlgTqIkMZcG/VOn
	 gHxfKS7Ypq4C1tIXKrWB068LaB6UtBu6js5kqeIecVZhSL4FXEMNHA2Q23Mf7rurdX
	 X+vCtOkT6WYLInAPnXPRRyEi30wAg9w8azTBdafEVjz7akNa0kDfQZeW1OewFnrnGy
	 dRUWxjOSi8BZGS9q7xNXKnIy5yb8Amk3WgQcW3b22L4iMExwHfV/6lWJQYTnejUa4Z
	 40SFurUK3VieSvfhZzAUdzGPa81ChF6jdUeV4t/J72HXponZgADRV4y9Ne9zioLhCX
	 XtV3AcnACsJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD9410F6FBF
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 16:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506013375.27759.15711839463237674845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed83a908610bf82be85d8b629ca85c2e019d5fd51a7fba5accf1de218183a535
Date: Wed, 01 Apr 2026 16:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775060133
