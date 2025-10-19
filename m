Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44795178372
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760856594; cv=none; b=LX9BbuWbh0tpgogd3tYRh7/myjYcizoHw2xtsiMOWT5u64jn1ANmtUckQclSB3BcvpQjAZ+mEza5NHFLZjG8h3X58zM3j9O96xXX9nUW6Aysf5SG33OayglVcXEgTfB7SU/jCJLlzMMZK3QlG6i2Kl5e4lCqM5qZ7FPDiuozyRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760856594; c=relaxed/simple;
	bh=0xddGTEptjrkEduspJkontP750WwUXqjX0DrFf60/AY=;
	h=To:Subject:From:Message-Id:Date; b=JmvUWYdnTH8DTNuC0CkEGtyHEjg36aSZFVf2Y+M189fwIdCF3dyYxxBip4YI+o+9X5vR7dWe+T/UO1KqDmS3AvwSbRWgBTdGcg9STUIw7FkSC/STf+Qb+tqqhX6uu4uK+/psrinbcNwU3G3jRRvdMX3OXu5O0nTvW2kLVkv/kec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvebiaAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvebiaAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA48BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760856593;
	bh=0xddGTEptjrkEduspJkontP750WwUXqjX0DrFf60/AY=;
	h=To:Subject:From:Date:From;
	b=tvebiaAcwUAzq7WR/9SyRbreTB3hn0A/D2/RJiGVisNwLGwFOkmW6/WesJzb3QP+S
	 +vZk0us6OS1/0AccNuyVuMXqYjhghP39CcPLpkf2xtD7A0veI5DTrXwegOEWFUmOpj
	 YEPW/yYFGcpeH2za1Wqzg+ihK8JUT1moi6EDuCx9FevQlWPY7EFtGinjAIQlR0w8J2
	 R8i27FxkLxXDT1eSTbefL8ppCvzYqTgnyWnmn7u5DLr1YHMJxs/V4qKbo537wGmPI0
	 s4UuRAg70AbePyzt03Jjqki8p7+xzseI6cH6vvnPVJKQQ5f69HgbBRH8uKy6S+G41n
	 qgrDD4AQk4JTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F4FCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176085659360.6461.7052582826832885729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd42a1129dcf463f7c0c304add5eac13433c06e7ff89f30acbc1f9caad321d0
Date: Sun, 19 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760856593
