Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227BF8633F
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749403794; cv=none; b=nSc5dXc2rhZuxKwZUaF+1pYjXBdpbzcE15aqC/F9cFpignXgwZ6pBPZXtytTy9bBL2JMihMSHTClE3ZYk5jDmiNj4woPOs4RT+N/yZ2XPDgWpkW7j2V39SmS25M+zfSzNvmoIe+QakXKHzcCg2nGJw9HCpeq33lw2SZAfcfWXiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749403794; c=relaxed/simple;
	bh=jK7iAbPBT08OVLbUBSCEtk467+H7SvVCL2k9Y2a29gA=;
	h=To:Subject:From:Message-Id:Date; b=AB/hTThRmn0PyXamsNBK0Bl27/5TFuZytt5+OjUXlE27hghINiWzbLTbgvsn3LJvSPhSVgIdSMJLmkxFiakLPmsl1XLXfn5ozspJ/Vh6zMWiNRJkL8fWH5ixkCrDRnOw3mpBhBg9OAC2LBhf5MlzTW0Oclu8vDIlbeDKXAI3eTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4ujOgYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4ujOgYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A559FC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749403793;
	bh=jK7iAbPBT08OVLbUBSCEtk467+H7SvVCL2k9Y2a29gA=;
	h=To:Subject:From:Date:From;
	b=c4ujOgYzMkR+VjNYvTiJWyQGNv/fxOCt3Qt6YjLXL0X/THpc0QDzAflMk/oXtWpHZ
	 vOlrmd6dbsT0l8iCEhuG3hxQ/HkQYnqw9eH74909L2tpXIEgrV7elM2hBqWia/9yLU
	 LRP6UIHh1yxNFcsKU9hysQ3vEQbW5UsIT/oLQ2GGDqYQQJSCNiLm0XAEquCJ8Ho5R7
	 mk2nNp/DRGC5IhTRuo8sbc7MGbgTr27YCg+s2HmYgiou3r2Yj05xlZm6B9TGT9FGTB
	 WoRV3F9x0u07HrCGDM4Ow7YW3YUVAekkQr6VF8Bx1OSMD59JAIAos27wd0fZ/reg3R
	 r4Gx23ML27Qpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93157C5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940379357.12261.16436971286256425929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a21b858c7c1e543c4cc6a5f67d4e167d25fab6a642190f46c899aacdd6b438b
Date: Sun, 08 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749403793
