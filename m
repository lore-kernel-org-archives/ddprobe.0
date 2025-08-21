Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0182C08D4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755765595; cv=none; b=NeerqGCOmVfO/oVvQjyIU/WvGAmXRFO+wSQyaP7zTTkeDG0oT3MEKlfdXPb75Vm84Lv5kITWUZF+08FznYdOadA1j8mLk/5+H3IqjgwIgFEGMlSoO78i4NWlfF+kShO24dofW2kZVwkXJ1gWui+BjVWrhr1LdqJoByZPfyR8dNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755765595; c=relaxed/simple;
	bh=riiT2t0qWANBLJ8P3wxz1Qcy++UJLqo4zmvsGwihauo=;
	h=To:Subject:From:Message-Id:Date; b=XMFoupwU2o4bTVF6tzSyD7yFmQYRw2fOPaIcV8FfaaBlIC8f21yilr/coqRS/LC/LzGOheFzCchdXKU0WJhvRmxwocD6dQCFeSMqennFgyaqUv1bIze6n0UGtH6sVIAgw0DwrlRqhF76uv7qhDoIzc+54QIMiIjzydYePMZCYDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtllzQ2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtllzQ2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C4A1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755765593;
	bh=riiT2t0qWANBLJ8P3wxz1Qcy++UJLqo4zmvsGwihauo=;
	h=To:Subject:From:Date:From;
	b=UtllzQ2+paGoDLWvbowBmdpddW4dGzbQg2aANj4WFeESXCO3alGv/bTiE4HE2Dz6N
	 alop6ve0rQF3h9UuVKMoMd41vhVFD1As0hSfhzeMWqSAkHBi2CI5ayqfTnjeJrQ1/A
	 pzbkNfo9WVZ94KxTOfWX9gOcZsL/SWZPKbVGowKcxEaGQrTF4OXiC6xKVj8b/0LQCI
	 GMdZx54V4uFuVhCaGI7EavYmcqXLbQiyJ0Gp3WqEi8MRbuheDPcpFdBLQVMRMwQK3G
	 AX+Rtn3idyeDhfGNTfg8OAWQf+jcIWM0968Ma/tezyUFY2q3431+ZVYtJRIu0DqQC/
	 612ZPeSmPMi2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1EBCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576559357.24952.17388668131523018299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad00962644ffdae4e4a4704db71586deb9abaf5a433a5eb38e63e1c84d7969de
Date: Thu, 21 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755765593
