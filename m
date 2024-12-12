Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DB129A9
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733982954; cv=none; b=JKL5peSi9EICLqyu6IkpPlFsoFG1y8XUEZIhdNvXk0hA+zWCw3l+eGyyqxQCosdJA2l67PchNIG9pipXnL7QTlYjj6Ic7QzoheIE6QgquJKtOM0qwL9Mpw2Q6gqz2qMJwZvo/sUwe2+LvMVzWSFBCg3JQQIi7rEARfqzXKoeP6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733982954; c=relaxed/simple;
	bh=9JmuZW+lZ1doUOrx+1JjSREJR9SbpTkyRh5rinmioKk=;
	h=To:Subject:From:Message-Id:Date; b=DNjNQ16WRRh9DTx14t8EygFh90Cwy/iE6Plf/cxAE6qsV3WOQ0yHDTMAnsV8ga1TDnT0rwCvitglnvxDKhAZWxHsTuY4fvNss7obYTHF2lX4F82xsvEWdEbJ7ElrGb47hXUWPtSYuquHtBw/zTaSgvEam4/ajAnAv6KaKDA+/Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKGI+dq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKGI+dq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F22C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733982953;
	bh=9JmuZW+lZ1doUOrx+1JjSREJR9SbpTkyRh5rinmioKk=;
	h=To:Subject:From:Date:From;
	b=rKGI+dq95F5IkCOA6Ng0UOSYjnnJ457auyr+Dc8dl9AZYZZA4btsBqbj9/zd+7ZHa
	 JhjWIGbd91RekqGe7yDQBfQMG3C1ezF1qwLqREiINf7qvAhetxrDJksYTf67ggceFu
	 Q9a1toTc6G15bpmTKP4vs8IA20QGI6NDmXC8u7KWQ8hlF3NHHmZQ5pUhDbnf/J9UWm
	 0Bt4mo5TtWEFNu0ypZ1kiUBP2QVVWRvh3MIHDe1zCC+pnLZrJ7lAyiy2V5Jk0zD41z
	 HIokXWbWbF929WaJ9XibFLxibt51e/Z0GEK3ZBFwTWCME3uqkKOJqNQQRyYOBzjmFr
	 Hw+HMCpumZcHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F99E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173398295359.18610.7534708352236669494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6e1bbe42d7dbd81e771c9c9e01791ecf34f469e1298a03f8146cdbe38e94b9
Date: Thu, 12 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733982953
