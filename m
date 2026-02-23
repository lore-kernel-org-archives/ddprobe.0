Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1375F17BA6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771805694; cv=none; b=VXrWkHk7d4yV3MQ8B1H/R6CAej+r7AVR2eRMN0oowOIolKr69DfT5RuvkCOF90KKPwXjpFpQ6omydjNtNzjVJ2KV8YxkiAkI88c5wgX1/VTwIw++c9qXN0ivFU0d41vsgD/Hyno0P0/MXm87VXCLa2q7FwxEqInW3CH2eebXNAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771805694; c=relaxed/simple;
	bh=9W0Wo8U1Gu5ei7EthdIKrmrumXspv6qgNr3xLUQjU3o=;
	h=To:Subject:From:Message-Id:Date; b=PJdw3B8TWc2YG6/rxzk0Uy630lUia4VBs36flkhxysOha3FbLzc3b31tlaXtwjmSmoaBFxC1sC/XZyP5ONboO+LddjV+HCScZaRukisQGcEDpARSgEs614z/QnzIzvlAuylBvRC6V99tSkrVgHx/raoi6cm63QgIxvCdgdYToeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rg5+IJP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rg5+IJP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB26DC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771805693;
	bh=9W0Wo8U1Gu5ei7EthdIKrmrumXspv6qgNr3xLUQjU3o=;
	h=To:Subject:From:Date:From;
	b=rg5+IJP3CH/mZLZ00dzOy700zi2cA7oKg4+VDI0qyoNal//68W9ECVgsUujq9hMFf
	 huLfGeJsEn2matf6Eu2XKve6JyhQyCFgCuwSeZC8nsLJxURz2sJQ84ycfDSypnn5lk
	 M4EC/uu55VWiRhlbAGXfDlMIpCO2gvhhCDFhEyEcdagEwClHl2y/EzPQZh3dUl7XN6
	 gpsv2SHOnPyha6pi7Cfw/i3lMyL9R4oYGkqvhqT/PC7YjD3+r24ci4aty6qJU6721W
	 h9sUvZPWiDeb4fP6cW81S2+Nsh3O224e12JrD40+LyL6K+K+iYQcu9mNEyDFcDWzHV
	 WOzObwe6lvrQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970BEC636B5
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180569359.17817.2731544859496469224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d937c9ceac75eda5e0c675955f0f878b20db7d650f05a61e4fdced076f95d5
Date: Mon, 23 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771805693
