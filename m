Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4497B4A64F9
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789146035; cv=none; b=F5J7yOGzm9eFhRoVkSVOBYNKFCeXO7H9Tiut6hibsD22biZHqbDkQEMXXuD+62s/k6jsWwvqccUFYPZnTdhAAX4jYZjJ5NohQd+KTzkN+caKPw4fwAiIXPqfL6dExAeRaGq3N4QBDNDrXiFQn1VgxNsoTVS4Sxre3rTGBaO6R0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789146035; c=relaxed/simple;
	bh=2JUICz4GNp6+wagnVO0XVrCFLuaNi9NVuhldUIDG1Ug=;
	h=To:Subject:From:Message-Id:Date; b=ugTvv2wehex6k5kMvFnA65xz3Y5Xwx7/HfHbiSqMeWAogfIczLbSvnyWgbc9UHf4fIQTfCDvGz7/IZYFbq8wzlYF5nsNyxQzoTmnwrGFPA6n9KA91xUjvx6OfPs+RS5SbErJ195iee+dRzZ91JNdjGPbhoc2qGIRVL+NVC+hMp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQkIM/+k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQkIM/+k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5C3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789146033;
	bh=2JUICz4GNp6+wagnVO0XVrCFLuaNi9NVuhldUIDG1Ug=;
	h=To:Subject:From:Date:From;
	b=WQkIM/+kWhLDs3g5z8uj6eDLmDhxPy6zzBGsAQ5vHXsYLg49d8s/zv15wi3N9Efan
	 WTwFPN5FtPqN6Giz2bpg3mKyF0kjtS/xegSxvtXvZY7MVMNAJ0GTjySsAlQm3I+XSv
	 fV7f253cTAOQ4VSi83MR0WveHCh7Ed37Bk8es671BEC+2WkYZ0Fl1SVIOp9HRBnUVt
	 7DaCeOqhRBebofsxm4MBtklMP+MeGLOBzJKUaLI0BRuXPDiU4ixNrgGnmUb4W3U3KA
	 N1/8C4f6hclWyBYR6zXH1EAafqgzLyBQfxcvihXVA7ne4wGp5KCsW1IQydL1cixKiO
	 8XHMcFxKNZAUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFE4C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914603370.26467.3406594860545795046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedc2a8487bda0f982a1138bad6e31fb307973f0908111cdb00b5f49a15fbb55
Date: Fri, 11 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789146033
