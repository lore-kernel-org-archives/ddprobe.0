Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660094EA367
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791924034; cv=none; b=pMR7dLpH9CF7RVijCtJkzsoSWouvMQeLBCvxZ30GMLDkBPQN6QdjcDiVMS5l7av1vJzTGDXIcVNz0nWHjZ6Ig/HpKN/qXEpkkO79d6XAiDQRVJxsfFH/nQC/EAcXwsXjBUeh8Z04PkElqoEemfZlA9U0WZYGGL1MGWtm1Z8+wMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791924034; c=relaxed/simple;
	bh=aoe2iXuQrHovhvUYfBLp5tNRwWoRIbuVmVWTzBxX8vI=;
	h=To:Subject:From:Message-Id:Date; b=f+6DY7OhyxD/7JD7pihuknj3a9nRbIPtptoFPsBT2mmdAZHPXggkB9kB1daTOxJRPvKC0WbnWD38QuUbB32vJBzcOsdDvuqP3xbSq3JmR6r/bsaY2bxY2eH21jr08qvsnbtHNN3uiO3H2ge289O0njLdBEzoyTB1PGPw+C3dPcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5lHxRGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5lHxRGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF73C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791924033;
	bh=aoe2iXuQrHovhvUYfBLp5tNRwWoRIbuVmVWTzBxX8vI=;
	h=To:Subject:From:Date:From;
	b=F5lHxRGTmFJtSWhkZZIWpfofE9BZjNTwuGVgBsoOPWlNgsvgzDyvfd7Xta82SZMft
	 DBWvl9/6l53aPblbxBrMFgK/3ry3hZIjHGHhFClqN7K2Vg2wAvwibmobCvT1oLzjIb
	 REZBfCSEijwxeOx6HQe3ddSI4eQ+Uz4AfoVdF8Bx/3Dm+vMEaqijnZXLxbqeOtDuZQ
	 +H9/F1Mt+Lw47q+xvlNXGynfW1BgK6TOBVUp73zbuVRczjL1L5fbGRscbfLTdV+FJ7
	 twEYcOER8RBdVQXEw0mF0iFvHosBCdKdLxxpm1ZfK8KzmDeUSauSlohA8wknn2zztf
	 rXDgbFeyuToLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA34CC6B19
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192403369.18521.13777282843388536439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2772ac95f6159153e34a4df66aeb2ecbf7e3cfb0573be0e4f8ddc8d739adf91
Date: Tue, 13 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791924033
