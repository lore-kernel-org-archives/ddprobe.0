Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3065F1E86E
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770417234; cv=none; b=KNsQDhwc+/6HWQDa4MC+xvfaGt/jqoiA4oK3O6ubYir/X8pvWIC1BeNg+8CCTWY+7Iw3AtSw81PqWe3axFMbEsVVEvy6zf4mDWCem8znFDdi/XcZea66aFlffJVQd60mszxqi4Hif2dG46mmPNepLICpaXU4PZxRkz04TWNzuUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770417234; c=relaxed/simple;
	bh=8IoqDTXqtkkUi0z2kGKXNKF+OG9TKOJyXK7igCI/nBU=;
	h=To:Subject:From:Message-Id:Date; b=g12PRjNiA4uZcA2/L7WAAPq7+skH7BjVvrnFT7BwYlz1Q5XsFlCXLezorCcbuc5bxCdFBUpbVXxm4ZeI7A8SJEKH00muMQvAPRLM2TK/Dg2F2tZmT+IKY1rxIPO7Ph9YqPgYtBlVG1gzfB0Cn33mNrty+6J0dyf2ODxJQfxrqtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lK/zm8Of; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lK/zm8Of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B338EC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770417233;
	bh=8IoqDTXqtkkUi0z2kGKXNKF+OG9TKOJyXK7igCI/nBU=;
	h=To:Subject:From:Date:From;
	b=lK/zm8OfT3YjfaibBDCxWeCDWjeob7evgRMTvh01OEiFvke2yBEoVxtMmxXjhH8uk
	 F5/CPvitozyQKu8Uu9VrbC8sJJ1Qau2IIfo98X2VzbXm+hkNYgzGY9tsAhvP0lJWAQ
	 ARNL2TjrB80Vr/QxrDW/DANzzpCzHFIWNXKObSq0BwOdgnMdtF2qCfBuUdQmeofiRa
	 Sihy8lEj6yTvW9RoUJ0e71izEjcBfQnbATPpLlOq+9ytz7hAJDABeWjYAoLEaZ5Drk
	 ZOhHB7sIE3V+F9ZiIJaVf53VwJDosK7e/Fh4qfYYUuCzNSdGNX7Vb8oHQCQpkTmxxb
	 A4eNqIWsPY/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EF7EE6B66
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041723362.31670.14726312582458888825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6315ccf48b75529afec80bba244e1ad1b4040c046ceb477a56b648793b0be8
Date: Fri, 06 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770417233
