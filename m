Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556B17BB21
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767326034; cv=none; b=r+jsikcfYys8Ib0BzylEnkuAaImq7+I7zwfAQbvmCp9AB//7eVTg9PuB+H4dv/OqzM+BZ/DRo2MuI4ztEQltFlZj5CZONrOE5lJfro+zT2v7tfeh9aEq5VxgjiJ4WnHehplKhMxm6umWiOwey6dqbQGThH7RyxrQvCZfVg8rLHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767326034; c=relaxed/simple;
	bh=+BfNSNLsf1NBrk/kGqWH8ajKArCCts3NFAEqVRFkhtU=;
	h=To:Subject:From:Message-Id:Date; b=D9B4GKLqUEGsKBS5wyziUi6+p1JppOUx3Fq9Dve1Iu1kiIC4Opx/gAq1CqmFGCbZ4T5L0kMzWvBT0B4GokJHoErjKsZXd6KU7XEecEwTgyCr/gZXRVbPlHrCtEiUo5/Ah1dPqRbSNX+lqbzvQyDsseeZxMTOLwiWZEM67oTwX5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eInSZ8Sl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eInSZ8Sl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767326033;
	bh=+BfNSNLsf1NBrk/kGqWH8ajKArCCts3NFAEqVRFkhtU=;
	h=To:Subject:From:Date:From;
	b=eInSZ8SlAjUOkbeh9COQ9FCCQXoXLeR1+CZxLX5/m/QGGULu7GIcF4FbCsGrXjJtZ
	 xyZMSV54Rz886dCGZm6fR7fo21M77MqQD3jzsCIuNLdQdzqi5zf6pWve/FsuPLlWwz
	 AWSu3qcoHZ2V0TSr46ruSb+uqLPo8ampZljt671Rqu2IG4XF1vuDaCxQFPDDAd1iLm
	 fMMUHClnbqy19DHc2GqArDcnAwfyXzyk2B2otuGyL+MNFm15g7hSPezE7/kMLJ561q
	 XA35OzkA9/db03FfgbIJBPu36+IcdWR+sxXDtDVMeIgkuvjhbo6myqO5c6YLA9taLF
	 mus/yTVKBGQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF91E9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176732603357.21209.6212253358595051635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9706756ffe1e7421fa885aeb5a076233a5c11569b707d258789a97b3e7d372
Date: Fri, 02 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767326033
