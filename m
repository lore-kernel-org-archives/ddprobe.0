Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D199136A
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751080794; cv=none; b=f+32hIydh85j7cNTRe7rzpHOfr/x0oV88q2sMKWkgwpXrDqZx/7fYIUJk5jInozYvebcmagy2XRZ/bfqgk7mbzE/d5e9sfsWMgW23QNK7QabtVf5xfPf/4c6hWsT/S3MZqztuQDFyf3e0S5cSmLzmBoXrVe7stpFtQ8w22v8yYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751080794; c=relaxed/simple;
	bh=8yypxqgfCXxf8My7L/6BQHAcUUFAfYuSa359YejNrCk=;
	h=To:Subject:From:Message-Id:Date; b=gjNi9E3XS5uLr88ZfbQGsWKaOmSZtCWn4cjQOfYooAKmZQjnq2ZSBuXlzv0Ij3aVRAJv988VHOrgk0kTB2ZYb4mG4SLLxFVUMKimLE7ZH1xPfoNoEq24zSe8W2Wwv0EZd6IGhRCYLnFt0vobjEBTc7HIk4xTL60iAj4nI4AVNxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=broxiWmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="broxiWmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CDFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751080793;
	bh=8yypxqgfCXxf8My7L/6BQHAcUUFAfYuSa359YejNrCk=;
	h=To:Subject:From:Date:From;
	b=broxiWmWzVmFASSu/CKga/WWJIt1YtQd6z4iO0iFy/96P4u3ytJolem3PF8uSqAK0
	 RrKxkVon3RRV4jOuRR85ScLKJzkYT3tjDbEcFxMthhkMcgl7BSN/IyBNfkOlvHEizT
	 Sq3QQUzUQoRU7xVb+pj9WBg6twv8pvmqxCJUMkeLhaL+KOpdPXD5G6PkmQnQeY1XiF
	 YVed6pJMF1Y4jO6+QJxosGWQSyJ2pw5Glsq6ViB9z4mT+bS+LlWhcvjBoY58wSan8z
	 2PTeJXGDFaVwCWRtwl5zwuNVenZVwdV5GoEPLZxC06qBlsNUAJVH2rK6DFP8ub/Z43
	 kH2U7aM3eSCJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC0C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108079357.4430.8568490335911903808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0f1562b9f6f58681385805de68f1390c4c6584faf92abb6b706409a143854a
Date: Sat, 28 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751080793
