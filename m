Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8FF3A7F52
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784267314; cv=none; b=OVynKxUL8F/2o7TbpkZ81U+5IzVsBFKfQ+282CeNCOMXH30ogCtWTHnqZfqSQ2qvSuwqvdDO2PS3ozpet2Dptq2mCE5SWFiFdGn3W+hKAdfX1M/fyH3aunkdSplSoQNyfgdYFtelqOsprFa2LLBZ9JLZosZFIGKhnw5LIKXtEWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784267314; c=relaxed/simple;
	bh=LGfWFmojJvgNdwaPGbDxC04oNanQpTgRtDuHFOWRs2k=;
	h=To:Subject:From:Message-Id:Date; b=W3akQu0qn7+lTpi0RAS07JCk2e7WRQ+zC2Csfdu6qM9GRiLeuoIjGLq/2eseq0ZNmKgNH7hu7gm6mnSMyQxVSSEt07cusKyPgmSqq5UmQHhQRCxs+KzCiVrA2QA8uln31jTaTdVQBpS/AkmDwcdm/4Dg1rVtj92Ri4bjmasJ1iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/CW29IV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/CW29IV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1B6C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784267313;
	bh=LGfWFmojJvgNdwaPGbDxC04oNanQpTgRtDuHFOWRs2k=;
	h=To:Subject:From:Date:From;
	b=m/CW29IVpxncJJ7U4O3ZgvkJLH5Sesbjgbug6bfaBQWpKj6Gb6OIKK7UBg6rY8dR3
	 erc8J2qdh16IMtPQIIcWYQD19C8lvW5Omrm0OoNLAiBnCsLw0QJroE6M3E7Bj9MKqR
	 biMOV4HVwXJ+Ir0DZmLeGvdZ8pVksQaOHwOJKndjc/K1onfyi/OI3lx+ea+CKprDg2
	 fTYFbnNsK96JoJ3c2+O2m6npuIN5DzGNrEc0MEmrk1mbaasMU5BqwhH623CFDdsCIE
	 kRelWGoWwBuf1oX4ko31/kqgtJGrLKoppCbqutEd4Mz778hnjhGchQE/lYwC7zQe6X
	 d7A3Pk2cF86gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9482C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426731368.3749.6035434545162977762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd057ed197ed76e1ee9c9a35ec27bbe2541e21d2eca356d95efc720efe02768b
Date: Fri, 17 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784267313
