Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588206EB5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 11:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720870823; cv=none; b=CLu1BfeUwn2K3NEsKrntXmYtx+m+OW0kikqmQ48516BcF+bIF6Xqi0LJu6FEwraq4AKlOBOX6ENJXOr0y9N82Mm8S+U97LsyMfAcieGiqLSYBmEB75K3tKJ5bggGay8g8k7r7KmwqyW/vW+xheXhrRoqUnqzoflc3YRTrTb8FBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720870823; c=relaxed/simple;
	bh=3cgvO0hbIVTeeP+10Y+qsDqgVrurJaOCOGnuflVzcBU=;
	h=To:Subject:From:Message-Id:Date; b=CFGBcF/Y6DkbwsZ5+48YVUkDBEBDgkxjSCrfYJYUgP6sjKbjNlZmF+mpHnp2Ap+H/CiKFbrtbU+hXcuS6fNAPyFKSmkyrouWnGiE0fG6VJACiCTrrB9dCNeXKpoc8AmH4HPSLlrO0iR44bFC47RB4Ov+q8bGpWUoWJvIRBtcwHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmkKBgK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmkKBgK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB998C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720870823;
	bh=3cgvO0hbIVTeeP+10Y+qsDqgVrurJaOCOGnuflVzcBU=;
	h=To:Subject:From:Date:From;
	b=CmkKBgK16GH3Zrv8OxLsEZnHjV4pUkym01h7KteM19Ev13zqA+czWEy38AJP8jMWw
	 3s94bzWyDNmx+9OMEslgss3ls85SJEuqNCJOkgMX6FXd0qTU1XjWeefpwWx5J/Wdbc
	 bQHX2Xa70QPTPW4nzbo0YY511pq4Q634pTzdb7WDjyUWDjc+EqPgi+ZwCexbs8n5Mc
	 kZzjBI3JsRlajT6XP0HWgx74Wv4xsJPBq8HLNrNRucQ/U1RCIBgZaoxzu0uJ3PTMDA
	 d2Wvg+TaGga2zZ1CZ2EjfCSgtGv73YjMz6qbzHDgXvbbidr0QfxTGoBL5A/x22TTb0
	 0trayrVUCq6TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D635DC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 11:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087082281.28704.13948160523407779176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e2f77a27d8046ce6331c150785830a5db1c9a4b4293a87ec9ff6d87c55c276
Date: Sat, 13 Jul 2024 11:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720870822
