Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED0142A96
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765684373; cv=none; b=E6xxUmqnk6CaJdG3JCnepesSwVKiy/8WPLybz8EF3LWBDnYF4+yVtMBZTV1Lq4yw8+Aks3eKgefU6q+sy/0y0zxdubATn1yQ+EvEDOzgTsb/bCrOk8G2BEAwkPGJOTQALeXzURUna1foUlB9lJjTQJJE/njpjLy8CDDtpfEjdkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765684373; c=relaxed/simple;
	bh=wWQp9CKCD8J/9DPkNnKef0CuB777sVtLtVPsC8SUzbI=;
	h=To:Subject:From:Message-Id:Date; b=jMoBmvimZ2JAcsQMRmIcCidU9eOFsAgAvDj6337+LGvA6jGfct6OUAF3UD3AKmhwvPmpRiF8EkZ+AXWv3WJElBy0N/0OrjaQzbUK38UYttnBTs+eamsPIkb2OCz5I/0nWZbDnHzzpZiTmtLIenzcrNmXJMtwfaAeevgxr22ZqiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNovokYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNovokYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4684C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765684373;
	bh=wWQp9CKCD8J/9DPkNnKef0CuB777sVtLtVPsC8SUzbI=;
	h=To:Subject:From:Date:From;
	b=rNovokYofflUuPXIkBfi4UF+UAM0VWGqphttWB17YfYRAtOj9muW1xSBHHXsgO3Yw
	 sc5Fd0Ixo4d22tt7WZ6Qat5kMlOc3BRg2zVvRpVRcf8Hb88y+qRVidFWsPPU/I4FRl
	 Mea5569zXQmL9T4Z+wY/PcRmwPVFGVYoxNFZ5WiupjLyGod04kjv0oqvr+l+hIgN6h
	 CHVgdsFnuI7srsKRrW5mskR4zENGTTGlka6Dku/ITswGzMcMzg1Kc75ZJTr2/mIM4p
	 efPdR/26D/ilr/EC+TmLady4t2pO1tWZYc2xE1o6Sn/Vr/s01rMera+OPPwcROLG/Z
	 z84RnfS5F9Rzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968C1D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568437358.4229.13928548542046964642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9f5b93268bb46669f6780fe8a1f51655b718279848d2e515aea630e17bc37b
Date: Sun, 14 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765684373
