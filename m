Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E8D43C05F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773133494; cv=none; b=Rh99FTOpYEhn1LbHPxyUPLfOMiUt1NuuDVT/pwxJy3NH9EPGKermcs0vlSOls7rUB95rNkDqSUX/yx1W/RPpMwA3lHPvjzpme0dDUGI+zwFmUEv6tdnb3OCLtSxWPxlD4O0JCSuDnyL/PPd5fE23gVuHryKTmSNZPGDcsXLr1KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773133494; c=relaxed/simple;
	bh=+/uuJt5AckvjQ99gvUn8i0QCBGyko4QSO+FWqUHUNrk=;
	h=To:Subject:From:Message-Id:Date; b=dWoy3pwRarUFngWnWWj+HTW8Oacq6CUX7qIVrRCx58a6k6lQxpHyAr9cFI2SFC6mMOyNQjQNGB2AFzfWRmeV8R54n6LHjskScCMh0WSRp1qLhWqriOBeVKZmT2nStljyAbMlY7Q/tYMzwTM2bTUr7Kp6ZvmRBISdy/Ms97GqF+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6uitVUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6uitVUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F87BC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773133493;
	bh=+/uuJt5AckvjQ99gvUn8i0QCBGyko4QSO+FWqUHUNrk=;
	h=To:Subject:From:Date:From;
	b=H6uitVUU0hJdv0x0c0pXpnP+c+H+zVWUbg2epRW/PMFA0RV3xmfvB0kOu9n734pov
	 Nf6C1udGm2sK7LAiEmu8lg6HoU/CT4xG/3ymldVkkfYx1gPiLx6iM60iim71dRGz/a
	 odc3lcFgn+olY7/pPdz1Jh5uk1sBB/96X9t8yw5Yq7IhpciPgT+wn8pCjai2vFvKiq
	 Rn1WrzQY52igafPAYXkDyT5otADyrRbi86YaczWN1f7I9dPyFWMLIS/r4JMLMZdr/1
	 K5b9vIC4eIJaMd/tRzCkVbVAk8X9CxSPjfthbnHlBKyOS5yEEKdecRc6W3cLINHOmr
	 FMmEWnzzbZe7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919CCEA8550
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313349358.30157.114444178729931251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 252d07402a914f6b19c129ab51fe7ba36344e0af0af7a18cc8c6af08bedb8f9b
Date: Tue, 10 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773133493
