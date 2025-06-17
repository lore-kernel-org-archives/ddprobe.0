Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33AD2ED858
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750177194; cv=none; b=HRuQxQR/4ClMGjHb1NqbDwabljRO7vh1qbRfZckxwywn92uu4/ptyKbM5mwVrKfWnZMmAIWI5DCOPNRlhlWZ2FdHBIlE/AyjbOUM1iIWIdqUKNnOrtaQ85G9CldCYk7I/AdTkcMd/QI8pmrAQZF9zgCTbvO5Pfkpp4ykm0O1O6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750177194; c=relaxed/simple;
	bh=xMOt15goj7chAdCNXgdn66HIbSczq0jaAPSVX7Kc7ZU=;
	h=To:Subject:From:Message-Id:Date; b=hUGitEd+3ptwNlfouISoKBdWGxyNtn3HlfAipESdg9v5yTgci1k3cwewG3iJbWO0LZ+DMunNg2YG6cQ7mfV0UyI7fQW/eAoQqom6VAfMqkCErvh9xJ9LYyG8OnMAnWL7Pwgk4tTVEe1YBx6hD7ptjg/9D9wqVerVmDztnH0rChk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSD2Do6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSD2Do6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C00C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750177193;
	bh=xMOt15goj7chAdCNXgdn66HIbSczq0jaAPSVX7Kc7ZU=;
	h=To:Subject:From:Date:From;
	b=FSD2Do6KCM2giUnhgbKu81Gwe6BT7+ySJfvXmWegk78T9hPIa8V7uJGdYhfPfIqbF
	 3RaRMJacyYK4oHnJER93XbgAw/ybyoRI3zcVM92mr0gW57DiIL9LDOHYSYPY/xyBwZ
	 xGj4w6Qnsod+ZVa00QIfZnrZfzeKaA2yWgLrJBRQOUJ67PEegDXiDP8c0i2KUDyHqb
	 CVCr+SgfJwdlI4AY9KHujmayulKjX7ZhJSfuIzu+EQfDr5LzGykBdTdVSG9wKZgPNK
	 uYmffiod7ib8ODx/76Y4y+xaIttRKMzFZoWu9xBAxI6wsGWgsGBe8UEZsUrDu77ey3
	 93lGI/os69NQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E3C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175017719358.9979.3158656916660422891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e809828092cd242b71e81465f8d3ac5131623d22c9f5b63ff4188903c54a5450
Date: Tue, 17 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750177193
