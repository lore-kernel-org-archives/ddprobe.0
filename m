Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CD837186A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776409054; cv=none; b=bJ0QvwOurlusOaTkSXul5a/hpPpUUvbzZ/6Kz70DHx9qd/Y28BCnFn87qYdmLigcDsPpiVUSXZayBDupG17tWzh5vLsjb2HN3Si9VgfttnkdWLc79XXBvNqVMZtDAaJAaFXwOSFC2cldDdW+pYTXw2WODkH62C9N9QdH9+hFFOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776409054; c=relaxed/simple;
	bh=3AbbRNtl8irwtgnt6g/UFYkxG0K0LgazWeZIc2vX8xo=;
	h=To:Subject:From:Message-Id:Date; b=RbxkLI4/aU2ZCnpc2yGVCmURc0q+0shDStMbu1v9IElUeiTk1l1TPFhFwg4euS6gmqyNxB9rJ5kSBE4f0mQN29sqCB2LidB47YrnEJh1h7X4M4Xmyhapx3C7BIsaf8iN8uRG2dQKlLCTcodhYkvx6NklsSzGhdYtmjc5ogTkSrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF5bpfDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF5bpfDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77F6C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776409053;
	bh=3AbbRNtl8irwtgnt6g/UFYkxG0K0LgazWeZIc2vX8xo=;
	h=To:Subject:From:Date:From;
	b=mF5bpfDDwIhdC1aMarbQSNbHG6h+8yM1h+WWnwH8rEVOgGulCc+5ZORkGGSYvGuxp
	 k64opC86mj7b2X45kiFOV6vD0t+IusNjzNxy9+Fwt1akPaLfpZMGAVbVy0b7nuCywO
	 XuQYUXj4dUDLjxYvzJ9z2XFWhCcHL0XidDP6yqgvk0VMHqSU8xv+r6wrwe8V9jEYap
	 cUlGeBQtYK3FLy8NvqQ6xdoyx19tpZYzAafP258P3gkdibZzKxaUR4Y9zcEscN9qHl
	 GUqxeWx0hRewOzV5OhsJTrBPGq2HTbPMrk+yiViiZ9uof1TxIiQ9eYy3bPCJV5k8jZ
	 /e1ct8bQbF1BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A933DF8E4B1
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640905368.29431.11551147077528799926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7b4358d399fb8a4861d8366a981873fa0a79187b1606ee0601f2a9d8d69483
Date: Fri, 17 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776409053
