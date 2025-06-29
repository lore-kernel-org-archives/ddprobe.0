Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1427C1E47C5
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751216394; cv=none; b=duPi0EuTR5HUGkYZ6ua+lF4BwvqBlI2Swgy+a67KVR22oNFU4q2VYuRz+yA6KyriPBhg0Jg0iJhWv1EK3VRyAtiaF43ecwYN/BYilA6p5ZFgmPsxi8cRe97fv7/MmIfep2H0gK/tFk5iBT1SPEBbeicfsdYqxVOcAIIxviC1yF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751216394; c=relaxed/simple;
	bh=psh/1LgLumYceln+VwINsFoDYNJb1hjB5hig7F2bfwg=;
	h=To:Subject:From:Message-Id:Date; b=uaz0v/ACyNcifoLsLQUhzREOgregZ6IFSdFxM2310MxItrz5xtd6EypTTWPhk5W9sMFJRdDWgcPL9z8Tct7Yom9o586RJQtWfA1qxd13w2/kxLpwT4VuTCk0MKEwkvmLL5VnvpMdY/qvAcoD+i/l1wcCV/SqnGqhNl8DWONPKhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hk40ZXVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hk40ZXVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1EEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751216393;
	bh=psh/1LgLumYceln+VwINsFoDYNJb1hjB5hig7F2bfwg=;
	h=To:Subject:From:Date:From;
	b=Hk40ZXVb7fcYAyeI5y7Aj8BlNiQMufihI0Pgx77OPwTmfMUqke+mkrKKOP7wa6SZR
	 mdct1KjoNrlja+R2hkHvJtNXTaQGSi2VnujnghbJz+U17sEa9F+u9LRcQDDkEjRnHY
	 J5E+0KO84jGqqrUNotVtCiB/PwaE7LKzcjAmnbQrjvPh6VIOCiIMNV7U5CSrQXTiIN
	 EkMDaISqOI4Xbl60HRDU8/Mp1LRjzcOo4a9DQer0fzVqQQTr83mjkpWDQpXbyJ5D/5
	 7wc9ZHADEHQbkERDG7GZAvLF+rnPyZgDpLid4Rx5bnOTHrVKGoruBLWxg+5hhpyKqj
	 YwyEeF0p2O7ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E702C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121639357.10678.15586249021981108633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c71737849cb9dbb850a084ecf56ae3b27a6e11ec1b553d8f5280a874b79876
Date: Sun, 29 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751216393
