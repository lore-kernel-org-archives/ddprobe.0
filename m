Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EAE313B293
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720162523; cv=none; b=m4/4jSzlfO/L7WxuHkK9PtjZ5goJ0uymqGg9yngeNo4/u9ACEzy8eFlphCOLQChb4UK9bjpBFVWcRyirkVKo7gs5mhxwe5a0f3sQhyUXPx2Xs698xblv+a0D6Pqvq1ToUTWNEEnfMhwqjd43of0f95BbItPV1QltYqVKZVCCVvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720162523; c=relaxed/simple;
	bh=TIBd6OAaaCQWh2a0fg1V/f7cn8e4uPgczxq/YaHJoNA=;
	h=To:Subject:From:Message-Id:Date; b=TFHjouLd4OCRtzxB/kVgl96YCNmmAwRTs/e3l9ag4ebQQQgb6qNPX08bx+PS3RnFaAE1hWlg5uTid8ZMk2z0OnoqLAFTVFn0iAfA1CxsQXDk72Ct2Kmyuo/wK4gdjckMaB2ie5NCnffBjKIGU5mGYPmFR1232ABR7sFa1706Dmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7EkDp1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7EkDp1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7963C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720162522;
	bh=TIBd6OAaaCQWh2a0fg1V/f7cn8e4uPgczxq/YaHJoNA=;
	h=To:Subject:From:Date:From;
	b=r7EkDp1iJxoDkYA9gxXXDp3USTFixVUCFJhAJheRWWCwLawcjjKafCso1JUrX8Rn8
	 TB/E3+0tbv13wV9zkDaU4HIMc6XOlTdmirNiZlvUL7Ok30xkJnYit9q2H4BDA3oi6E
	 iuicuPAmTRcfhMBdEbeHWjQYtNrvYoAfAWJQw8Foq6AaacGQyP4D2gln04KKZStWz+
	 DpzzrYiBM7B9eNaAZAfcSBHUGS8XbHHcbmq8S+cl2EBXLDfhoWfx1JTX/w8L4LgYi/
	 b/VHra2a1N4WEoV75s/bBxn1BeaIzYgiZ7PtgaqT3uBmTmKF08DvFn6iQtM3e1ef4v
	 IuqCnqzDMPbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D46C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 06:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016252278.6424.7427330180762099027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7c43a5118a671c2e43868a8d7992930433647ba791784cdd725d8e9b85ad92
Date: Fri, 05 Jul 2024 06:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720162522
