Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3498513B284
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762393194; cv=none; b=SFBmhVBXy2qQhbH6lFH6iVqLW1914SsGQ2gt1UsZtKQZRviS9dh7ewvvwg4IUgcZEHd9qPIvksZOGRWb04zjlZcrmN0BJYvAPEJLGVf67uN26Aqy7+WljvO0rmDxTg4+lMvX5nEgb2m7rTJC/PU531k92QGEyMl9CL6ojAr4XWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762393194; c=relaxed/simple;
	bh=J9E2nGSRA3k91HRTKrMGtAXsiCljToWO5LjtaToRGdo=;
	h=To:Subject:From:Message-Id:Date; b=rhYTk9PzZ35yM373sikJD4kDchNOCRrTlrAQFxx6YFNhx3o2fjO2FUBoBI2lmJVf5D7yQtrZ7rPTbaimQE4QdkbmlacP3XXQskBm+zs/G5Anxix6O4Q9sBwGyhN2jAl+J6hC9yZ+uS5AR7oXCwSJl0xQsBDMDCBuZtAbLByFwiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRJM08xz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRJM08xz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53EAC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762393193;
	bh=J9E2nGSRA3k91HRTKrMGtAXsiCljToWO5LjtaToRGdo=;
	h=To:Subject:From:Date:From;
	b=QRJM08xz/v6ZpQgMvE9sHPpxLuHhsDJcR2rVLvJ1LHBB973XFgH1uspDiNUo+niJo
	 Z/pPeDeqWmhLrKAErH/giG4ntV/VfjJkrzEux/bi0BUpM2yXZkh5C26Eoxu/JTrXWN
	 Fc+gwnBFCIhTN8asfjVpCVr3g+4hp7Tsgifo8ZrWMYvJ+xcNcytXDLEm6cApohvDP+
	 Ma0TLFP53iGda6KI/+lSGo2OMB3SPaLVMu9miORcXIk2tvxOO7V27JKFxlVmqlsavk
	 8xI8T0fT5nq85zmZ7STA37jzl7s8pg47fNjGoYeSINbh1/uN57HxVfq4C3hz/ooyjM
	 0LWhdtAwWVQtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93515CCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239319359.24537.4840327010227247132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b5feb49d1d4407c3d9d3f76bfa2b1d532940ea02894b3699da5deb04cab8ab
Date: Thu, 06 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762393193
