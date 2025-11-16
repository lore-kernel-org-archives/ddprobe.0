Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C35303A02
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763299854; cv=none; b=QFr8lIwviJZfpkaaidmjlXjf5q2uCN4G27MnvdkGUmdhLooasdLnzpzjAFI00kPOlzwkL/mzHWUeVHawbqZV1zkfdDc9GUvEjoMacopYBrO6Me3Xyyaq56xrCCWPVzwEHdARMIss6y+b55YCaDS+12zLd6cGiXSj2xEIxmhFhR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763299854; c=relaxed/simple;
	bh=9fQTGyYt0jbKtuSizrkCfKs31tH65uGcptts3ua492Y=;
	h=To:Subject:From:Message-Id:Date; b=DynqVk1blkN2FcmtSswUoflurk3MNhsZRn6CNZMBia2qJqLjHrRw8T8J7sP4ILo+8BkI3VQr4aeOKauYMmQcjnrd092hGLaXWn6r1eN3R6VkLJcwY0AFkEHt+SQuF9KUVfp4FEB04dKlsBqlMbJvueDQzYuVJfph0d14Twg9QSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmvtQIf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmvtQIf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC5CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763299853;
	bh=9fQTGyYt0jbKtuSizrkCfKs31tH65uGcptts3ua492Y=;
	h=To:Subject:From:Date:From;
	b=lmvtQIf5LI94zqkKP72uq3bPhLrt4td5zlneTlkvf1dNAGPitrzvM4pHY9R2ookwK
	 Wf+Yc0NTOV76MDVrT70hbs2Q8gwlZW/bpjvXROtQi2ZKwW5QPiHrbJD0JX+4AZ5Fj1
	 NstKGDHXsKRnF3/j0qS+vk1gY1hGYAs1O5zbx3z1ltCAnL6aH1Q8BGh4wDdyRuHxYO
	 uX2lbJieQKCNAcUGKH4zESZVim/NUt5xmFbznb/X6aPQ+9q4jpyuO87MOt4N94x789
	 4/7wbx0NiRieCgFHVd5UuQV1/dBb6Avqv/JqdqPIByT6nkfgEMQXQugSVaP3/FBSEY
	 hp8iAlTef7hSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1E6CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329985359.6164.921336540937728610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c31ecb50cd1169397ef6879a56e0876d77de367b01d33490460257cb48c723
Date: Sun, 16 Nov 2025 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763299853
