Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D547347C6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786407034; cv=none; b=GkmPrHJHzLXX3wIlRuXFLjm9LLEiWXrLOS9xlz6RfOH4AocmMUMOAhQ5rviJk5JwH3lNLRrFI/atnWuXKHvEptAW7A52L6TVtlIANMNL5LP8cdRUGMU6vRwDN++PITKwvkbo/GD7LOl2ICCjP0cToudwxesrLW2v2qsMakMv6J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786407034; c=relaxed/simple;
	bh=Wkc56yineRqePl4sSTafYGit86mCzhF+OMBaQMq4gRw=;
	h=To:Subject:From:Message-Id:Date; b=sqzCP7/PAaOjTZLrqq0qw6DDopBRXjF4VRan6IWoiHnCUH3MoUjPqnXeFTxxgyyoJquouNh3HjX0++J/HPL/s66iFtNgSLNwtCr+GslR7RU+tO6fIFNVUcqSA+/VJpRdSndu3iJ/33A4SkCG6ioRddKqW1gGGWKovmdS9LsULJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeXyQRPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeXyQRPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBBDC19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786407033;
	bh=Wkc56yineRqePl4sSTafYGit86mCzhF+OMBaQMq4gRw=;
	h=To:Subject:From:Date:From;
	b=UeXyQRPRiUYdUFkRYVxDF7OkQNy/LiMkt0ka/Hy3njBpvz+7CAX6DpXtTXr0oQOy+
	 MU/4D7AuwAasJ+RzU1U7EOIrXN+NyQHfKxrV6H6Wb6WwXDnow+AYlUsrjOkcsoxPrF
	 FVlljikz0llx+QHQ6e2whohVFleC0jjLVRjDesvDNd2yb3nMdGpUvqACpnImcjslL4
	 lDjvVHgcJKm/a24MWAXwG7Mpo2HeEID6WG1htXPK+xoB2pVO9D/sPmLgCqv/Ovrvlj
	 WNsXrptkbLmFhgM1/eUNdNonGoIe8WqunczXb/+5kjPFEUBhuq65xnxOFnph6L8cZj
	 G+dZjXOqW4Jew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE21DC5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640703368.3593.14333801556142775275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c050667b10deadaa492fb8e13b1257acb2616532ec0b36bd73d8876706e9c5e8
Date: Tue, 11 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786407033
