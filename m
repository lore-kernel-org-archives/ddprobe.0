Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFB11E4A4
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729725354; cv=none; b=LJg4vpo5dzWpGEkNMs2X2sQQIxJ3I/3gH7x2Ia61Mk3vI7xFzxqIme7JPKiw8F135B3hq6s1EPIH55YFEakaMZ8INbLVdCsG0vjzTEWKjxE87dff68LaPkk6tNGTLMvx8WLRQMemed7M8eqZuEzdQfM0sEFPwuFBrvjhcbtebz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729725354; c=relaxed/simple;
	bh=kKj/nIUwi9UjPqzS6EE/a4Jjjz02j5ChdGyTLNGgfE4=;
	h=To:Subject:From:Message-Id:Date; b=SfvH1LYF4Yo6fbZTpYzK2Y0/j7AC9WHAmeZpyX4cbgijbYPlpSz3RUsZyWTH3bCerLmRGX3QZ3KyOc9e4mGgXJCevouCPwS+Hi4/zvi907qhvbaZPn/uPcySxO+uaYq6McC5yCxQnl9vRHv9YdFfghnZUMemtSkTO9xm6vgAeFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHtVzfqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHtVzfqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A452DC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729725353;
	bh=kKj/nIUwi9UjPqzS6EE/a4Jjjz02j5ChdGyTLNGgfE4=;
	h=To:Subject:From:Date:From;
	b=GHtVzfqQNMBK7gSpXXv2Q1gXWpM02ZMbVMSYEB+iPg5DgJqykP5tS/7Niq70nH/Ph
	 mnhnC0bcM7Eit6Kaz1mkzRwzHkPzXDADoQvRTmJ7YJdJvhxCQJ5ImkMFgKQGr1doB9
	 xYZ7w+BmCW/9UQHey0cFXndLB/oF7VnFgqC45AYtcdzBumwHM5ldxeKeQWBp/fmpPB
	 YO9NI84nyOOHr+P54uOINoF9gX8oMgqVEyJpbWIJUgVR0nQswJDMSjYH1QusEFrdEA
	 JlHW0D8LvnAyanppEIIMERaEFvi3bf7hRrm2bc78L4yqBOxPfkqDlBSxivPWCU1P2X
	 VvfNaa9LteQWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A77D0BB46
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172972535358.22577.5404570516269320104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac1ee9c7a2f459533bcb6d225a2531544c8f54782bc2633701ef8b6902c6f5f
Date: Wed, 23 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729725353
