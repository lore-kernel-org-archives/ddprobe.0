Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEA315D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722923153; cv=none; b=JqGBeZKsg9D27iUalc90HYfURTrTQdxNX086us2+VcCqyfbX3RTy5oOFNky7EoDgDzZ7eR6xuEdqhW5rM5mnGN53Mqah3083nHnorgoaypR2nGp0Rb6gGwH9FFJ41CNB7yK8igA3/E+pI2onpYk65OMgcxPvcVLyqWKqlFaCgpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722923153; c=relaxed/simple;
	bh=GLoGPm+1GBsoenYPArUMJvIDSDX5CXEPgpYKYmUs9KA=;
	h=To:Subject:From:Message-Id:Date; b=fE37M93oiwR2mJjA0VQ/cPvVqJlMJhpa9/arNS71UXHAlY2qpfKIVQ31yAW1NC195blAMVj5OogJO2yC400dBhzmgR01o648XAS1o0BIMQDfWPlRDHVkCpTr9OxjskJSfR8hdqFNQhp5sMEtT+rBpJJEaHoXYACXRZNzLXq3VIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcklDIQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcklDIQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32FDC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722923153;
	bh=GLoGPm+1GBsoenYPArUMJvIDSDX5CXEPgpYKYmUs9KA=;
	h=To:Subject:From:Date:From;
	b=rcklDIQK12BJWhWI9NyL5mjo/MRt+7QVWlAr6+301Xgz6OLCW9Nqb5FcP95ZM08fH
	 4DXvm6q4nlERi69tvTdqk2CTWOsNbHzH1QUBtZlOwHGyqENk6YNOlmDGjMLxidiXdp
	 1mD2ALdiFTiLvCegwFCkQ3ktR31bdhCYVCL/87h+So3W/DKouKKTZNqzbIFd1aeT6j
	 4cNSiER+rc0wEhtTGbCVwRKwSJ5YPHhPU5CFZZVchq7fsQyVccrGeU9KWbsp+/07CV
	 MPnJngkXLcmGD+IgOYjjfWr+GKn0mPtp/OpNTNtopDnU2KpmK0cuYJkyj6fs/529pQ
	 BlL+C1G+8lDzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F3C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292315358.24993.10733227881328801767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bebe5c10ee3c02d351280f81e67af6ba4d7e334b52e755bfb9b7c92cfe649cca
Date: Tue, 06 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722923153
