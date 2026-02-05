Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBEB334C1C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770327834; cv=none; b=JvF1+w6QGj4sRsPhscTaOaW76m39rqTLPmQFMJ2Ayl/3ONuzYSSDdP8PhmYFm0awps0p5+nxLf+3vgHIvoVuYagFp5y3z3Q9OraulBg3JI3cC7HSXoFpUsJ90VbD5BQn4z+/kBGZ0Ch38s3VmLKBfXCEQAYldO5E0SJ4flAX8y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770327834; c=relaxed/simple;
	bh=7UcBEwI95QAq7KBcXtTw0t7eGQa1qXon/rPgCd50cLU=;
	h=To:Subject:From:Message-Id:Date; b=L/G0SGPjt0VOP1vsVoZ6rbmTgSmQyKP0qjMt466T1da+5XBO3TCEQY9p4G0YsRtX5Mahb2c2z/sAng36D8acPqpgdKwvLYjbZqCl0crevd+7G3tpAH6tjv3sdKp3d9Cmm01IXdRb5IIWX+IPfxVb5QDgXDButpIGwfHeqDG54E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEdmu+Yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEdmu+Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1275C19421
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770327833;
	bh=7UcBEwI95QAq7KBcXtTw0t7eGQa1qXon/rPgCd50cLU=;
	h=To:Subject:From:Date:From;
	b=OEdmu+Yoj5NCjNSiTQdXtKUqRGd1EbDwi8iJZR/aTaccbmyW0SSP5P9LuNk1jW/7N
	 dnPXtbIgufqkaIk18q0d94dLfAJUqTBApL9K8h7De12ohGqfHrnRMUmC20VJ68+TdJ
	 mfB+PCG+HZsbC3uIdDWzge8cIP1ZcVNcPtn4EGMzxltyQyQzQja6nklo4e4caYY1NS
	 CrhQb/dcgNC2RLGL4NgCgnP7Gf6sWvaySC3/cDuuMrUEtvMlxyggzZgZL9QGtyD0ts
	 +d7iQQ03GHNvBiMvdpC9NbkK2eeZ8IgqUnKb8gtSUO8pmsVQGYwDGR29+89t6trASl
	 cYhakVH/qAGjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF8DECD9AF
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032783364.25605.14659415705624131715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44f7bc29d5b63a27bdec61e111a517f596a26e228ea2db15a2e9be715e5c1a4
Date: Thu, 05 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770327833
