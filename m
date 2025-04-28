Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3525D59B71
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745840994; cv=none; b=Kbd9jtZ0iCHPExiR4SmRfeWbnEZ+2z6UuenQdGAHOEmyvyoQYTz1KmpO/eWZ1Ug033n7Y8OO8AK1TsrRXulTGfU7mMEP9l2Vk9IVBNxFcAL8JWly6xTbvxox0fmIven4fFCzPZEq/0yO1SPWIIdDiihdGgeL0YWfPKS42zBa/FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745840994; c=relaxed/simple;
	bh=PkWrWKXGWsxG10ND+PBEADjdWDaSRCXU/TCfQjFj9fU=;
	h=To:Subject:From:Message-Id:Date; b=SsNta2QoQmvgNgeO8BDWR02kXJ6cVY6gEfij9NWInAahZocrTCXFfR/dCXtgUujy4CGCt0FGf2U/rcyw6NZ8e5l5wsBaPNlT39EAaNHlLcyk70J18aUw1Y3pbw+2QfPbWBZ3R2EMZZ42Nilwvc1HXI1gBlWy4WCMNWvJ6zuskHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQfFO2ZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQfFO2ZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A488AC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745840993;
	bh=PkWrWKXGWsxG10ND+PBEADjdWDaSRCXU/TCfQjFj9fU=;
	h=To:Subject:From:Date:From;
	b=OQfFO2ZKeKpxNTDgBJ51uNu6J/IytLNoU00WENHwVsPgxzsJ4EegbWxpu4GJ4uQ5g
	 pokWobg1XOUB/IAzlWpPWvY0EmZ+08KGKg2/9HuA/T5hDolW3zsu4sz7mLSBuHfq+S
	 lsFHlfQBa2pGhLWxZb0PoAitVu2GSRpfJz20e4yGdpa+56H4Qy5x8kHn1ot+ZHuhrq
	 AOyKDtFP95jhyB6IhaK6hRSmSJmNI7uhNpnsAPUriLxqKMWn4jmCUoLe8CEpO9zZ1q
	 sGK2pFfQsoMrTH4Fjk7IhKNdsjeN5g8OkIdD/oX1RaJlZUbDGkSCsVM1Q1cRWOdI9g
	 TGTrg4RfAqZUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E029C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584099357.11358.16652554328361192781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589bcd458121526bda5676d69a5e3706e83b49e1d562fe9a826da2c45ea37be3
Date: Mon, 28 Apr 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745840993
