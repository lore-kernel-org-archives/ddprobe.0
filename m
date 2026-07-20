Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7AC199D8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784521114; cv=none; b=tqPe9HWrKwd/RUBcsrt2A2NQCuKa62AdreF5Sm6YZFYL5J37KOGNoQ7CAm9aNU0ZXUihbWp3bMG+mIOxZNbpNqykFHBBeDOVJK9dVrYhF95oLfdFonqaNqjiOSG+7Vn0v4hql8x6R5IIgXS0y0og4VGvzvIdw4i5g6rGsxw1MM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784521114; c=relaxed/simple;
	bh=CsTuVwimbEab1vHsgtFm7PTqx46PsnBfw5UA//o1Ib4=;
	h=To:Subject:From:Message-Id:Date; b=XW+G1WT2ciewwjG66LzMqx/FwXSEGS9pO6L2VX2r6RExvWR4c+lzz7uDYp0BfSSNNUO1oQkie8RWbJ59UxnBMrKs6VnbGwqdJobFAV8MAfnATNNWiPG7tNquUaVZ+96zvd87++S3O5Vm5IIA3Y4Ge1i7nQczPCjtDDDgQFUmP10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNfKvAOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNfKvAOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05C7FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784521114;
	bh=CsTuVwimbEab1vHsgtFm7PTqx46PsnBfw5UA//o1Ib4=;
	h=To:Subject:From:Date:From;
	b=cNfKvAOvybjE7OUs0G6A8fTo6gv7Di7ZrpOSmQV1xDvOUzBXW4zFe9YlOvpm+gq+H
	 SOC70atbvI8TFvCW51j4Ux9Tr1FfUkk/r3JYNy0meZQoqHTrFkYzck8nJ9WXIxPxda
	 prM2q7v154//j1CeJ7M2lAq93ylMdHwUD0wKKQBhwIuCBl7E6QjTglXptPMsARGKXk
	 q5mladiRp7pj1g1TvqdmqGEBvqS8Jx1Z9uEV8YE5kRISHrx8jhJj0gc/qjR3sWfFzE
	 1k/aguSubguvkXdTWAFxUHzh3Smdn4ryXV7hPD+JzDHkCZsk+n96oX8RcicGFWkOoP
	 ZUohRF2AON+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF2BC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 04:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452111379.3015.17290972461517301134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e582d7ae3c1afaadd2d06ebc3af345186836b270afabfe355fe4957becc6dab
Date: Mon, 20 Jul 2026 04:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784521113
