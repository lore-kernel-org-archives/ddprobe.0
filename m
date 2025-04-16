Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAE2335BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744837194; cv=none; b=MmoDaWp4XRsXV0p2jVYnbTUUVykjtcfwwraCutq0CgmeNZZnCa7glVEk14/tsmjIQkA7XvDHzDjDYVCPk0yEyAvZeyf0R2A8mFgDlhWcImyzWqrkI2O8vP0qZpxl7NS/aPxirg2uozOVznypWffDGVb+aAgQEvlZCbK/FDm5ksQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744837194; c=relaxed/simple;
	bh=jZ11tEmJ5vIuDl8VpW5dNdFormhVSWl1B3xoZATAsP0=;
	h=To:Subject:From:Message-Id:Date; b=SzArRdgoiPB6GskuIRNAl62UvROBzrSp0cx6SJb2dJH0zoByrBr+KTkEWwh3dlR1TfRmFAsAs+1x/dwKyivXzgnVuNN/8GOcQRw2iF8VAVWAsX9vgztZwq4NDj4iDdYPQqiniqRRjqhhFKWlJ38tjOWcqvO0ty/gzyoPjZ+lqrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exaKOHMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exaKOHMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3697C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744837193;
	bh=jZ11tEmJ5vIuDl8VpW5dNdFormhVSWl1B3xoZATAsP0=;
	h=To:Subject:From:Date:From;
	b=exaKOHMrcE1PBRt6PL59rmwIVoiDce/xtkPV1APEu3fWgddCb+xt43piB8/R7dUGk
	 1PQIxGsbSjXDqGUiEI8jvQXAZr40jg7Tl+CpacDPW6EhBuKgfccsiTt07ye+QZHgtq
	 9sX974R7m8AKW9/x9IxTWY8MepvQSFMNwlSggEmvnSXV4RW1ZJwDeaRTRk51+76q4L
	 VHjpGP5mGkf+1pKXejNJ3eJRTGyzUiaHvMHuC+gadVGidGf5OKuz6e/TzFr3Ec0rTy
	 TY83rD/OkkA3RReAuZYiR4MqGTj83fzYRKPseRBXhhjI/jCv0rSpKg3CC56gFUqjrK
	 WQ5Nt2lcT0Xwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E88C369C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483719358.3775.4635657889096865946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6def9ebf0673c7c6322b6a4a8461be76df9b731b00fcb6eb5aad3cd75af79d14
Date: Wed, 16 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744837193
