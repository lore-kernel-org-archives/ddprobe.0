Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415F646D2A4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784651314; cv=none; b=NP4dyHMyGw28gPmWokr7pwyZpW2NuAkiGr33oaCqDvpP2jCH7gRe371JF+4WjhpmNhAtQn6RRpMf4FL6eLZNf6/G3encu+94zP7xPihA8WF74oPrNVqjHsePdoIw9YeVF7qR55PT4jlkGWTBWndwAh6QNhZiOhjc8qhCtt8FdpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784651314; c=relaxed/simple;
	bh=ijVsI9Af05XRRTUqzmH6w98uOjptPvDZhCWVeEYE3Y4=;
	h=To:Subject:From:Message-Id:Date; b=d84ZVOZpsdqw5zAuuT03XL+3zSRMDq7CaVOGCejRd3bmmJfUpG4SWZkUiCSlIKQVVF39MbKiVRlo1iug9Myx7YN9vxrOL9gdU2uNR8kBcuJDzZKLArKyfPvWii/tE3I9/0f+qz8PWUSnM+lsoiJi/rzr/LbQsUth2y2kuT66cnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0gd31hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0gd31hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D343CC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784651313;
	bh=ijVsI9Af05XRRTUqzmH6w98uOjptPvDZhCWVeEYE3Y4=;
	h=To:Subject:From:Date:From;
	b=u0gd31hzv4QJPN2AY4ZUIbT44+0XLGY82vbEwFLXS3lY1xAMB3CUTDbUxWH8LC4ml
	 ilQ8MryIk+yCRDMjvk25k3T082d6fjQrZ6erXry31suMAmGnxjHKImpd8ZMNPHBRKD
	 Fex9joO/vUMFUF6gxxgyrOwqrARj/N5ASVWCpw9HqhBARNjBvkvczjkd19lKj1kDcb
	 QQAsJsis3qS7mwLRkC2bBbTd06bRSYt4UPKHFEb2pT5J/dZPM+RxunDtfk33OIdhwL
	 NauF/q0u2YlMabiJ1ab5gMnHQrbSgQrxqxSWYuviXxFpBYGM/fJZe9simbzLNILf1o
	 iITIbqAbj7GXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF06C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178465131369.25398.312269023563331409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebbb776663b2bf18e8948ad5267818e44440c0d9382815bd6e1bec51f5ce05d
Date: Tue, 21 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784651313
