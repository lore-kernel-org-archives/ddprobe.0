Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB8C1B86D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722290754; cv=none; b=Ex9JijTOT9+Z/7XRfCheeJ2x5XBFgm2ARdSwZkdQzM5NH2GPyxafoQfr/bx+ACLgqpVkGEF9YtzwBNqZzXyogEwp0CohxaEcApP0zkKVQVWhBPzsdZcjyOe0me13NBlYu+LMBGXam+iSsNacLjeWLOIvnkmhlXcM/oEaRn988O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722290754; c=relaxed/simple;
	bh=C1jhan2nVez8tI2fvn/SdjdlN63rhwYxWBdYWYpqmw8=;
	h=To:Subject:From:Message-Id:Date; b=W3rhEYd8ZoUjW9z7pDIYcJmRggMtHt+jcVeEjKCgIItWiGcLyN5Bf0zvLzUqMxyeHlGr2ZdCovY8NWX+0Ok2tBsPDP6o/HSh+anm8uaaUXQveUoyKx++tUdx5Hy605NClFidYW2MH7XQzOZRg4RESPvCYZRVNEFd+mEO6Hmxa9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYC7JnCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYC7JnCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A86C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722290753;
	bh=C1jhan2nVez8tI2fvn/SdjdlN63rhwYxWBdYWYpqmw8=;
	h=To:Subject:From:Date:From;
	b=pYC7JnCTL10nYqZmg5JNgvSKvs5os+1RouQB7hnNkLKS0lAFK2srtYcJZmMyriE2v
	 Vi+OokpH4q5QUORgnX9vAj+FMBnctHorAvv5vJn9pgMsg+EuLyJSAUouFxAvAKLA8v
	 8PzP/eEUs2M+nRbIooPIwwGzNPIqHxFDlDOrJkclkxq80g81cuDxrFC6pOnC8NKfz+
	 /MBNwMhdZhfdDGRBWN1mt09lTETs0CI+tiSkfDrY1XJGbH+SI+eAx2vUj3my7aXbtE
	 Kw73J1UtRD03/V0kIrEQ14BTNKMMT1gClOzMt0VoyYJqxUU5r4mgWUKduRssHgHXmB
	 f1hoQ2qDUqC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95473C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172229075358.31102.6910659791750925633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75137257e029cf01b67b39d3733584e4b27a6d37259b6304f7dd082c8120ddf3
Date: Mon, 29 Jul 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722290753
