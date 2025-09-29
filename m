Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE334D515
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759117794; cv=none; b=YYz9aVxEY8qwyPZAODrmGv6kkNCqjrO/8LgWpYmfZ5o2jG0FzQZHvYoiQn57LsayJ3+Ltf8rxvUPuVc17r4orPVR4nH+ytD7rTDPdy3FoaF6rpkiTRwNnIxv7udCt47mMIFFzENZKcGk1K96qYVtS4Wd99DBdycJzR9q000sri0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759117794; c=relaxed/simple;
	bh=9droFV85hE0wpJtSBZ7Uke7lQUEUNs0DKOQnytW7MQE=;
	h=To:Subject:From:Message-Id:Date; b=jB9GSFSFp91eUo7FFCCHwu1iPisCPODWvAIJJegcujgMZPebGfn1IgAGIF3BpqhROIBfkEToNjckDpVDLNEqN4Ag29bXioUF2xvKdx6iOSh0MxMlj270iQobxOnR2rgaDjeMxGuDJPPCS1Razjua6fCTvUqTAZGuZC7MJlW0m0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an4VL13e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an4VL13e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CE1C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759117793;
	bh=9droFV85hE0wpJtSBZ7Uke7lQUEUNs0DKOQnytW7MQE=;
	h=To:Subject:From:Date:From;
	b=an4VL13eKelbCTmSjqZC+0sCybRIy7rXicZ+0A4+Vdlu1wUWp6Omm5D50F4xn3xsT
	 Na+mFJFBqo1Zk6sWOuy6AlO3FstXaGqGTgEeV4ixD4rbbtxQFkdnK16yuesgEBEu87
	 K96GMt+e6kaNSVMXQr+P0E5dib5oNSdX+UhtF+tZmYU8eCNLiLp5CcC7L6yfrfkYHC
	 z20mxti8fNqjNaxYznkcfFfTnmUp5mzMstw+de+DYBN4kWrRqiXjx6F4oFKAjTSXRn
	 YkuunUNtwkkrrZIUCKuiB5bbQNEtqc1Gk6E6+76bev2mDp4plxhxv+wtP+PCLsvN0n
	 y6j2C//dYVlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2403CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911779365.24055.14768953088779794535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e55fcb93bf4e5b1610feeb380174bd7eda16a7ed46ee2f2162a3665a76f07373
Date: Mon, 29 Sep 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759117793
