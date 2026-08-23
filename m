Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 058AC3451B5
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787446835; cv=none; b=e0lZxf4O1vHTGJkja/oBcyq+pwEpzQl11r+gvM0v2xSqMKiWGWxjSaCPGJI5XajfUgOI2o4G4yROFvygSbj3hKAGYuqhwJ/eS/7gvHMN6CB7RUuMaxbzknaOjXp7Q83KaBT4Ju8nEpv87Xmc5l7vJiH3OuWccCsTn/ICxH4MY9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787446835; c=relaxed/simple;
	bh=FnGRuS9Gt7IQIbibTzzjZiBrCfnH22226WuKYeJMVhY=;
	h=To:Subject:From:Message-Id:Date; b=BubYuoqKV+IQnRY7Lo9SQ6G61YsL1ne048FVrQlf4LQUIKDrN8wtAjginAQJcFp8tLcAKc+oR5GMgiWwbdmZW9A+MckUOlk9+bVsErc8kopiQhc3KQoWXuq56+4hLYNn8j8KOy09ZlDXHL+NMpHt7KEn8VUMGzuMpF1ezlTKiQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa0usJhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa0usJhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF6EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787446833;
	bh=FnGRuS9Gt7IQIbibTzzjZiBrCfnH22226WuKYeJMVhY=;
	h=To:Subject:From:Date:From;
	b=qa0usJhLLU9o/CkhHVMNp1xu9gWmF60Lf51KPmQstAlWut9Ez/Zcsnz0YwXO21VyF
	 edA95GNsyhfi0if5Nj9bBkC8Nta0ZLO+gJd0GqQvJCoJJYNHleNJEwPSz30km2sDwN
	 xCa9LKJSe3chv3QAB0UxxCspX8R+iRzpZrZrhfODzo+eyhM07W9nVnJHS/sVW1S9DA
	 qgw/psj/AF5C83rfzpsHitATFke5N3CeX2cI1xlPq4i72qtuiUo6swmIi+0mRwqmyC
	 FLJ7yS23xrvw8Laga6eKdkSKgTgiNqe92bXB2Fhw1OZs52asLv8zlurDON/7IXnsP3
	 gOqjZdtGUuEfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B01C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744683368.9936.14491306521710305692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e645b793e321e53dbdbddbc6c57468727c2b7b39726d6ee4f0e00000d6d9992a
Date: Sun, 23 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787446833
