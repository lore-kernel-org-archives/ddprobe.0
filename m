Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255F138B7D6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772442294; cv=none; b=I/k0/0TtFhZlOzmkFq6FoElBbuU0aV0cEnY42hNyv3sY1kNhdqNhc/pKSHEmLKSlDT/mByXsZB4MnYH+uXKiPSMpcWf4cjpqcJ+ts0wMKBq9L0U7hyNs86HhdI4ik356op40GPThpuT/3VWjRZi2cr9VPPf5xsjdO3NhbYQcjMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772442294; c=relaxed/simple;
	bh=KCzmctptd/WYSmgrWjPFVNo/VEParRmtrNAqtdY52gg=;
	h=To:Subject:From:Message-Id:Date; b=i+AmQXXXQhl9j8pZtR3dpotUsOmPDbjq247Z/BXxR7RkBRveBh8O7WokbIG5ocTotqgZDqGc2ZrRnYnw2Xcnzu2HqM48OQONz2VzBCwu4HZjOeg+/l3paER6h+Qn6Bs9Kd59bs4ND3oaaCM0dcK8/U+YaRWZ0C/VurHolRx2lnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKP9OxEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKP9OxEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2C0C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772442293;
	bh=KCzmctptd/WYSmgrWjPFVNo/VEParRmtrNAqtdY52gg=;
	h=To:Subject:From:Date:From;
	b=vKP9OxEltx9+6poIEnjFpmi9a6+UxpfaWH42Ym3lNIuVLY0BnzK2nnVR/zGvtyaHa
	 exily1CgylNb0ePAHqck06HaQKSYP0mxKrmKGWE84QJbU+C1lh3ZZOIydTI45sfrPa
	 zdGmw8/28c38PBQ/4G3P2I3UJMf0/8ejZPKQ/uD/wKOnXdvPDgIEpWKH1qNL1mQSg6
	 KcALW/uRul8/sXoRNaJ8EUUC64mXQa4rMl09XrizBEjIUehOAB8DTJ4GFIjnO4OwUJ
	 5wgyGQiM/2fcoaz6ah1Wal8PAYAbIfOBflIc/SXXcS04PwAB6S6DqF2N7EFAA5aScX
	 zgNIjz7XTEaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6A7D58E7D
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244229363.5596.16574775671360740710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6504bd05aa840bff3ba91bef9b6fc3a6c456b0c49fcdc615e50e4b2e04388149
Date: Mon, 02 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772442293
