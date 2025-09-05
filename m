Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF905315D22
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757098793; cv=none; b=VwtE3s6BwVJgxRQLOnGzkWkSfxl4ArluP0xswRxNBEjkezllWlgl1bdLT61nnurl7/MxmTjnbMcth9yKhmBkJJ1Os/V6xeIW63RCthzHsdQS67CVl7wA6LTikQ6/LUw2Erhx0edqXSP9MzMZSRloMC0EdLvzk/zbaFJAWaByvc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757098793; c=relaxed/simple;
	bh=nkWEPcbpXRl85a4NX4mL6Wkd3bjUzwSsPjiRqqP8oAM=;
	h=To:Subject:From:Message-Id:Date; b=cPbnA3w9TSq19G9IL6zlqJJUIFPjPPXA5mGXREgK72En3vaUhU9gnhFg7758u1zW2QcHSEistvQ2YVFLSKWs5yd5bzfJasDu4JqNAXPKGw5bsRLRs2bfZ3qlSZPesoU09FOD0jA2PEqe9MtAZiUQOtB1M7wh3XSIiaUvtdb2WGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQ1CL6eE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQ1CL6eE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7A9C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757098793;
	bh=nkWEPcbpXRl85a4NX4mL6Wkd3bjUzwSsPjiRqqP8oAM=;
	h=To:Subject:From:Date:From;
	b=HQ1CL6eEn0zNhzDzEZ7N2IbzPT96YP6xSaQ5Xfow8Q868Vy+Zk4HFDHXmgi4UGuct
	 G4jNHekspy8dZVosnzd9A0t7AW4zm/oKzKbeA69Sqb1I61IDzQRoqwJIddodOiS/85
	 PYppiKHtItadYh5gggFLSB5OsVAI2Gm46kFromc1Gk2v0J9BQpcLRZaITClGZ06CGj
	 TNt8l8B5V0y8A5EQwZUCw2drFa6dtznO9OsjQ/mU0XAyed51ZhgM/CjgSw1KkOw0X5
	 iJYx4yz0hHyeGEnpEWjwMvCkE/YX6KzBQlI6jMD5EUJod3sspuYd0OIEXskPf9zKpf
	 inabw9aO4zOxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EECA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709879357.23537.8405316512664313166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca4613ef1a48d360ced9a506954e92153f4a8c437ccb1e4c2e139f60009c970
Date: Fri, 05 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757098793
