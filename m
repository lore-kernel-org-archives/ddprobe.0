Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0E21DFED
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744466994; cv=none; b=Yj9QuWquSxiKyFRtwZLLcHM+AsMi4nLO0LN1E+S7iSHjn94sun2yTZbOpmDG3Zp1k5los8DXmdxdt5VRahG5VzCTSzKApVnKUSruPP57KmU7b6f3Y+lfRWGwewQMQdt1xQ916BkunPK61NiBkTFYRafiF0+fpmYETMevsO4eoLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744466994; c=relaxed/simple;
	bh=X9ww4X7Ww+2Iqal1TM0WHGhZcSFCLOdKQ5EbLOK2Ktw=;
	h=To:Subject:From:Message-Id:Date; b=DseTk1IxyQrRDqGe/mkRZAmSlOub4kX6YT3SkptSm+KP1zlhFTnRtVFLKPBSAfjmoO/vgyOq8o3agdJwtr27x8BtnfIgbU6B3fp7asqOhZI9+jUiX3ZZf9AIUcu0Raz9jurIc0U+lnp3YKjbqO8OKaZzwFsoOfvc2QsEzotcvv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjuJbiJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjuJbiJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F753C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744466993;
	bh=X9ww4X7Ww+2Iqal1TM0WHGhZcSFCLOdKQ5EbLOK2Ktw=;
	h=To:Subject:From:Date:From;
	b=PjuJbiJ/kYQ0T7YKqzadT6STX8CTo28/BvYjoAulTz2rcnb98PcqwLKp2S0Fp8WrJ
	 EA5FI22Bx3eNN92a4BTq2nXBfr0kCRZwo85c0QhXvAkLLVeFitFl9uIWmFM3FG6uCE
	 QL1/q/O4lTGAsa0gMWcnTT4AAlhYr/KhnWoCV2704rQVWoBCEEFzcu7STsBbXkNJQE
	 DWr/JvwS99wMcqPatfy14+3pLcNC8iKRdSRZVGB7E68TvnLISVYIvs5UFq0cKjijL9
	 //xa9SWFfgDOdIjmpyW4ohMl9evkZ+cn6mCQ1i6ZykBp4wnXk2neB4O/x7Ue/cL3+g
	 CTp5L6kFFb99g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9448DC369B2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446699359.15770.5825383727962368194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46ca13fc93c6cee91d95d95f9cf35c026aea513cb55a4f80685944af610dea46
Date: Sat, 12 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744466993
