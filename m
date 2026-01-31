Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D085A23EAA1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769822033; cv=none; b=sVeL/a17MLUxYSDDNCiCmvRLs14YYqWO7BwjzxwaTg8G1+Z6vw75i77LuSr86ToBjjEIeWbq+UGJ4/Byw/+QfNg6AdO3p2W2FH3bSbRANttFqueALXjh7YxWrFMS5lkkFGY02LvjsHwDwbtAwteTG0VIsLk4hvPCQwddpU1uYwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769822033; c=relaxed/simple;
	bh=b83FMajLxPIBpnj1kKgbrXkuxAoc/yBlJ/SNfz2Uslc=;
	h=To:Subject:From:Message-Id:Date; b=J+LgVdx8eyEWaDP5dDg5QixOZPi4DX4b/EcDTyOeJ2HOXZEEyUJ/JWJPmGcZfuCe3tgbaMgDnKn07/b6jUz9dM6qMfo0oIHUdn3XNYPocbDMZjzWRw31sRlYeqnRdm5OTLu3IaGXPD7hq/vcj9miMgGDCoa7vvNAFKePa3ngv8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/BiqnEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/BiqnEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769822033;
	bh=b83FMajLxPIBpnj1kKgbrXkuxAoc/yBlJ/SNfz2Uslc=;
	h=To:Subject:From:Date:From;
	b=B/BiqnEzDq6I1bLcbwiclVEqpOjRwOzG+kxkUOQUR3Iq0QSSVMVVanW3h9vDaxs0L
	 qTOsJUiR8dv6v3wKPTpRb81q2j+Eeq4vwBGsnb2WrSSXlxfQZcxRTdBVBRaXUcnjEm
	 Ob5ttmsz71c5mXtdmn/MsK4toVMjrr5CTsy+IK2a8JAyxwnbcYAOaCa0gTNpB9DDtg
	 3gQ5gwZ5cMIx/R5RtUcd5vgDs/Bu8bJqkFZSeuFVwA6/jnYggR5XibWwBBXYXR5k4Y
	 4ExJLSLAr+yioLw2i9cqJ9aV5dKxfN0r83FJ6wcd5Ynd8B0NLOTIJhmHHq3c6f8D+D
	 Nw0fRmmGE+W4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BEAE6BF33
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982203359.32056.15145886212365254316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048ce5c1a94c12b8159d9898c94155d3d630dc9fbab22d4f178e4e5a29c0fe6d
Date: Sat, 31 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769822033
