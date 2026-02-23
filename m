Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161BA3346A0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771868694; cv=none; b=LMwzZfKD/Kj/nk3U2B8mi/gxIwgbp6LRBW0RwswXhthjyCdCkI+qAYySmj4v2UWotCOG0otqUTX2qFJ23/UxM946SbkKgqFsJnBB1Un7m5Uf3QO8/Puh+D+wxCLeGSjc1kz932G5412R8pdbOD68WGmbG3Ik6jy6ptgrO8jygKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771868694; c=relaxed/simple;
	bh=tzSsLxHFRe2A+J2drHK8t2WppQsr+w5MDcltUQ7RACc=;
	h=To:Subject:From:Message-Id:Date; b=EX8pWjvXHm0S5XdFqZTHSmuJU5coKae8VjWNG++kCRfCbb5ZzJYK6Yn9qLmyrgj2n97DV5LmjDchxRA5B7VVej7kr9HHZrEzNOsFBj8nHX9sVqa8Am68L6Lo0vFfSSH0PbpvYaSHsMddXKpFrqWZl6KQsvwWffwsKZES324CTyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SliqPW90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SliqPW90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A842BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771868693;
	bh=tzSsLxHFRe2A+J2drHK8t2WppQsr+w5MDcltUQ7RACc=;
	h=To:Subject:From:Date:From;
	b=SliqPW90goS0FWcEjyckyoT375upyiceH6ohvy5p7H53f1qgB2nq7AiWJ+NQAIer6
	 CFCbiM5yGAYfb9MtWytsHbnBzZepo1ap3FrDSoHtUUVadFFG3I3dc4JhDWsQDAxrV0
	 cSKfR/ukBGcy58LlbiTpAU0NLD2NQue+oY948co7jroR3jLtf1vA2lL9HjOh4D5C2o
	 7nx0ww2wSFpgYFhrOv/7CXVxIWy6zK+l2lZf1RCVfJCKeN+xny+JtNSjqhIQibtJw5
	 UhelrILjpRSIk7QEpc/vXYYC9i5CqrMYVMDxzX++U0O5EsjNDrKrejaP71GGr1zuna
	 hOkICtvJHrPYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F8FEC110C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186869360.28486.2080227870025857885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f53f4b2896c93a6c8c90977120746a3aeabedc98d18bec0ef361ff8994fd310
Date: Mon, 23 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771868693
