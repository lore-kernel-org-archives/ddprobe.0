Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407941E5B9E
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747117195; cv=none; b=HHfVQQ8fEQ1jr/tnQkJRrPs9XnyDGyP7Dpce4Mn3KDq1x7TB2ddqcc0YFLenvV36Co28Ote7xVA1lm7aOrLJMLeZtLebpN4xetKi5K2gCqscsacJWjvwhjX+JfRAbg9j+c7nn2U8LJhfIIzGIaryQTlkXqBPODBZX7tymN1PrZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747117195; c=relaxed/simple;
	bh=ETJMPEwcyq7EWanGnyzdgJXnlbF4ysAapao0cU6bsb0=;
	h=To:Subject:From:Message-Id:Date; b=bFwqegEZAwRaxXdpGVlWh1Mfo9YmWGgBn7vctyTFlUpAz7Bz65//L+BjDzQEe+mItyUr8ENrpgFaz3stYriIE7dxbdJPeiByKVANVf8fUfCrlck3QbCQ9k3wsJKcnQeyZM2lL7KkXaBjafFfoSxA8TVZiPkDKpKJ+URNKIg6Lns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hySj04x7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hySj04x7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A290CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747117193;
	bh=ETJMPEwcyq7EWanGnyzdgJXnlbF4ysAapao0cU6bsb0=;
	h=To:Subject:From:Date:From;
	b=hySj04x7TS9aVUrWbIlYxrsE/jw0TCcyqu7UELkQ/bci3OXJl17J+To54oxELxkkz
	 Q6wWx8IclMyTkiRdx+SI1C3FCKA6PmmlTzF1OVHpY7oF41AmkgdJn49MqUyUnFmv2o
	 wedi6Jyrepiqxc5mSWlbwjkBhIZSBZ5Fjjnu5TNJ/HvpNJlhgtI14vPBbt4OdIDYvS
	 5BhC6Y+fFADJF+jNgjSisGWTRJdMVnLbC5G/gcObFhLGRNJAx8TvxAWqSR4FsuxFCt
	 BQZgbk7M3BLrrnFtVJG8EZ2tS+hcHG0LAjJhEMIQ5HkCR47ol9PZJKPpd1IsQN8Q9r
	 Z8sR5IrYsdUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED97C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711719357.374.4561794795548069527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ccc951942827de123fbb9953d61c5435453388fff622e36c9ca675e6f078358
Date: Tue, 13 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747117193
