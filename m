Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC6323E334
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772251494; cv=none; b=qavZq8sYwhkd7ouTmls2+5A3icdEcFANl3Nowx7DEKgeYAT3u+olD1hV49GuIUOq0isy6s+DZUlqg0wpoHv9CvzZLZuQ7eAMaAGipbLZwWzR/DaqnwgrocJ4wvvFvCNyzbXw3nXnqhhypCbHatlEM5dGhdhxA+Y48AYLZPL/iuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772251494; c=relaxed/simple;
	bh=2Ob8zPJED42Gyplqq4Pc5kGrfIg/QTuK9gTvmCpm22Y=;
	h=To:Subject:From:Message-Id:Date; b=tFvZI5MWK6UwaYak/Hpdl6Aif6tr1WrV6QCjAjzcwAMLg4fjUrvMUuW5MF6Yg8D0oFVG0j19HPFHI2/0LuONclgzvlIiwTKmHwb6+x54QUwfkXZ8JY3ufcVqmJjJocbVOo4HUSPb1oHOgVMPyD3xrLIXmC9wwHEJAHkLJqzZqFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k75J6kBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k75J6kBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEACEC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772251493;
	bh=2Ob8zPJED42Gyplqq4Pc5kGrfIg/QTuK9gTvmCpm22Y=;
	h=To:Subject:From:Date:From;
	b=k75J6kBAwJSeXxTbX9wXK5bT8OaeCNfsvVPJozJzleES5lSQv/+kxAbaXql8hGVyM
	 zqksKwJRmatJo3AoETObLWoutxDBhdiQcnGKUxEwbLKJAsTDvFP0VZQCrdzKkflmDD
	 vyRIkYqn1Kl9yjr25ZbrkykzIh+vaiJDjFa2BEaUcJ+S65ZzxPXnBDJnGjwHcQNy6I
	 h+yxs9IuwzAIERD8FA0Q7XmhtcnvXIG3mYW9ug6rueGgkLBuFswy4AZfwFIwo70O70
	 wdN92ZuPHVesotjxUngunnsflfNMr4fCYmEExW9bMamyKLnAhkdUkaClyIr04W7CNa
	 77anyfKRsebFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CF0FEE4C4
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225149359.9636.7842319362264878127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994c62b75c26e0a25560848f12ad91f65052f19025e7c904c8ff044480691a6f
Date: Sat, 28 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772251493
