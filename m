Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5868922CBE6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788652234; cv=none; b=ATsIYztC+XOUcVbzKEdTcqxPWbJJqA+GqrCJTtUDrMwJhuJXYRDyj8yZAEJZWMXMVX/zMyaSgvgrVe1qqf5dEivs3EvAsJqyEICykFGvWQhsP4CDsrpNwZp7oAN2cLiNRCazmFr0wG+JWOm3LNMUOKLuxZ1YIWLulrblWDLsTU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788652234; c=relaxed/simple;
	bh=tRcYhzce/aqiKc70XoJXJWTO8dQ+UBj1EYbUW6KJBcw=;
	h=To:Subject:From:Message-Id:Date; b=BDihplXfmxZwa6Z0IOqLThZy1Xv8TrxRf+sZi2sUgnEta6K0TfK0S/sKiQV/RuvtKNtba78ee0SfNI+d+fm0UI28GeBBhGtTD1WwYPAYFBPi9qIIki0RcD4hOUomlLC648Vu05RjRDCBgeDcmfy+S4canmSL0J+6cSIrfPoB9Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tF+2sXGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tF+2sXGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEEEC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788652233;
	bh=tRcYhzce/aqiKc70XoJXJWTO8dQ+UBj1EYbUW6KJBcw=;
	h=To:Subject:From:Date:From;
	b=tF+2sXGVV0fKh0qQg4H0HkYW0kWdXRZd+QLKN+bSLInR6CHaFNAN5qMVSnGQr8a0n
	 Vfg8dr/kOtzRI41ZiCmiLlGjlG1aXC1xVOccvF/GXT7V1ntV/9fCtBF33fFfGbex7F
	 JOCR5Bf0o86VJWjnCbkywhdrTNrKHyxnTH/vlE4tpKrdLGdl1FPxXTnAvZkeTcveg2
	 WlFhI3l2yTOQPRTtZJk2ZHfqhNl5yGuhK0RHe2y2jsHMiyn/DHxLSV5P8sUuow2aX3
	 nJ7oCOrlLTXEPBdp8Wkyf0C8iQ8tUD0tVaZ2ERr+VBKMxvJvF8Ssx2zgrHE172Iob+
	 d8h3wyGq/pOVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5C4C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178865223368.9135.11852818838418066143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1c929d18bfb7c6f44292b95f85aa2a279c18110631fcdc05fa69c86c90c261
Date: Sat, 05 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788652233
