Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA231DED4A
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754520594; cv=none; b=iNoQOLy9xqFanqY+suIUhpHJxMZd7ulZFAU8VbFfBk/N+madOtx23tE7fM9FfRO99utSbefo1stkJi9JFD4RmlqLt5HeSAnycNZSbVgl1liwD60mJyO4ffWbPz3a9AhZRTrh3fLYM751sqYo0YcfezH9MOxzXijWu/Vnea+ADU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754520594; c=relaxed/simple;
	bh=nU6Ogk2lfyEIzdzvcIspoX6+agdd4fRqT/2DLH+kiV4=;
	h=To:Subject:From:Message-Id:Date; b=liqQOjVjX5D8rdXjXHN/Z7FAucIdyjJtVVryjVfwLOisIlDU6tE4g6s8kAro7QCVSbVxMRTluJZIs5dsCCdhmy+qd3WnYn2m8Y/TkOUSRnyhe+Qs4w13zPUN4tLmOLPGZyg//lO45ZkOB9D0bJZPUSuORpbi5r8JFGB7mPg7znQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgRH16LP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgRH16LP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754520593;
	bh=nU6Ogk2lfyEIzdzvcIspoX6+agdd4fRqT/2DLH+kiV4=;
	h=To:Subject:From:Date:From;
	b=cgRH16LPF+pb91GdVuZWMgvi3dnC5HOzNJP9i7P99O/Mo6W5W4oX3kbQcVRXwFmTJ
	 C5z88MugqL/OhzYsq7bkQKoUFVkioeUnaWy0E2+W9c7mYICCs5/5bF7Oq5xWbQToDt
	 iVk8xjmamx/GPvDi4GvFawS+7oxN+xC6dQg2zf1iJJ1VjFpNpwB8nm5VYDWZA0kF67
	 wHGE6vadi82vzZ+eefqjrE4p4c44DWPSPQov5g1xYRkhD4G0EkePXN0TkbSR+qXQYn
	 w1L8akS7IMweoTsg+UbZcrocDhYPfEbVg9TPmjBDAHZLEq0y2Wa8hPaw/q/H34yD3s
	 Z9lmVgyqb+RQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B5DC87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452059357.3376.349108917510287686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5affd3503b8d2794ce34647fb7c3b51290948bb69e71cd148b2a3e6addb8f0
Date: Wed, 06 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754520593
