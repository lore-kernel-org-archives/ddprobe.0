Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197C0275AEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769079834; cv=none; b=Tt4qnAc2aOiA89prIuaKr7PbyViFAYCTFzExxP1WIOUsQ9BYakxeVUl7dssEhz5lUGtuLtS5syJIhcG9boUHDAssYpguy+Tkt5NIWIyV/k9XUnTMK9Dd0MpfAaEBcBrrD6uVpf8UaUHSQpX0Ui3vJTd37JdhatKZZElWbIBZDxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769079834; c=relaxed/simple;
	bh=XgBRKFKaF/Fmr/D/PLBX3rtGZtHN1TqnD+S/WonWXDA=;
	h=To:Subject:From:Message-Id:Date; b=smSwOmuyiLZsLt0BnPhdORLN1BSdjmwxSB0BM5uGxNyMQ2XpnYOZIL/Kx8EdMr8RlHm251rQv+iy8WbszARZkl1FhnhhfVb/2hskcSp1NPkykl942CnwQXcv8O8jv1ayXGHTO/jEmBghSw78fBEpOO66NFKVkkczSdkduPjrDrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ua18/8SY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ua18/8SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0988C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769079833;
	bh=XgBRKFKaF/Fmr/D/PLBX3rtGZtHN1TqnD+S/WonWXDA=;
	h=To:Subject:From:Date:From;
	b=ua18/8SYS7sVAqHncMp5KcVMFHhzcJHaM4nEEil1NRTYgPjUlopiRYPBv3tY8ONjj
	 QW8zM51uOTEmbdx2N90jL5xtIBVeDQPdm6E1nb6Wz3vcGQL7gZ549rroUPHKcol/UR
	 GIFPB5ojvk+2FGc6JF0a9oB+snl2VxQu6om2MoCCVIEGUAI48XoxnDJbWGZrstNgrr
	 YjHnrqNaTuJSETouI9/vhdVqQX222EnFK2dRkAsAh+Ipnzj4gXGDtYb5kQiLAEPBFu
	 V9PRJdRuQZL80jfBFoxObuCBbLSLhdqGtGsiUiRcLqML7rsALBVqrmUU6f5k70MSY9
	 vIZRCzph9JkRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F794C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176907983357.31309.16616417351044215789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ee28f87cd62fe9789593ded35fb21913f2ecb732ff3a29e9fbd5b70c224986
Date: Thu, 22 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769079833
