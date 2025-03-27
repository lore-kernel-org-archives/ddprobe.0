Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA691CAB3
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743094194; cv=none; b=cbNbsSxjrZ47cFOVT41TbJFy1NW/A+7qYaTI7iFGsm/wuqB32lycqgtkTzYSBxRo3q7DASgIgpB12PKqGCCWJxTGm8Bw/hJ9BDvnRdEwH0oG4bE/Vfxij6sRKT7fGRJrIVxJ6kAQiYXGhLSWzNqjL9h4x12sOIY23bV31Ss5CQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743094194; c=relaxed/simple;
	bh=dEaDbIGb8e6QE9N0/jI0IWc2ZnkcPpx2LdLm8CO+YGc=;
	h=To:Subject:From:Message-Id:Date; b=ga1FIKldt5VYU7ukq+kz2hG9yx1OjM7Q6D6t9FB5QuBHJr5DB4/UJdh4sjdLhqvVo0Sn7/NYAqdnB0z5aHUTOnJpBW+lhzpBRLxqz5XIXi8rJiTTeSgJ9glX3tRYl7y14FIclluz7g9hAfcjr8YNrTJWAHri1gcr8vqTU13MdBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgAmYo1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgAmYo1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE89AC4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743094193;
	bh=dEaDbIGb8e6QE9N0/jI0IWc2ZnkcPpx2LdLm8CO+YGc=;
	h=To:Subject:From:Date:From;
	b=pgAmYo1yKBEJIwAAksD1pIXoSHeAULKg/INvBH5h5efsubnBS97aDuN/RzvbHjtIG
	 wcMYAsZmFuhb4nJI94+cKie0Oz0NhCF0BtIiehiDWflmct4lv3AGSiP3sbaBL2nlbd
	 pkSDML6CbRzZV+Xm2T4Sg8C/qz7WoXq410Pioo/EskuyRryV3+e+PGg939mw8hi+NY
	 MqA7yeFOydt54FQgiOqjch8F2JJ7HmSWo2ehFJ/WIikJgc2Mta6gzWMqR9/1L9Ew8l
	 5pm5aBSLDtCW4xTKSXJpT8sfR6XJAj93TmZ8Kb0JF6HFi+158DgBP3m+i5LGmtwrzG
	 Bfj70k4JfkQFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F0F4C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309419364.2442.16608597538982758208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00e21c5a56dda59e22dfc129df7b8505a174acb573a0b37118d5ae640424c54
Date: Thu, 27 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743094193
