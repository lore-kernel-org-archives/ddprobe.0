Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD593F54A7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782817714; cv=none; b=BFl6NaDijZ4bnZ088NBgHAVjZqDhXxDxhdCrPCI9dCwvNzJeViUZTF+kyACLMj8yLlOt1id6mYBv2nucchWDzkXM0XM9515A13jd5LqXtOzCOA/85FgRgcFDQtSPkiVeofAfkkKwbG8EKnUh0PuP1Y/9pWMwvR2Xtfb3inWRwXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782817714; c=relaxed/simple;
	bh=Fr8SftJQdcmDJnMWQbIJnlCCVd80kEycQmj28wGXGIs=;
	h=To:Subject:From:Message-Id:Date; b=KVYH89vEFgil0VqBCkrJzG08oHwSq1TRZ7Ng97VbOm9XLvfl8P3y2xIbkh/0Mknbt3doPNQ+IlM9zaqUWNbxAybykrrQbecw6xrjCP7If/MlwpaFtIHdEB5aluIvI8+sqxZXjG8JBtcOc2c5dzNAAWabKfXFiyZNM8O+nETfyZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuID6Iih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuID6Iih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE21C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782817713;
	bh=Fr8SftJQdcmDJnMWQbIJnlCCVd80kEycQmj28wGXGIs=;
	h=To:Subject:From:Date:From;
	b=nuID6Iih79zazUg3uEzbogCgQjz1i4PsZSTf5kYN3LuKzAxwLXYK7wS3jY/gZwUot
	 ZICoiNtKtxAfBqx9AB+AUppLzZHpFywnJwXH5yRouNJ1dbJrMCuHKhiGVc/ZnJjIo7
	 YOmeLdg161D8saE22CHZ2svo7madYvo6PWhif5GV3MtiEpX1/ufTeED+UpyfXi/mHz
	 n0oZc93iWRMVz+jrcr+rWN8yxqdPYxdkRoxw84X/jIvVCofnANfS4d61XKlz0cZLA0
	 j/hYgOhT8/l+8VVSjbpzTU7tsHw9QDRRuYHsoffS6fn7cPPWw1NEUnMFkZyUpLF8Fb
	 eJSakiUqlmWzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BCCC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281771368.9497.10680344088605579404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da6193c72f06049a295a0ddb90b88211163207915693144ad3c66e238477832
Date: Tue, 30 Jun 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782817713
