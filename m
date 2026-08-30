Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E7D16F288
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788062434; cv=none; b=F3frFZqzfJRrDs8rt51b7yNeewz0Dt5A79f1zVit9X54Yvz/wgUCmti8eEmJLKFfAuxFfT03Eu7QMV0NHUhZgYAQMW/3on04tVu37WykdN72YYTu2NxivwMlfwKVS9EkgWSJfUc9Xx5czixjqU3x4v1Lg2qMJBwiq/vAH3TTeUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788062434; c=relaxed/simple;
	bh=s0KcvvLJ6gnOSxbebHYt1r6rCnTbhbnE5MsxkCUipiw=;
	h=To:Subject:From:Message-Id:Date; b=TnSCayxLmRAYMl6rH+0nLp+KEVgq0IW/AoXaEi9JkpLoxe6K410aqkuq41bDLtF2FXMYXMn292XVkKX8N0BZbLbOXPB4tRquZZF3r8ZCk3Ed6jrFvxQUBkQz7XgT6Tm4lTmuvnrUiA6pob76iU97zwSHiRtuDG8jKdk/Bn+0fjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJJgZh7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJJgZh7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDBDC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788062433;
	bh=s0KcvvLJ6gnOSxbebHYt1r6rCnTbhbnE5MsxkCUipiw=;
	h=To:Subject:From:Date:From;
	b=iJJgZh7f8KAjAv7auSaxwqAQd6hccJ6Mj2Qis6kvqUnrhMP6KgJXLnyGgj4Ekejlq
	 c+egzAk0hqHsRSpUppPKMBfdQAT6wfIjYOPXuzO/0S4tcAFjoa3y5+HW8HZGKgtR/w
	 P8AR0Zaagb4PVVl/lNmDNvPAXKUGsobPuNArj6LAYAt3IX/hDS+axEcUn1CDqvtvdm
	 ed3UkfbEoutIUa6vVTV3/feiA6PBy5v0AndELQ3yf2iUJ0nmC0lmWGpZmhbNmuDyr0
	 gEHxwgo17pKs8TgeL3Fhy+CqhD9ysiI4QYSHRd7yuknSkO/DW8A50t+ySOW3OfCZwj
	 C4tBDdcpFjzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC09C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806243369.13849.814720089839658089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bf867d47fd675905bee490c19b94082d9db58ed61f42d1f345b0c3201241f4
Date: Sun, 30 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788062433
