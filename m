Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676463EFFCB
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782814714; cv=none; b=bWeWWlszIy+l6sHo7XLFbVs7CCNyejs86cjjtxCIGQRp2hBSvAVHNgJoG8A2nfuOdnLjreaZ/IS7ZOsu5HgKT7SYGRnIjhknlcbiRsr1oYkSgiSsjk8XQExUR4CqhmL8OOy9KuqSZXWa6tS8VYRVUNtsEFE6Vv507pla5Yw4y6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782814714; c=relaxed/simple;
	bh=lnMNYDSp1dvN25/jpCJMuvqn39j8mEeCOLaLQJJBZuk=;
	h=To:Subject:From:Message-Id:Date; b=OcxgS7e3KmcWzyMFmuAC5zM81nt878b80fGwqSZvOMCGBi+2p7VPtWDAF50HGXzLkozrRnODiNKWJUAJQ/ddbbzLLFZI9QT6ii9t9Vdgr9Oh2zmicvbF+eFzu+qL5k6gfikpyK5elHr//Z0x6FIUeoAe07cS/sXQ8r11PnToSdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnNL4AHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnNL4AHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCC1C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782814713;
	bh=lnMNYDSp1dvN25/jpCJMuvqn39j8mEeCOLaLQJJBZuk=;
	h=To:Subject:From:Date:From;
	b=EnNL4AHoW4G+pQeY63PRVrNlIUbPXG0m4LyshBrIVnfvaJ13y7i0rmeWQlZ79uKVF
	 nm1Y4Ue4IjBcsbjYOG3lepJivGVoUwpVspvR9QWyj3EuUGsZuz4ooq6XmTA8BgxWUW
	 FDJnb8p9dnC3v7D9NLUehTKCEZaTYOEchOJslGeKpB0hDzzA36Tnjhcc/Qx9cl+qcV
	 8UWK2GQauEcBdDITJANypUUYyV3s73hmtoVgZ9hssMr8txnztky6ICYIvILWnqJiMW
	 Wh8pFevDUTq6IC2QQEBpHOV7GTyg2gcXzrChQ6eC8Bw3QcJJy9xfwuzAm0FpJjxGe8
	 QLty2StMhM/ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCF6C43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281471369.11251.9024379336240036280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc048eff58a47033fbe573f3166f147862860f40fd262b934ccc8f63c538353
Date: Tue, 30 Jun 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782814713
