Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD7781E
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718690963; cv=none; b=ZDHUqPu1yZwTmNz4hO0i4ZB6qRE4EumOl0kcLnqrUrXkbJc93ZymJjXdz83vHmbQk9/jBrIjL2/0+FiUg3e/qRd7TkiWzHRuDiikWSPqLoAGsvMTm9Lke1Tl19w0tt4+2xeP74ZgT05hggCfgFNMrM81jAK/a2Nv8lTI15tc7oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718690963; c=relaxed/simple;
	bh=NDh3ACOQ2zevXf8q5kY0YpqknfQQhX//VyHtI6zi+0U=;
	h=To:Subject:From:Message-Id:Date; b=YE1s3AFALm4HzBlkcXrjiRsdTn5IAiT4xtyr1tuMXCrb9GD7r1mli7iHeFuENcZdbeB4qbQJBZZLdInMGM3LB5H7YRf68YcH1oqmMnABDZL/oBcGZDebpQG09L+ehUGU2TuTiGL7DAG2qRj+6arIiy8S8+F5p4bnjvnfEcpYesk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a72/kmi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a72/kmi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5E4C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718690962;
	bh=NDh3ACOQ2zevXf8q5kY0YpqknfQQhX//VyHtI6zi+0U=;
	h=To:Subject:From:Date:From;
	b=a72/kmi/YfRSxx8rN6IZsOq6kAdWgWMEnEozjpGEVLqZ3X5tPcJhx3j/BefRaXzgg
	 NZS+zjc8Zu87PW2a75SZMb6pWJmJQ8z2YM6kNqWMxr4fhJS0Rew5N38bld/46eC8Xg
	 prCGYfMxR/ux/5GsVXcBbzgeftYD+RxwgLlEsBBK4ygxoKkEfGjL4D1rg5Gcb4krw8
	 W/F6RZUMYJFaphOfB6NtzL10ef/JdhzJtESXH5T4RMUH3QSB96JG0Ge2S7iExg1zgm
	 X2GB5hTLGUv/Fl7ahIeUc2ORK946bkzyKzdoQg4WYKWLZSQlzZjzVqOyfbWFRxJNlc
	 v5XlfQ5NgKZjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C08C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 06:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869096277.2151.9642110954703224885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7945b7abaac985b685b106c9e59790ec0eb76eb250a5e5cd51019eb55abf1d0
Date: Tue, 18 Jun 2024 06:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718690962
