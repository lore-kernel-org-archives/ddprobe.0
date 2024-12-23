Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292B863D
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734929754; cv=none; b=lKd7dnosKbN558NQCxeArmlj0mcNr6klF4FRqIzYdN9QQKdGy8vtUVG+OpglfaDqL2nkuaK8GotxXdnXPEY60FSGvbmtFpkZAEZRNhFe4yU3rkezXf6/YFfb0YhueSaL+UYqGPh8v6acMb7V91IkwFjjmxhWOKj2dbt5PQJUjG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734929754; c=relaxed/simple;
	bh=g7QnZtyiyvFxU6U4nq0W1zAHyArFmRSxhjB2h6pxlzA=;
	h=To:Subject:From:Message-Id:Date; b=O8nwI8+SIClhFzbj9lOYtM/NpdbpEJ91HusfqDV5yuOZnYVq2trtbVsi4p5oVlWkBtyZzKEgf0MYPVKPpO4W3VCCFUHcUxYlbkLheamYi4As0vARggiRMJmEW2ealar2A9uQ8b7nq7hF55KCk8YXiWAudQT8UOYyKCD/5SQ7B34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qaek6Eyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qaek6Eyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA2FC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734929753;
	bh=g7QnZtyiyvFxU6U4nq0W1zAHyArFmRSxhjB2h6pxlzA=;
	h=To:Subject:From:Date:From;
	b=Qaek6Eyz0Rp/gERJTxHBA5IGZJn/ey+cfHa5/2BP5m5KPztPtool0STrjjWN3S6kS
	 37FradfJRjoQtSCgBSV5NbkrzvgzDExuvJFKk375LfnxDZyJgAnf1aEnp4DH8csmeQ
	 GVJQOOln0jr11b+TwyfpjU5KWyGOCBhy1X0UndDYHzKEbgF/e+dW7YUl8vKymfm7pI
	 b+v1PhvBRl3j8Know4lNm18JBERpcYWjWldgHMzBCuyRn2KdBWo0Wq9lP+VIxSggiv
	 md2PSA0p5aToIiwgFM/6hPzr+kxckE9lQSA+17aqnABxh5ViFxUZoXFYcZJRFbh+PT
	 MX/nuqaM1C1vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E36E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173492975358.3058.6497457017634119800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b801e7394c2e7c39766cfc28744e8034937a99b7eba240e3d05291082c08bb
Date: Mon, 23 Dec 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734929753
