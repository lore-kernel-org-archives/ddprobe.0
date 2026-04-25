Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0A364
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777121254; cv=none; b=U/0BbLfLA48iIpOdq5Li4NzJHXonqKrEfAt8cc5vfN7S4kEbEXK+Ovg5865zhETo7AQX3z2eZSk+zWQLc6C8IF2JNw6kPKua94toJuQQkapH/1sl5qD0FIWmf3vDB6HG8albDbFRPgjxF28dDK2gj42hyy0x0bn9wpOQ49hB/Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777121254; c=relaxed/simple;
	bh=OSTo57elZoXnLnjREipSnL7gxC1AsA2Y7VvZH2BH/Zg=;
	h=To:Subject:From:Message-Id:Date; b=IuwZ6j+wMfraPwnuXUrNt2INXbI5U/6e6cbPdyjMWFEM7uUIFtnFrO9Ar+VqoJVbnH5YB3duXugUW5z1fSZbzG77qv0RKd2szOY7t9MBT4W2WQicAHs716zZSEr8QH7yL8Rk6LQVtTA3HsnNT82f7lma36EmzvozEZPU+7FRnmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFvWzkIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFvWzkIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5EFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777121253;
	bh=OSTo57elZoXnLnjREipSnL7gxC1AsA2Y7VvZH2BH/Zg=;
	h=To:Subject:From:Date:From;
	b=BFvWzkIygTXNXAGkaY0EQOh8OUP4m60tLdKIgBvZTxwKucJ5Pq8XC8odno1R/sKli
	 rCFE8Jvs6lZ4UUBJfCbMGZTQ3lN3vV56LDRQ24RmR5o+2Zl73+78JTERg/E8c32lml
	 Kfq/6G+mmNlNajwrLYm0COckL1m5NrHKCSn0PyhNcD/zGzrZKOxg/sVFFqxVCMHifV
	 Q2b+2FBY3SP23hX4CF68akgz8azNloa1gVJbNbl2g1E1W8j7y7NQaFEdGhl5lRDjZk
	 eZ1Hep5bWFzx8JXjdNd0M/Guy081swUa/Yucshpey8yGmbeZB2C7glUX/ASe0Shwvy
	 G/22m2mQhlyHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA0FFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712125368.25745.6315015931769736934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04bf72d7207c3a0913e4d8e774a573edf264781c310aac4f0af32819d6d7d67
Date: Sat, 25 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777121253
