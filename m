Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3091FE471
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786341034; cv=none; b=CbXmIK5DVXsx4+5+beFkE6sQhhIc9Iyi6f4zwlY8CSVdWd/FQfUBX48nFLF3pvGtpCSY0Ar4tLJStt1q6n+zHm/Ay+XCAy2iUehUINtQKxdkc1tfjKcB41gQnem7wtq2lcJIG2E2X2H2dQ9ywVbKTpsWNF8D6JH5lIiwt0HJPf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786341034; c=relaxed/simple;
	bh=j8jNeDBOVxGkmZ2v2BsGoxer/z8F9tFCgMzhxzqodxM=;
	h=To:Subject:From:Message-Id:Date; b=I7AXdVDp4LbiGaYiorNJ25sBSrEnGw0RjV38Dhx2pAo5vhAe2/Mr6w9O2+9q8So07uMkylnTAkDgjPAHSb4M1uwaS31LR3EkVG6eeYCebCheDOge7DDEKBiGDZPW8Mv/4dV5QMel9UjRxyKnwKWYvLKEMKakjsGIMQEA3cqHIYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXTWNw3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXTWNw3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC71FC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786341033;
	bh=j8jNeDBOVxGkmZ2v2BsGoxer/z8F9tFCgMzhxzqodxM=;
	h=To:Subject:From:Date:From;
	b=hXTWNw3pyciwdVqNyfp/BQ0JaFFryBRQziQx4srBZ59PgTgp+jTOkYDMGqDjZscug
	 ZfBHl4K8PZ94LJhorwgMnvx2KWNsGd4rWa3PGnXMGcHK8CCrXixpvTAiz+lnh4c3MR
	 EME7S1PSPmdBL+qQxE+8N9IHSCkxP0MU6TWWqQrkeKFEDqAUpj/eMun6DyghhT7j4I
	 6YoNoCbzXo64Xp3bEH5QYo4jamwj7HtweyJrgZH20RPJ//sERsX6YATpJiMbSjLyl7
	 ReImrh645Yx+yfyFFdj7jXdI7L3d+RPrN1uccBPdBjV1qmy+cTKab08i5pnI1sioif
	 1f7B87iKw3sVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAD1C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178634103369.16040.9884127259617982999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d572f31ca72b2eae967e683d20abd35257c80d24b9c5ad017d6e0dc7166cbecb
Date: Mon, 10 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786341033
