Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8763C13E5
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781889994; cv=none; b=meQsjodcVxAPMorkWekvizMANvxK9cGT2E+D5frl/abx9sl50zriV/OIHWwYQgn+o273Dt1J1iVLyQxfWpwid03z8c4a7kcBRCV1814xLc+Z1jt/cgj5tIYqoL73JO2Az7SogwVolcSxAiJ0a2OPkF9ULCwftTsL2SnF9jGrASM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781889994; c=relaxed/simple;
	bh=gdZR9NKwiKfp1l9HonuYee1t7xsFEoiwjNQgIwXmaKM=;
	h=To:Subject:From:Message-Id:Date; b=m7ZMvvwfKea2gK4hosc5RSIj+zlgTREEMJihV9/Ezra49A+zczdakav0Vp85NMPIM44TQ19ad6l8enahIPbhn/pM3jnVkHljm07gl+EidK9134BLj1S60UUUk7KFswbcewxFBGcAj0CLcsbHp3BVJgXw+esqbl9GJJwRyBr9MxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GftCI37p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GftCI37p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFD3C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781889993;
	bh=gdZR9NKwiKfp1l9HonuYee1t7xsFEoiwjNQgIwXmaKM=;
	h=To:Subject:From:Date:From;
	b=GftCI37ptAPB4MbyQ8+2MnLw10rARQcnaZ+G6I6y4tW9/E0dvwyby69Zyst3LP3TO
	 N+Q5LNjgeel0GULjbJ6GP+SF5PAdwHD5EwGANK9CFVHeSMghic5zw6f0KyYphqhcPZ
	 MulpyF3J3PNohSJV706VnjU9Lg0Fgx7lFSk7fJGO13GfUuqwIgZXf85UGYypQDU9zj
	 nh7+6nwokZrwVPBG1Kc0bd6OWEuQjzoigS/2bv1Sc0QdSpsnCBWgjlWB1ZaNz4daU/
	 MjOkao3tXLh3R1FaahozQ51hjEPSZl1MInBYU1I06g/Azne3euN3DUyG2VgARIQ/6n
	 fepbjReZWV/Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF95ECD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188999370.32560.15412568437133698335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c04556f7a9b32fc5c16703c231115fbcaa175b0d5ff428b556bae46204c25af
Date: Fri, 19 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781889993
