Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC76286A9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769234034; cv=none; b=D3BSPap7zaoIv+KwnXBOQXWZ3uwcCwwrrBTIGya8rmzmRft15sF6NfQEhoWVakZ+sr85uhCHOLONdQ3SP6suf1GJ2mT6PoFcluzVkXUiXRoV0gPqheZ8foQTj0MTIqbBqMtUuub36Uj/PFgf2gFTG3mr1xOMtXIAiM+CFo5r+GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769234034; c=relaxed/simple;
	bh=jC8T/Q9uamDO70hF81Th6B9oHKNH6r0NtnjFXulub/M=;
	h=To:Subject:From:Message-Id:Date; b=M+fSORF9N3yty2SNA63T+qFn+8Crlu+XWxMaGQL0D6sh5I9KiOgxZ6aPvTmA1Ex6gyFo6yQmI+b+q2LgrPkbwSji/oHb9JQA+Tmqcww9iRWrjqP2hKI9Gb5epM3eGXjP4YXEvDMEpUS6JidOXCoolEzLNAXjUPntaQFjjaw3Tzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9aRNpvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9aRNpvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A275BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769234033;
	bh=jC8T/Q9uamDO70hF81Th6B9oHKNH6r0NtnjFXulub/M=;
	h=To:Subject:From:Date:From;
	b=o9aRNpvWQ7DpItjCAB6Z2s1y2paG8JJS0hP+mA/HBjcm3yjGUjDG1yUYsv3xKkFMf
	 zWZWcMbtFu4le4fpIXu19DIHDXh7dLXjuBIT3XdVoyYrovMyI45Na+iU+78MBcdxu0
	 WWkCjqtOXmarg7Nkl6ajSrQOsVeD2W9qNMpL4iZ9SOirdCT/bunWsrb3CAnC/G1+bI
	 NKN8SkJU4n60Yw/f/vzBxd+hmz6VEXX0UipAZh8Cx4rkWxa5PsMi+E8k0bEGqa/CQk
	 /yD//GUXXJZClncNOBhr2P6fEMhDxta3PRqeJK6D9S+VEmPekyDqLxHjC2p+4/KGQF
	 jYUYIZM1BFrLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90094D715C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923403358.30228.1233240129761530643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f74bc4c26f4e602d104de529b32972b31c30cc60b1c58279a173808818e6c6d
Date: Sat, 24 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769234033
