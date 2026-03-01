Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40978430BB4
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772403894; cv=none; b=egDGxb4rXMqimFM1rl+GyJJC31iv6OxS7qjVCSD+yfjFRxaolE24oHXrZAWRoaVEKZoz3jUx/kTYYC+Max8NmOdltJ9JIs+iCRiZZKfZzswkWYfBgsFJp+n4fYX/JDvH4ex09DxJp1exJvRuf7Bof6M9LeATKivV3LAFIdmlLus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772403894; c=relaxed/simple;
	bh=yukiIyYB4PdzvEPAYJurRUBQuqD3bl56p8zt09mfi/Q=;
	h=To:Subject:From:Message-Id:Date; b=Jmt+3WmRpKkJBJxpIYg7f/bXM1rGLThmML/VBu6cMouyRjCfPyXG6PSaMR/zGgt4pGAvvG/lV7N56hMWk0y21yCP0mJFljNELZ61KeF/NQS/1YsWJn27ueOtK2y7yGn8oUrZuJl9yHW/m+X/RZ8bggUXiAGRbScPGjRazAPnEVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIJ27QWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIJ27QWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDC8C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772403893;
	bh=yukiIyYB4PdzvEPAYJurRUBQuqD3bl56p8zt09mfi/Q=;
	h=To:Subject:From:Date:From;
	b=lIJ27QWS2Rd95lOLNriv61hpEaurA1lCFK8L1G67DnmvmgjMAzv0naWmEyMOYSIsV
	 orvB8LxCIkPO46UsF1dg/k83X1ebqLqhYu6hz0ep1VZ/fnx6Kriw4PClXg6CgpYZSh
	 HnzD9fXLHfU0i7AAihLgpcYqj7HzI/QF28tu2yV6HflmU4UkfKS4sjQ5/go6YwDMjl
	 hj3V2IeITUjjDs+iOwDg+O9kU0pFtEakHR75nN02PD7pl6Xz6nRYRhmx9Z1f5AUdtG
	 ur7ux/sZwu17K4lEOq+TkEetR1qxV9H6dMtUkJnWYncSinPQDEnBxqAEMrBRxZ38ff
	 LqyMCIcrZio2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EA3FD0078
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177240389364.25685.18298608980534634369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062ecbbee938ca7f1aff3011e259e0c0f8e3d2fd32d383966795e5f612788907
Date: Sun, 01 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772403893
