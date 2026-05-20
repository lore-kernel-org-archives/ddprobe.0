Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F08B3F39D1
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779296434; cv=none; b=dtzlnke1fYqHVx0EuPSL835RLDY3L6cSx9mtHpOdU4fsKcUj80qwK92qCMuPIZSLVWlb2tOGzC5Oe9I1Hd6YwMSEl8dcI26gn74t4V4dXGqbxSg2bh/teIMImNajUanQS3FYDAgQ+g9fNwmlzRe38BCCCErSN8Je95gxlga8aSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779296434; c=relaxed/simple;
	bh=5y3YEcid1HVeda8MklvIeMadqM1N48Cxf9Cl68RkvGo=;
	h=To:Subject:From:Message-Id:Date; b=mBfaTOLJiZ2QAmcxJ2KnnLz/JDMf1BaeA3oCSFzsZ8vJiE6N5K0OltX6tZFPPKZobQiu4z5GdP/MCR/0ChJzyBSCEI3p6UQbkJfDGlyvchXlxWdUXtYSamNlr5MhNiWQa2Y85V8+PIzt7C5wqi3tEhJu8C2mvxPtqvx3yt022Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pm8lGkEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pm8lGkEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D0CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779296433;
	bh=5y3YEcid1HVeda8MklvIeMadqM1N48Cxf9Cl68RkvGo=;
	h=To:Subject:From:Date:From;
	b=Pm8lGkEVZ+m4Myb4mjTvvGePT57hr3SiynmNwcCslglcEJH3h7lXGX0VlzS3WPr4G
	 +mzKdohb22zh1STBQdMJmXB8nEpFbixk65BlLfnvGdtbiF/YHJiPnuFwoY1pGLfo4K
	 zdNsfe3PzO9I1XJK1fizR8F3JLKn0Ib0+L+DffQjvisXNP4KNRnzbkqtZtjxiEBWm9
	 3CEtqh7YYCNWGIdZeoY9Ew4pRav4bB0bPVgATFSmLBdTriXzUtED2eyYSq6XJTm8Dx
	 REIEX3Sd/hPL/MyVNmarL1L00lY5mRhLLutfj2/qniT6ivfxBqM3eAkko5l54ZM3nY
	 hxnCRrMJF7dqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58B9CD5BAA
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929643373.4893.189145421429350756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c2143b894672b300b6890e3af5f04a3eb198fa0a7c835aa3ff99c66279cd70
Date: Wed, 20 May 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779296433
