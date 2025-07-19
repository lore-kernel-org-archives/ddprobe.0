Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C581DF74F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752941394; cv=none; b=uM2d5QrzpdhSayCUIqWwByYMAeyMxis0xeFBGEB4N7DM+576eNvNCWXNGG/EBfmWLtCs+g2ShtxWeuvmtohCeW/bTc1TSDpKnwC5yINUa9MGxuqtYUDXqDRPVpJ8h0zs33+bYtkwa+9KjrNo7slZ65+XIRbIL7BvYmvQovIhkFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752941394; c=relaxed/simple;
	bh=ObSDkYw7ZEyy3bEri3srpY/7c+HQ25A7rfSR+GjLakg=;
	h=To:Subject:From:Message-Id:Date; b=k90P1/w7qw9j3/P3Xbz3vZDBrhJpSe5blsDR+Fkq/8+aMZJUA5HelvcdA73JC3PfXBpdAb/8plX4xbgyiMm4ygW9W+QHvzgKqHKATirTQlPmzezDkw6o/EI/9+kHv6cWH5PlOYSYE6Mjn0jm/0wQsfX+FiQEc87GpkZhYTlwZmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS5IpoRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS5IpoRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83FFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752941393;
	bh=ObSDkYw7ZEyy3bEri3srpY/7c+HQ25A7rfSR+GjLakg=;
	h=To:Subject:From:Date:From;
	b=BS5IpoRj5x/2wfY/oplLHgo8Mo74HyHQLt28O3XDwD1ZW985sbEjHMzoeijGdEo+C
	 BWPR5SSzHXwGC076EgxgpOFeqNHB9hm4GCJPMmH22wOkUJLeZMmOaRyB18ALmpiLHl
	 ZV8u4+G39CG4varQIu5cob3N2CvyrqgvbUc71ifHQSIx1vR2GR1AqxCV1qJudSrkuf
	 QiMfGd7P5HKG6/3Q+sXhuxajN7MW7vnjshdE4Au8OZlWra2JucyCilblBt6FLaZh9m
	 iodGy37vJRSjQg7dsvqwgYmFCsSVugaE23Nhv9wjdPiNJhEg+Yci9iPc4HxuPydlrb
	 7Bk+7fWYEhNmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9466CC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175294139357.27548.16412631447124560037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bb54511f508f5922ee96875ad66ba189efbd49156d0a39dc7fef2a7e087961
Date: Sat, 19 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752941393
