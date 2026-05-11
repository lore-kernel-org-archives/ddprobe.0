Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E413D75AD
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778496034; cv=none; b=NCRvFvF37EocmTP7xQv3P36hkFiAav0cASXZ3tS4+g0P5naez6VCl0q7ROIuHkthiiitcHGyBd3WWQYrHZVtwiDayqgLdr4+pOWKu1IVbumuEuYj+Vusx1KtzBrdzprdQc7Mwkipj/ncbZ/wsK/SR5s1z1ZkjoLpU9ynEnvf7Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778496034; c=relaxed/simple;
	bh=YofA5fuST+bMXAw9cdQ8MP7BgZkr6c2C9gP93sb0sgI=;
	h=To:Subject:From:Message-Id:Date; b=oIbscJj7CpJ2tjE+v435HO2C+rYFdA95NTzISZaupSvEa3F3FHqsOPgwal6B4mn4NrormwXyLAjRnai8lx0c4zuJi9+iJHaxwAyekY7JUS0pEJGAP4mN+a8oieFF3IgLdNxVw2exVWGWq+A32iJWutI//sSE5qR9uF2zQV0iMIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMA+jOnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMA+jOnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0FCC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778496033;
	bh=YofA5fuST+bMXAw9cdQ8MP7BgZkr6c2C9gP93sb0sgI=;
	h=To:Subject:From:Date:From;
	b=PMA+jOnLJWSQvEf8POWjGLyOTg7SXGcJZziRA2t3r7ReB10v/Z3smAIe61fVBoGs4
	 J99YPxMmqv4pmsa/tzFhwAKz/IuLChq2VLtvoT7RtmMY4hdRC8aWzWVZw6qPDLgrRD
	 CtJkB/1smJaskrHbgliqXORonVLgYO7ClxXVowyImJBTYkQBK1GCGJS1vEFmAPrHRI
	 33z4de8dSyACIWirqjcGCxH6X8c5VZWvjTF/rcIx6jjmqLcqmzgpS1I6NqoU4wywwo
	 Zf110g3u6Akr51Em57HKSg7K8SR5HI0Eg4P724E9+kGSEoMNqBTUSV40kO+eVwFHiW
	 miF8c8RMTBrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8504CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177849603373.26811.3851183944072959597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf427038a8e70ab71e8c543d4fdc4131b986842e5d37cbb2fb6c046fa7347e2
Date: Mon, 11 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778496033
