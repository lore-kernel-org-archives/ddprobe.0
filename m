Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABEF86341
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786623034; cv=none; b=ZSBXFOkswRgR5SZXUIP1xr5Nun0X/pWIFjayE1J+ZjLTPZjac6ChKB33uBW9SFtOD4q0+qWNlCyeBsY/HSW1R4Ajp6Km7leZwd4D4C6nDoO8pLQrjJrclf2z/neIjxMirFHRnzZ5pfHgxGGq8aiyg9itd30dLUaOkPY5PAmIFSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786623034; c=relaxed/simple;
	bh=aDd7uMowl7EA+1TU6HWtG14ul7jisXMJbBi8wNFYv+M=;
	h=To:Subject:From:Message-Id:Date; b=bQpLB8Si3GWt5IDkeQg98+GiBJKfeYTiG6h9zv0Rj9psMGiOtICT3GGZZRWNd410Dy+MNSCgo1aZR7nnL4XEMv5A4FNeRNvkReSDMHW8z6RaKRpQnEwHmD772TEESIHzEj1U/HMxkAJYP12qetWvJYDcYsyFgJlPaaK1VasEhKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVLLMMGM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVLLMMGM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1292C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786623033;
	bh=aDd7uMowl7EA+1TU6HWtG14ul7jisXMJbBi8wNFYv+M=;
	h=To:Subject:From:Date:From;
	b=gVLLMMGMuwhy3Vm7DhQ7a7oAiXaHVwSQTONNv8Ga8/f24id2u9bhlWwoZwXUETBIv
	 cSxOaof/0LtilOu5gFg0K5LlthwWGtUWOPdhMGn3JcMUbSPxpon55PJz31tCYLLXCu
	 /KnPo01W7wYmYaoBuux4SC1NVTTwTR+xQ3nj5W0zTyYhykZC7WMIum4Xptb7p1Hekm
	 n/RlECfj274ciG5iJkjS5JY897Uyy+cTQtA4YUuN0GOokoPBJlum6hXSqqvs3eiKYJ
	 fHP3J59X8KMOabaLM+mLppHUVcJRPHo16B7QU0hxKBkZftZmo0PcmXPVZFWlBm+CT1
	 PT5hwQJkOsIug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A935BC5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662303368.21344.14803278751140114748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b4bdcfd6f46c6d5056582f7be308a375e3314cf2fcc6d85cd3a494b731a20c
Date: Thu, 13 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786623033
