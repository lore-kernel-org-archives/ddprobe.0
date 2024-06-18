Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CAF453E24
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718743163; cv=none; b=KELyORIR4T/GUG9qISYG1GLnJvRQfBMuSR8c5ATjhAePZAfz2+iN025BF/TYnEY0JoqGfz3wKicsfku5Rdb0vRGNRVjCHPP57WKvlzTKaJnif/7GQL/DVTgN97gHsZfb1DTMiYTDrBrCkWjAUipXKAVCGCoLy55iAqNL/mMCtGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718743163; c=relaxed/simple;
	bh=+jQ8+696nuoM3gvel8jzJ1vTGAizYhFsdL4uWv808p0=;
	h=To:Subject:From:Message-Id:Date; b=PzelpgSGgwkPlHG1le0SuKIGf03U8xNRsqEwPPzO9YFwH3QZmxU6pWNtQsrKmdDMyUAe5rppGUg8yAPiYBTMpXSineUYhXokbl8Ml7dvPwRFfmYnQkCAl8iAmnGbJ7sDdgJLt3SamWNL3Bor2emDHAUVuHAPN6iQhiSb+Ftau4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/68Mkm9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/68Mkm9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17CCC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718743162;
	bh=+jQ8+696nuoM3gvel8jzJ1vTGAizYhFsdL4uWv808p0=;
	h=To:Subject:From:Date:From;
	b=Z/68Mkm9FAiNuui2K57hwAZv0fmYnYpZpNgRDtHCyfmCi2a7FU+KHEHvIgTTptKx4
	 DEWxsJdO6z64Il/Dhu1h8U/aqbNRnnQLxqEFvGGGvesN5Ilv+brMnRhX3grxQZCQSq
	 CQLq3CIMro6zz3h0u1N8qLc2fMIPPa9Eh4AnmPRYX6XXVi4HlXUlf6EgHZrKnatAmy
	 d/eRKM7ltcIRBN54m9N+i26pfXgabN/sH3Qn31L9xMfcXtIptZ9ysleg3l5hiDudgl
	 18OFR2sUbtF9gOVQB5qo9428ovcD+OEADnpljTvBX20UFyz/ZrKYOnTdcr5C6xl2VG
	 Bl1MC7Mn9o4mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3F3C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 20:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874316277.6631.12177549178877819403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a22b3fecc7fd72cd052e803a1f169bd3aee28db9d9a4d1505e23e86b0bd921c
Date: Tue, 18 Jun 2024 20:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718743162
