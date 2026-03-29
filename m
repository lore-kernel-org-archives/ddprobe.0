Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6783815C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774802694; cv=none; b=WNJIOnquBO94HjMSATQQZ1gOvJzPpnA1Oj4g6o6/sqIkDIWaz7yZ7eRUdkKxY4IYfwfJpblWntipbxuSYjeHsy2xR6dlxK/1cgiIGZgzqOls5zsiEnvYz/dlUIUyE2i+KdORJzncn1cLf/FzwxYc8W1AO4gem2EVsG8cJFrahP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774802694; c=relaxed/simple;
	bh=CIla6cYoge3yn/qutd5BkS+yGDXSl3+Duf2AO8QFX88=;
	h=To:Subject:From:Message-Id:Date; b=fQ/UVPjulABbjhtO0ARDbqGgXETYj5ZigY5lP07s61dE8BSB/kB0sOGErIf6nxcZwbHcQ+GO09VGozy3qm8WT7joI+JxT8/n++ej0gvp9/eylU/GwM7oJVFU+8dPB62a1ENeJCNmANktZWo+moyu02ZSjy5ZtHlR5Fesm8OwjRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyZ2YVA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyZ2YVA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4932C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774802693;
	bh=CIla6cYoge3yn/qutd5BkS+yGDXSl3+Duf2AO8QFX88=;
	h=To:Subject:From:Date:From;
	b=jyZ2YVA22JnfiHbc0XX3EM6tTO0uCCGui189N0CqAquB9CYOu1mwiLUQ0PU7kmKYG
	 f67NhIqZ5JwXjyslfjBXTOE1flBU1QCWYxYBisU3UAicbiCx6F8slsv81SZ15unRxC
	 Jw/ntXv0a9JzQH+DJDI0EdfUM7clGkPaVnkaUF99RcXT6tL2EVwFX52Q5WV4EI3YoY
	 K9CVok+mSgAJt6jaWzLBHRiUa0phQ+WahqucUCmV0IsVhdPSMqwCjxFKopo5I36IXf
	 I8Dw2kk0oMfegcZ5thnpc8kRKaJOUCOqmf/3wQY5U41hwp/+r1kQ3Jl5/f/Ou9ukva
	 yNsFExZnGKQKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91339F3D611
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480269358.15980.18251667015908411058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc14969c07f8311ee0d466b5aa9680d2f22e00647c36509eab57c9728bd3b538
Date: Sun, 29 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774802693
