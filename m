Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3801C860B
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770346434; cv=none; b=ffCpDZabOs/ZgMge+VW9yt3YaMs/b+EUeKLq/Vt/OMz72lxbgYYBZoFyJ/DbVjiFIU1FNe8DkpbyB++8DuxULf5mq4B8e88o1+00IfVClwKnZM3CmQwczUHP3vo7uS7H4b+iMYjdLC3TtP2l2hROKQIK7HK2v9LK4t1ylvQAH58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770346434; c=relaxed/simple;
	bh=lk7+hhMuiSNRYnpbM/mrXAgYIrD7WC6YjN8Q9shFN7U=;
	h=To:Subject:From:Message-Id:Date; b=J9+p+b4jzv25mNDR8TZ9jvCmKJ3k3gV5chjroX6lBCqh5NIqYKiBV9BQgbHWF4IdNbNbL1rvSNmwtuh7bnksDvri0qex2mT82d2cS3iRWk5iCeWP/nCG8H5JdH/vCArXCmeahkVQyAcwqyA+lTDYvWBfT6C/QmzAFHgYWh3arac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laN5tw49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laN5tw49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD3FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770346433;
	bh=lk7+hhMuiSNRYnpbM/mrXAgYIrD7WC6YjN8Q9shFN7U=;
	h=To:Subject:From:Date:From;
	b=laN5tw495a4M96bg2JwQWksBQuCAN7NU0Dn2mkRWqqivr9A9BB7jpycbPM19ZDx0f
	 mKZVBgF9k+QzE2bV9GBOTK5Nlo2aOuRixvqQ4TAaq2aW2I9mpfg2sZ7dEnYRNSDnS3
	 IbrlUwuPRWnZ7naeP9g5ZyZoq5mgpQes3GufDNgvqGj4nWbxEWN6V9n+sQ7rx/ffmO
	 l0/JPT1DAQxYFT9bD9z3cdrGzVGoNlv5HV9asoKgHdExbI/QyR8K2cal5Spb3AVY9S
	 pBQCUJIGgx9QuRulidjGMeOJ351EC4DZJff0cXoN4JMMhCtzjNEB0xkcctXjXKTG9n
	 lZmSGYUSOFHig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950ADECD9BF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034643359.4790.9506593294102550283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0848e435ff5b62f67ba01b5096a88911dce4e4f673adcd53c8c28fe8f0cf1238
Date: Fri, 06 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770346433
