Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3AE392823
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782814114; cv=none; b=F13GfAU7xEr3OXO7FhRPD09PLZ2j4o3tiBSqvnOX6YCzrOEhUxHWjO09vzxB4nRAFcWKQrcoItTnP+b9ujdTHR91B4tZs/uVk04fHHj8BgbQL3fxhX+lSDyBido789nSOaZ6527WzbSMbDKA1SqJ9K6VMuvHfM4sInRO10GLR5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782814114; c=relaxed/simple;
	bh=+lCU7MBM+crHWKJBckTJQsgGVfPyDMpwWag1UcygqdM=;
	h=To:Subject:From:Message-Id:Date; b=gbvv3f6gynsrcN/Z7h2bCXDbaW4jMMnfNTqW9CFMUitvVQca5Z55eukwh0RkYd4L5SqRKxcqk6BXCvFqHMG90W2eB1R3g6Iyt8hnx8028tvrNyVX9TOFiJ1lAxf2ABYBZ3szJ9nQtaghQPzgGb8Pk0U74qbPrviqRrrfB0S+ADU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9jcrE8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9jcrE8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB060C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782814113;
	bh=+lCU7MBM+crHWKJBckTJQsgGVfPyDMpwWag1UcygqdM=;
	h=To:Subject:From:Date:From;
	b=s9jcrE8MqsJgg3IkV7q12O6V7i6/EdXEYYF4TwFGwixrkXivBMm6awZmEZpO6RrcH
	 yE5vxZ728uTR2qS9RG6uYqXVRCa4RVt1tV950k7CwJ/gHKiG3EJt7fVpzKS15zltIB
	 0Tci+YfxARjb60xPqe0jRIkRbYtE5+DZrM5UsNkJolXRzNSfU33EXsP3j1yZKc9z1s
	 lRiiJtTbQ10wJmWDRPZkYGfunVPHHY8KghVCei2O2hJ4fbALU73lwxankrLlhu0TCh
	 oygZeyIjgBWD9r2hucSE1Nb7jcGDgjf8oXDjULqj7RaDTP0mBGFWfv1oCi3Fd5NFYI
	 Huou0yRcoRIxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B8FC43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 10:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281411371.27783.17397368082353014734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694d4d5524dbd7d08c708ae0e110bfe815568122ab0d326056a1bccd7736aabe
Date: Tue, 30 Jun 2026 10:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782814113
