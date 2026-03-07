Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C27529B781
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772904894; cv=none; b=HHxisMyLPaqCTHuWgjqh0vyZtGmzXYrhIyCeziIUhh2zxWl1ucaq6PYEjcU/ZGlt+cbvsBGiwQLhnaG+Oe9SsOnEbUwJruyqbj2g75vdSXxiUug+R+e6LJR6xzXK8Rme+4U4CZjHlVRcj88MDMBT2ajDh7gqvxaTVgpunTHjh7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772904894; c=relaxed/simple;
	bh=9JKovNIJMWHngApTkHl47qu+TV7lDZ2rnSCKRrjS7+8=;
	h=To:Subject:From:Message-Id:Date; b=bYCxWY5VbnDmwa5e085VGx7igicLiYz1m0vssgBHcLv/HdCaw2L/8jhc/5lz5VE38h1Y1MdFwc4LHwplWBCDWvXAQk1ZvlFEO0iLTLVa+7jZdYpff+JxSxeiRIvWzVzvb67jSe4eLKFvIDsRcl+IRZuSuy3yRJj4g+ik8oPFdmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1Ni2API; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1Ni2API"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8CDC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772904893;
	bh=9JKovNIJMWHngApTkHl47qu+TV7lDZ2rnSCKRrjS7+8=;
	h=To:Subject:From:Date:From;
	b=V1Ni2APIefIe1S66sRqgJhoQEQGa3rfedSAz3H8NcyGrGBbjJ8CdQNGr/PiCoR2i9
	 7tNJBE3R369UQlCunzVxS/iD+awbiQclQx1nFy+3oUc7RsttMioO8LNUAQpZccEmhN
	 hxhK3z8lOO/cpEiG3mXKfjHUhWE8mU3+9r3z6p88u1GQ6DBDsccXf1FFLvXaK+Pcsy
	 KLH5XI4KqRQVKDuUWGj97ZqV7tYVoKTTcWwfGqt7aK1Kj53f1rdHmGaaf/dYCTys4F
	 b/l2qwCtLv2Fr3nO8NN5rRabZ5Ptf1toWSyaS3eFfD+ZOIAArp8eRN/rD+2aj+4mta
	 sehdbtUeGIaYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C632F55102
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290489360.4445.1222426677611424131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19c6f585584c212c6c5da5180ed002443a09a41f56e0ab29b48ec37c7e6eb65
Date: Sat, 07 Mar 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772904893
