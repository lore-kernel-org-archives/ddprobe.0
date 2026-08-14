Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A9C3E8330
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786742434; cv=none; b=R2Xa5izw15caGL3Xe2Qa2Owox5lH1aoWDM02/RBi4ltWwskAKE19mQVQySI9AcHjqg+TIDaMNJ4vLL+jLOcFchr7xtDTHQbvgedLnHw/MkI94kqCDCglZcjnnLgplZVwKlm8kPHVgYDMSc1KrHklKnqMQS21PIlmJQ9m0zNYNgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786742434; c=relaxed/simple;
	bh=3FOc1VVBDpzB5KlO1WFfaO3PZ0ErT6fTC4bNmVISJQQ=;
	h=To:Subject:From:Message-Id:Date; b=E+oJOuc7d21oQZ1m2ApKR6ZZmQaFmzAOYALfjqVuFhZweLSQjmgeLxZxQ7SDB9OY3s37qcb3QVRqpTH3KqfMbUVxx8enPbWvxa6LQ96IkYJYA0fumL7Usgycpa7NdfuKBKO4W7eg+VJ/VhiETkuM5p6OpaAXqHfOOlW6nmB0vdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpIVyLcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpIVyLcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5B6C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786742433;
	bh=3FOc1VVBDpzB5KlO1WFfaO3PZ0ErT6fTC4bNmVISJQQ=;
	h=To:Subject:From:Date:From;
	b=ZpIVyLcPx8Zy0M4CethwiBAwJJC/PVqfuqIHjUUhiqqUBjBIwF+Et/F5UvWi9gvTD
	 2mMd36iRzTb8+aj9fAgKNEyDzm88taygS+8Wt3eTl/HoyOpzEVGbwb4Phdjlo1JlMd
	 t1pBm1s+gNpwW40OCzv16y6HqvlRcKAbVQaox4vwRK0oP8S4BwP+qB60W+/4bFMtxm
	 Du2qyAQxLgVMqaIPiIubvmkhfFcl7rm0OBQ+4nzaN0u68hiJXYpUN6gjD9fT+DL0VH
	 oDt2og9lo0S+7sUXqONIKz4y9uBZhp9X1asO8uKOMScLGJ6/Wbf3V4Sp3q8AoXjwJA
	 y3MC4gFQlD9yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC315C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674243369.9186.17181388103696678782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdab2e815e2b0a75eed15c266fe5f2b2d7d7a6815b36d9cb17559709b89a024d
Date: Fri, 14 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786742433
