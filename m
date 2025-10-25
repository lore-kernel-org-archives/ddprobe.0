Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EE822D4F1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761413994; cv=none; b=H617RBC/tQoZcx2WKIQe0lmyAHvOc4UyKDOe1MJDztu8rysgE1rzdcIqo1QYTzVQsLMdVwVEJHvOJTbpzHqcWN5lRsAu+Bd+AIacgQw7NfGbUUFKWaj5Tb9YRHX1cc20jrwFy3KmlQ8Gmy3W2TVT4f4x6Pc571M2pG6WRUlOf5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761413994; c=relaxed/simple;
	bh=v35iPU+ni72z5WV9FUvf0rMoPGwWmuS9OeSwbSuqwwE=;
	h=To:Subject:From:Message-Id:Date; b=KFPcbHxsdOQD8lgqckTxpUGlqV48txmGk4ou+/JYkk03UWD9suQW39E+mUnTU4hWQRAqqFhCqfYpLcrw4KodGx3EdsIgWIq8aPnAVw0bqTTEIHKwfJl9m3pcvRxIqHKRRiigVuv2A/D86PxsDUjdPRHi13cCZ7OkRCoYSGzlATc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WlHiwkwg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WlHiwkwg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD37DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761413993;
	bh=v35iPU+ni72z5WV9FUvf0rMoPGwWmuS9OeSwbSuqwwE=;
	h=To:Subject:From:Date:From;
	b=WlHiwkwgimwD2dEPr2m3S+31scRT1djTrzJJNY8CxFp52aiQjEamTiQ/TDaofFg8z
	 vHkpk8uWIJFC9wZ6LPLdb5jHOHM+MTFH0PMKbEruc2EXiHUQ/NoTFvjxrI0jbmeRcN
	 75+ZHA4iC9EVDY8bMUFQ5DEn6ig50QhzIDGBFBKzkcoEH8uR1QZCsysplCWNAnQ3oz
	 eIu/izvkoujjac32YfL+dStoa+SJq5JjCZSjTJ6wTP+9AdBgPRQh3Df5HvPQ7RuxG2
	 wpYSZR4Zkofa+gzJQyds/4q6Nd8+YaLNng4Uo5T+fbo8pXYK0fd+iF5vbaKwWi89OR
	 IktzkswSRR4Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D44CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141399358.16652.8154653261064825306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f045588cf4b1cffe1c2c1af9906f6390ebef0f0d04a3eea0ad125f997a0497b5
Date: Sat, 25 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761413993
