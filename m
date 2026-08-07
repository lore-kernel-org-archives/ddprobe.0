Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50912361965
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786084834; cv=none; b=TAnMY9Cx2acKFoH/6SxSGWshaDEEX21aJXimBJ3qth/56K3EVPI2iCNk94785DzHBBvno+IlFOcf5cIA+mwogsuQlu8qJEfCdemzAFxdMlk+ZMXr1XwyXVVP0m2DR2oxag0x3mAfqwH6RG4WYrk38JUmEjjq/cDiK4jqC+pJ+fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786084834; c=relaxed/simple;
	bh=4Me9wfnRRVfrhwtkymPM5P7jI93BoW2ojt62zSYawyA=;
	h=To:Subject:From:Message-Id:Date; b=W4OMXcP4LUDF2ToX1qaG+apq4T3nIgtqrCs8cg+r9qFmJ4pFM4ccIvFGe0+ObesmRWkb+HESf1ojbdbN4ua9PnCnGVsPKql+x/au34W4ULkWZzK3L7IvdGJSugVkrRJJPqrzOUetEKGtAsF+PmntukgkggDNCF1C3jwnFeYnb1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LKCEKpdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LKCEKpdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9E9C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786084833;
	bh=4Me9wfnRRVfrhwtkymPM5P7jI93BoW2ojt62zSYawyA=;
	h=To:Subject:From:Date:From;
	b=LKCEKpdmZmSt5Ynl9G+xYuYb4z47oa2uNnbAkrz8StydLbLBPeb7mZbOZG7xc3R03
	 M3Wa5Q8xRxToBnY1uR9na+cth712v8MOZf00bBlVrDUnRnyOx9mL9PztfhmUjtp/g0
	 dxT1gIEhuZk1m42iMFda/apEqldCIjUEsi/1Z1y3jAx4pFC2dyxVTKiX98aHQVEuop
	 TWycoYdx0l5YshC/NWu5oUekOBxpZJglItwpGUG+8fuFVwPHS1WUh3VFHCzCoJbn3q
	 2oPfmTNU51pNRe3M7IoqHfEmiwtLv4hjtjOSrIFmBthJRruyxCXibA1nLyvcDQMysN
	 BMBFW1h8wLHJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7865C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178608483373.26648.5861891411511836038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca35954e00ccc11c1c1294f53fff0f6c99bda2b28bafec4ea0b08874a9155fd
Date: Fri, 07 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786084833
