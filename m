Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B0E8F59
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714342943; cv=none; b=mePXJsZuN76VpcQyeW86UC5+nb/9N2//TOrDgIehD1zRrscqCnb0W3KdsiSDFaT2EmPdINVBBeqmXYtcSb77yCT/avmS/nXXUSvy0bhU2pu1w0QQYvEzAg/vzOrjIfYR13R+n+BVVKovtPw1XObgqzDnFfUKYhDm6U/pGFSCPOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714342943; c=relaxed/simple;
	bh=XmxWdzszQmE7RgXzbHuN5bUaXku2uAIAwB+pWCpDzE8=;
	h=To:Subject:From:Message-Id:Date; b=ZoDrLpSBlBt7yQbKIeRkPaNdoEfQVdD3dBkYmXEFjkn3t5DN3icMuPZNMrmZ0bIkFxi/5KBKk0R4IUXh6gF8TCJHBLXd4NXlgWUD+fcgNSXbcEtD5O6ZVihE5u3NtOLuKTVtO7p85cbpdvPCtzzvY/RRGezt3vZeG/WvH/cySUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4/qg40Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4/qg40Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C83C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714342942;
	bh=XmxWdzszQmE7RgXzbHuN5bUaXku2uAIAwB+pWCpDzE8=;
	h=To:Subject:From:Date:From;
	b=R4/qg40YJGFTxXhQE1/15GNCyRHsd/bsCw0wUoPH33RJI17P88k8DDwcTsBd/4E9K
	 LARByl/JUyAgLu9Y1T2vqHVCjuEVUD5ld3+NrTqChoB2jlpQjBGwqWI6Y4FAxcIvZO
	 lS/ImqD2N2vECojvy51R5BBw5v1BKBdohZU2o7MdvIbTIqNuIXHdWuPSu9GcBOPidp
	 vMgkWbZolCImhev9sOyDtsO4UebV9h80HnnxAKnXIaQhZL4dsAPXtUcLGVspPLtSD2
	 Z0zMI0pbo3LdcZSUStvjDZz45dKkXymnTpu0ojyn+1VvjBNfaLN5NMWpuPkw6ug3L5
	 ss08nTCrWQEtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4930C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171434294277.24675.4743812847637504440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa7d40089352db4e7265953c3683b7a76750e88f255255114c7f4896a8b7e3de
Date: Sun, 28 Apr 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714342942
