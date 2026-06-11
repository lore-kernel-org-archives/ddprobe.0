Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C708380FFA
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781222194; cv=none; b=rNEttq7gO5/iJjGuTZqoVMq2U+ySQJ3R33+MLv4L6E3FfAQDUstkM7S02h0nwjJvHXLmNkwWEQi/7mdIZjQtrYYStXhES1pyNaD2Q8okB/kcwfLDheMYhZHFKcRGKLGQkevU43r+Kn5Fz36n2YzwnJyPZ+6UJ1K4Su0bMmcHbWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781222194; c=relaxed/simple;
	bh=CmxM5nlpJlqtq08pSXVGV8KglsB3absap8S5qg+QvlU=;
	h=To:Subject:From:Message-Id:Date; b=Rjl0SAu3OUtk8RXKJzpfgOlPP14wuIlCwmpNtZPJUV17k7xQyTWWYPY9YATudnXySDKlSGhnlEKNfEdevZ/2fl/6mGmH+vmtz8FFMByjlllYBzRjLrtK7LMj7trsFbzl886lwq95m0jjyuePS98o9GRoDB7w+NxoYy//0Nr9FOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFcrBJGl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFcrBJGl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B63C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781222193;
	bh=CmxM5nlpJlqtq08pSXVGV8KglsB3absap8S5qg+QvlU=;
	h=To:Subject:From:Date:From;
	b=qFcrBJGlMKetgnNCGRDoeTo4HZT+Tp0aiWQi7Nm3MjY4qxLbpRGU8143cGThPMvoz
	 1cgH3el6f4TxuPGTA05G+Fm/aVLBn6v8EaRRJ/qgi2F+M/Ta3b2TK4F3Gk4I5hn4yS
	 x8QBuIIG34q2jcbCbZTEe74h3UMYpGxOO/bDR+XCBWNG+DdkdGQWGQHY7SyOQf98Pa
	 jHjVTk4Vmz9I0+40dh7c7oKCKs59VHVTjj64/abZeJIzpEdjsq2DX9tJUvWxq+YqSN
	 EX5+/oJq2flX3sKQTzw+o9FuV6ANYvvYpXe41ZLh7eePubObsFAhbb6QzvtWdQaq/7
	 8JO3maIEZRRMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA25FCD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 23:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122219368.11616.6471284616557195478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0047576be45b85894d0a20a663a6fc0c66a6fbda3de54a0f73eee1f6b41a183e
Date: Thu, 11 Jun 2026 23:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781222193
