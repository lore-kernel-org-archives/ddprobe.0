Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE8C239E65
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769946234; cv=none; b=U6/dzh/wbOlMSA1O7NIqSE382DwGuh88/5BvzqeKO5zNCIbnUnTPksHaoioJPlaLEUCvVR9p0lBhVvN2MZa7/W+vzngBrNt1962IJWVSZszk/ZbvE3QPmmWbbIIjQy+1Oechbd3vBmozYlKcAHlegqm9V+4JrY0K/EdI1Cv+XHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769946234; c=relaxed/simple;
	bh=glOHfF0T6rQyxNBOtZjlqzi9bjEw5rArQw3FFlkfBbU=;
	h=To:Subject:From:Message-Id:Date; b=pSgT0EDuUUQl95NKGdNGlZT5qCnKlg9eRIOwcGwKvioSO9gE4rabit8EAGkiIvAPyVupodUBuQF8GC5EjJKdfVuOLsgVqNT21FYqX4lPwbSAwoGlj5iXQGrjeC/UdUNze7lHY1C5XX3Cr5TIbkBbOSUXVaiLATpKfB2sm3Isw/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1BcyxD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1BcyxD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A299DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769946233;
	bh=glOHfF0T6rQyxNBOtZjlqzi9bjEw5rArQw3FFlkfBbU=;
	h=To:Subject:From:Date:From;
	b=t1BcyxD6WS5eyu8EDiJQePOCr6TU+gCyVPJRfmZtBn4z296nn3xhU1rZQDSl98aWm
	 nw0QE3FkIVlnLsUArGOitG/9c1ETV0s3kxECBQmR0RLIbvJK8kXChCWEUo+kk9cXKc
	 qMv7WEteWmCcJU6wvStFu/+2X/FxA1Im/P1TTcNsWe6B9a2S56wsxdzzsWSj+l3h8h
	 v68+pRiRofFBrQ33LrtmtMRHdVK8Wh7G4WOx9QGIE6wRyfliZa/dnlXz3MIhZgrD4o
	 CS85teqYyJa4F56yApdPzZgr5fIaBevZTUke7pDhaAj0z/iCCvEjOaRE2HDfMHXFsn
	 XB12lthAl/qCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500EE7C719
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994623357.20689.6004379616022571100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203bd51d5f53210b16b6a6cc435caf3edb9de66d69c3516ef908c1b79e46e3bb
Date: Sun, 01 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769946233
