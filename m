Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E01D524F
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755517194; cv=none; b=AJmt6lckaDSk53Cv8X4cur2DSM2yI1fmUbiJPVGQSpaj41wzapPvCMW4Q+0qc1uiDlPiLb7HPVBUe05GFaHjX3CErfridA9ItytknaEyEPuYxxgrFf9ZK7XbCcO86kOwMvw2rk54KsKdwnlrqetjqFnEaxnDufn/eAdRKw/OUFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755517194; c=relaxed/simple;
	bh=a9lpAQYO0yQx2IzaajpKTX27SEAwCUgnBdWEi3TnlvY=;
	h=To:Subject:From:Message-Id:Date; b=WnkRoYwoFaQ+vrN79BOe5wRwraorIbuCsI/635pbF+tVXH18Zm+cW3XBy7uWMHmBiY8gKOmJW3RKNRcLD8gC0OX9zdbx7I3SpksKDQGDtoHlzqTRLm+H3scV8T8K6JCO+41RcHtRl/EgFKnckaI72vTlJ+G0IbQELSYrRSXU3TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkRXxN9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkRXxN9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A296FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755517193;
	bh=a9lpAQYO0yQx2IzaajpKTX27SEAwCUgnBdWEi3TnlvY=;
	h=To:Subject:From:Date:From;
	b=SkRXxN9sTEkPmZhBaZHanL2TP287tNRCQLdkk2U2+VCpdnVgxV+UmM2AdQjx679am
	 Wr+ivh0p00pj/yPVDjEuRsos5iBV1i+aH+6BCcLHNen+H4o5RsCuGVIII+Xdjxn7wx
	 q+NKdsX73PXzJTkiZDy8r9pbykwIEKRVXNXtiJHGT9VFgNZory1ICBc9lC8vGNiXO1
	 072+/uHfl7N1ZQrDQj3JnT6ALdtkG7tEaUGmMNR7FxD5OUqu8oMlOlAsITr0VmxA2y
	 9EmlTcNRZ6/1LWI/XN4nH3ueehqNJnyBz6saciIX5XN7WWf34NBVMa4g5BTQGWE9G1
	 vxU0NRoW6dXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D5CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551719357.27752.3521151602941580267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ee5986191564ba49a5baf2353f12350ded0d072f3a7bf224a761f37e838f3d
Date: Mon, 18 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755517193
