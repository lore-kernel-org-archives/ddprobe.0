Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338863F6C3E
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790148034; cv=none; b=kQMAo/Q3O7s44OXlgkU6tNfUySDl5yBbP5XFRHrvGF6yhNTISce7X+PVI5yRCrrld7Jd4hlEDL4jk0Tlg+yQpjPz0m3jV1X4mquzY+Zc3vOvaFIAMpNW0RxbebNXoYK5ECuKj93WBMNhjVQujYzcrsKwBC4HyK/sIr5dMEFPZso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790148034; c=relaxed/simple;
	bh=5VDR76GfjQCABFbW2c4UvIR2qCLLsjm7tSvL8oPmyNI=;
	h=To:Subject:From:Message-Id:Date; b=d2PPwnqqUvYqSaxAervbsyA3cFIG216ClysuxRCxI/JQiNQAkl6NyfqpIxhEELbLj9ZDXz/vr2YeW+rudjU83gQsOUFp7pT98E6sGFQeZl+5l2NhN54Ze3bULkbQLFb33x/8Y3aPwosu2lEA4dqlNAP15rqbdSWxEGrbCicysws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfngJ96C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfngJ96C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF11C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790148033;
	bh=5VDR76GfjQCABFbW2c4UvIR2qCLLsjm7tSvL8oPmyNI=;
	h=To:Subject:From:Date:From;
	b=kfngJ96CoLZShn6UhOXkiZ4BGwZMiRPyDt/HK0nTtT/1NRtp5Wur/V5KthpM8KKs3
	 cpulPeN3k94B8bbALeNPVH/4RLRQmatt7nXP8oZOzu9Em2KPhM4NHTSPynGydF3o4e
	 MRlwN5kQ2rkbGt3dia91UY1zxzXGF596BVgWz7xdQ8JOZa2jSpKl+s0HNHuEQrocDR
	 Eo5qtq3hEKjBfYQC6Lj7A2xW1+PRR63aWLSXSWwabCgw4kHqDESHx7OkL4c0WJB9aS
	 jLzkAG5T0o8EKVguNqoSEHaBL+51n7K8BLr9c+5AohS8JYS2Lvf+ozw4zMr1088SJG
	 C4EUS22pvY5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC396C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014803369.8118.12401042977787347061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6116c8af2ec0a78905b0dfd2e6cab660a5e2bc300dcbe5f25c73444cae7b2348
Date: Wed, 23 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790148033
