Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC6F7E0E4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783973314; cv=none; b=lbbSyxnZcJ1Eoi/TjrjBA50vFEzgcX4wU2Xc4T1/Z8w3l2M3HORlUAR3WNOKRyYNZXaUKU6mMhVyIxtFNCRCp+ymU8XAtiFxR8gczC1GBSUWDpBzOLuo6gOl9wkl8WnUbY7gUtsp796c0P519W94YBFjGy71nUJZz6pQ8e5V3jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783973314; c=relaxed/simple;
	bh=/JXi1FfE5ZjmfHATIBkyPlWN5K41YIAzhmH/9M1x91U=;
	h=To:Subject:From:Message-Id:Date; b=J4E5sFvkB4RF6btQXBn2SmJqIGOlY8azhf26oocxYJ6FAKvrHoL306FuAD1coUC5A2ON6w1BDd4PtrV9jIdwSlILQah59e4jD9WynM3Jy+gWF+93J7zsSXNUR928H/Ix3X98G/XuGpVP6Oih2xokSAIdEFZ3fDxJvTTE9Uw3RL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Grtd0Y5Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Grtd0Y5Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82F8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783973313;
	bh=/JXi1FfE5ZjmfHATIBkyPlWN5K41YIAzhmH/9M1x91U=;
	h=To:Subject:From:Date:From;
	b=Grtd0Y5Y/o/nlo1P3uJxrXboDBux+9PEUNH9eEv7pqgwnUkhLR+V19zsS/HdP7kby
	 JRydWpEkNdAgFtMmq7Ggl1QXBjmg6NPVYfpXEJ0dt39lOeEFsOIhcxUzGkfGhASUMj
	 cCrluaU9P08pG/ESnlADAIpk3VkBSpiV4W4rkbV0OcRgEORW122EPP+23hEIwiJsrJ
	 n8NmXwRSEU/G+ggmBBoQegNFW+jpQ+9UszHpfThqA9Z8asM7PEaLyoWR87sPO0n2HO
	 OBXwamuTtBZK5aACfLnhrQpj1kGZFBb4CBfbpLmdrKXpjYbFsBFr33zdUiOfYVnEA6
	 s9mU3jFNmt88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE9CC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397331369.17945.5361831500489463233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d0a36f4bce56f2f23833b6ff14074e455f37de316181a9cc4b8489e00e35d6
Date: Mon, 13 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783973313
