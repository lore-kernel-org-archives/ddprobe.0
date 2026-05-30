Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594C43B3C01
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780145014; cv=none; b=s14R2qdAQ6f403XRrh/6NMs3q4acNWZbaS8Z9LwD5IVCv8qn4TliEzEXjcz+5Fa8E+EHRmvE2rglKhO0zQSgCg/HPhMeEbqg8TmAhwKf30S2pm72OXtFENAABNeLQGd9mHVmlGIjhSwPsDtKuyiiSYcXjt5w5vqsL0dqBr6IKwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780145014; c=relaxed/simple;
	bh=7gi0MgtsL2gNDtXAhgEks8PEAEhSNVSZAc1Jj7+s9Ms=;
	h=To:Subject:From:Message-Id:Date; b=G/Q/vNxg8R13Vmp0VbSm31awn3+TrjZOsB7gd48ZS3Yj5KXTRrWm1M+ZxVxAKYA6Pdzk9Y1aBxTZ2vSGGkvtJRmMxGU7cYptrltG5AyfyfMDzWa2H0nwJRyW3Wn9naHwSi7LNu82SoyS5jY0XTBKIUhqGeufQs74sOyCddhM9ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiuWIKg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiuWIKg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 075A0C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780145014;
	bh=7gi0MgtsL2gNDtXAhgEks8PEAEhSNVSZAc1Jj7+s9Ms=;
	h=To:Subject:From:Date:From;
	b=XiuWIKg+19DV9S9JjHKwp9XV5BT2w6hZpGBSLAOEvwA83CWUpvM1U4gUDz6AHj6QQ
	 F9ju6G1enkr+jK8VDjHOB32bk2Bwb03NQcnWqFRG9XEbEp57d7pF2TmmkvdniCN0Yd
	 AwiAvdXXFqL5aq7C9adNTsg8Sy9rFLZOPIsMv9VYsunUXaMAnd2nOHQGvHZgw7HP+R
	 E9aYIJp8hORkz73jOBq9G0k9ha/lLXu5WEiN+vLXdsSKgXHU9ACWR0USlJ1BzpzQ25
	 8QCLV3MwxJeyIT4bXiSgWBtuDt709ddexsQqCn+mlyACnEUUW4qOZuy4x6JDiqJgUj
	 2m3EJOGjRgQqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE8C4CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014501379.9586.17771771830096319693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29d6692f0875fbea593bc1d93e7c988697617550811e6b62adc4fac03132a7c
Date: Sat, 30 May 2026 12:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780145013
