Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 293EE8F6E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753576794; cv=none; b=mU2CDt0FP/0KN9MbdewwBzpEb5YDmkwQPu+Ikd7r4fFI3pmN3OsahMUFUm5GGA0l83Li5jDyl0DmNeCT/MXwgQLJwMSEvfrSgTsWntEEbk242NqntrG1V4s9h6s99636xat+Yo/kqz4td5xFmz3Xbv/pJ0G4kmkAsYr+R8PUMEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753576794; c=relaxed/simple;
	bh=Z1WTQ7Ea40jKgNE4i1QOzGU3vhkG7zKfb8SKy8NfPyk=;
	h=To:Subject:From:Message-Id:Date; b=QUY+OPFEVDs//qHkagSkC0fqJ7dG4qewJ3CImiTB7xr/UWXwr6AIm0hRvOBitkeiQqIAhM20ZFl8JiJNArKAXA+FaQATXN0Czs6871NmZ06ZSoKdqQO0cyBlD150R9Xs3Lzq2QhgeY5bYBIoSiQc2oMUaanv0rFhoWI73swHHEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjBKdvJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjBKdvJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03C5C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753576793;
	bh=Z1WTQ7Ea40jKgNE4i1QOzGU3vhkG7zKfb8SKy8NfPyk=;
	h=To:Subject:From:Date:From;
	b=YjBKdvJqDN5reBT17nabZPB1Hm0vNTP8XrifETlsI6rEivk8qaNv/1qSHO02hZghT
	 +XImW/v9Tx++jKGbXWiHQpQZM3tGbDFkFSjfR1cghhuk/aAbFee64gBEe6G2v+rI3k
	 sTN1HFlmIyCfQyNfMivi1mBZD8SMwM5UTNOROyCvBblk62yEoEqUvzjN8s6GvZ/nsM
	 pPzo4q4bZYxLEdHI6ORquyryGq2vBDOrqhq3xld6mQGt0VOvLg8jYcdrQ6l7lcMOJb
	 /vy5VdFtFywoUvBsDpQAUnFQsepQ7vXehCdXAuaeQMT3Dap+ebpL8bg9ENnylDGCVJ
	 CyiKUF5F6+aRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E6C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357679357.24254.18307814605078515565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25cc70004fb10b5ffc3372b46b23605702ff6f752d54ddb86db80057184bab9a
Date: Sun, 27 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753576793
