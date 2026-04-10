Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056CF28B4E2
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775854654; cv=none; b=NEiuOD/Ta+3HS1WDcwEZnXlN2sKtyqmC6aSG0BYM2EWcpu205AWljlQA3/sxGoY4N39OVufsastNpbkRiSfRG3W1uvksssTVE6v3oL+Qs2vOOKV1d6NZfwh+Qxu1lvlXmjySJUWq1RPhR/5zE02KpJXWclUF+5HSJi7vSHLAhT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775854654; c=relaxed/simple;
	bh=8IFHapof/LDMIaMiZMXCcH8jKNn9OpwmvaIrZc1tedA=;
	h=To:Subject:From:Message-Id:Date; b=cSf7ROWkKP5XFO7U/dl6qvvCHce5HK9rhDs2Co3R9NYeKDp7MeZMGdccPYzStHM1MpzOVQCtCa96PH4fXgosocyZ2DBC6ZqWfCalzDVojU16hG1EpgHRvmXEngzm9Mfzb+Zq83lriciRzvYkR5ULswTiDEIk+UFQn+rEHf++c4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8Dlrlrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8Dlrlrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2E4C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775854653;
	bh=8IFHapof/LDMIaMiZMXCcH8jKNn9OpwmvaIrZc1tedA=;
	h=To:Subject:From:Date:From;
	b=Z8DlrlrbZLnyP8znucOiAdj8zfW9t3tp2Z82lFTJrwntETlz1qtrhfqtuphWV1EQm
	 /vfME2bus68EpKQNX9w0z990gK61/kMjJG1T4K159QQprHws8lTwESqZOg69gUa+Gm
	 6Qk1T2UL1NH+4u1XWgg0b5gMGVynNm12CI89ocNeFXSatTdgjcjNRCa9NVfSEUNI3V
	 KHmQtQWpHi5FhFI0rsPQbqk0FRmFpISN8rIjNUeqc1B7DfHYDhmnX7JkYYePMrUKG3
	 h7vaMb5cTIaNSIzpa5B9+uuhfUWzT3MH6Zl1KAqWNKbDzFAAiW+uVjIoG2M3CtqRM5
	 n9Kp/bBaLwhaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5F2F45A0C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585465369.29509.17216410685553565837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c639e4ce53802a36a98eeb2649b5ff5ba19e6b79fca387cb8239b485e85d65d
Date: Fri, 10 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775854653
