Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AD3230D2D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736749554; cv=none; b=hbSeyPpc1n9c4+z/Ukfr7v3mEQFxza9Z0ZHy4PVN0cl2tPuTGXSKZ7WGyOJALLFXNDw8MmZuxgQ5VB1OXZ7D5ld2Ev7cCB6VtLkfc9vDUHgrnFpFXy4qGpZ/Y9JdTQJW0lcCDBU8WAoICrwnwNpiCdu6+8SHY8yZC3XWD4vq5Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736749554; c=relaxed/simple;
	bh=6VXvNltKrldFgXw5eOubEIJU8g384+4C0/7ehdbY0yo=;
	h=To:Subject:From:Message-Id:Date; b=oFQQm5PyNhiTj3SFQavHQDwW3AR1wU5hEIk84Ad+cl/P1hMzPTScpKldXpk0M6VgHGf/HrVXTI5YwYK5B5IhM7Id9fmuYjpO9xHs8NNCcZAgkhoYh5ElA+a9yfiZZZGQJDfvN3UpL6pEhrrnvD2Z3Jc/Lf87dwWPiq1lMFo18fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBxZ864u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBxZ864u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F6FC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736749553;
	bh=6VXvNltKrldFgXw5eOubEIJU8g384+4C0/7ehdbY0yo=;
	h=To:Subject:From:Date:From;
	b=RBxZ864ueyb2KUpLE+Ob4hGdM0TVjb+LlMUnc79SIWh6M0Qm355/v84qejRCRslwi
	 AD/PreYlV8HuzrPiGDms8wSRYHJoD7fl8ysoEFA57m1YrhdLxo+3UvlE93PLSRuhcM
	 /wjchjeGGPOH3pjgiK3IJWKJieafJIeQKngbYqBjXzi0Gwks0e/j+qW1HBNlj1hdyy
	 LDiXvlTrw4Ae8rFDWBU5nt/mfs2HyIJPpoLt2u3OMvP/t5ZFVLilZNbEd/qU3/iw5s
	 GWLfx8r9X30VX3gGB5Z+435QBe8AcoRMruvzPC/7Rvx/3OWaazS89mNNJybffwCqD9
	 Mor/Ez4SVsl0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A26E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173674955358.993.1713941853950901831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ca6f362fdc60760ca548ae7e5991b4525ee1517acfc53624ccd29796a33725
Date: Mon, 13 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736749553
