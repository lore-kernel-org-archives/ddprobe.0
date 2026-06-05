Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC6935A39D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780636474; cv=none; b=C7gIr1jvGx0gF00HvA0ust8aBMw7Gss2EOV4J89mU3Dj+vEh5wJNLZr6QqiH2wpXEDfSaWkE7IJVDGUen5QqrW+1Md9oFHUhArqZfTNTVkDbY0fD9SqhuRzOjyNlBZPQEdVHubFjo4y4+Yf6DLggytCd/WgrK7dXyfYuzIfeOlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780636474; c=relaxed/simple;
	bh=OAp5kJt9o8LUqZpzq5RXE/f1l70m4CW98oHuTnhu+/U=;
	h=To:Subject:From:Message-Id:Date; b=NAzuL7SR2htRI/FSF5TWSie2RjdSfBB7QsnHkvgGn2M2AO2p4MNwv2hi+pbl2RR9W+BXubcUwn7CBB9lR/oDNU4HCRw38msqqjCK+87TH54vuOx7aE8sEI4vEx/Qx3objiEaqDu192MM/RiLLrqMbYae1nEzzlVkDbyVMQbLGKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrTn6Jmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrTn6Jmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB145C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780636474;
	bh=OAp5kJt9o8LUqZpzq5RXE/f1l70m4CW98oHuTnhu+/U=;
	h=To:Subject:From:Date:From;
	b=rrTn6JmwJPdSagZVgEFHzyZsQxoeb7DUCXfyU4KSWJ4hRoYQYeVKXQhDMjsLTEnbN
	 RskHM6Lx5F1geCc8xUtHcC9AOpGQHrtdvurInap6wBgoZVhTtCrOzCccE0wq5eq5Ow
	 y3F5AgxPfnYsxE2wElCzfhkP+eq3xfibJNBWDomLLq0rlSj6etlYAM9hzFehgZSC5i
	 koP/4+Ec8J5u6TumOO3jKuLJF9tWtGRGuXv4yGvVQf/edjxMLtoweFlvzha0hX5pec
	 DJ9HQtKjS+lhwbdkrBsOLZLQ/1J9w1GnPHnoUv/bVYFMTWs7OVP38J42MquRo5V0eq
	 pA5yHM7DJUq2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3636CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 05:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063647378.5717.5197515741016516268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8217ed5f208d89da69527d7452779f81b1f0e0d9362d0b8fbd9313ac593e31
Date: Fri, 05 Jun 2026 05:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780636473
