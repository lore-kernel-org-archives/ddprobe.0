Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269A2313E36
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783510714; cv=none; b=Yzn/FvSzssRBxLD8FkhH1OqojdkE2DjCjFbVVgFSYVHSbzEivI/iIZuPVXUBqPE2DpJpIz1e3mE7i1rUGYzCYKTwgoPomVAGpJJT0vquD0x+YOaQX8U+OeuCuwFq0Ic1I/78VotPQO47bBAxefnKvaroUdIZJwFXd63cQ5YAK+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783510714; c=relaxed/simple;
	bh=TeTre6fl5n/W/knbK3b5wYC7qefJNprEBs9iupFffIA=;
	h=To:Subject:From:Message-Id:Date; b=qRWr9KdDZW5xeg4nqRyqTPIx1neR8U6uw1ff2MVya9T/23uWxVZ9D8Jp8a6pja1M0R1iic6vQuWQQHvJsLMMEBob+h8zNUCb1PoKNLHOFTzgnqc0chyrdUbQpSOOhuyuLukRFk1UN6YnK75nPvc30hYoBMhbFUf1un1XlBr08Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et6Ug0iQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et6Ug0iQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4C8C2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783510713;
	bh=TeTre6fl5n/W/knbK3b5wYC7qefJNprEBs9iupFffIA=;
	h=To:Subject:From:Date:From;
	b=Et6Ug0iQxKYj63+B4/36jHUgtNUfQbnszD3udaO9y3NIGX2O7zxmvwf216iEvOOTW
	 MGFrsS5mBxfd0+EGjmriDXOvE9rq61ttD4m/UY9uRO2xpXcELT2U/mUkuycmEOX9ES
	 0sh/9XkEgQH01rm2/EfC7FzcOQT2guqYYYM6APCj13XDxWUg4mn5HgbvnPc2yEqzPB
	 mAOF41Z2YE4M1reCJ/lfTAEB5Lv9TTJw+v0Aog2raxq2Gwsr5546N70eJov4yot3Ie
	 yhgcdNNNtJ0WF0h22IWd2NUqh8pafX7LMVI6cKisaYOVnSGCNIVBzgtNpr55pXJNFF
	 AUjuTmlFT6gQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A976AC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351071368.28504.16132616855291607241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc32b2adf68a57fab2f1c811c9b6d075ea4b74dca1126e53ab96ecd256414e6
Date: Wed, 08 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783510713
