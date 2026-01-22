Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5720F33A6EE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769105634; cv=none; b=hIKnw+hHdxNH2n5LhiHbhHmjH/cYGVmeqMQNGvfkg0G3j36blygzdbq62fH5nYvvtk2MG8CRKqg4dWcjW+u5prdOBBEoqGAYuc7kL6pFFbQ5v7plPQNk5SEmxdjwK/vAOeU0uoI1N2cKJIrBALN6MyjCuHzBg29SF9A1XVLgGSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769105634; c=relaxed/simple;
	bh=S+YgSAjIIUp0RcW5xTI1zcQ/f/Aawa2FBQRRKzzEAAE=;
	h=To:Subject:From:Message-Id:Date; b=UWlmHLaspUtiaumvEPfEkLIXIkm4CRXpjDwxd1A6DSbpBa79efjaGQp6NPzStyge67oFb+RYFU5OuSoxcWFZRu/KK6ym4cKrqv6UDr+QAee/G9tkpSLumUIP6DsxKhk1kZLqQwhXUEOTQh0hMaRUATA1onuIyYidU81hLdlCHZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7DFcvhm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7DFcvhm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00A3C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769105633;
	bh=S+YgSAjIIUp0RcW5xTI1zcQ/f/Aawa2FBQRRKzzEAAE=;
	h=To:Subject:From:Date:From;
	b=Z7DFcvhmOTi1+wy42+s4OqUKZmdrF3Z3EPxAH579H+6KrZ8T4hWzZqiOKUNzMCkoO
	 Il6Q656oqjNPuUkBSdDkCq10aRrpBK8s6XuI/uhzgw6xHuqMkd/tB/BIhzB8U+cnye
	 Yqd/QFFaD23kAfl5lJia7ZSpui9fXOm4eJVmtWHRFgXoRGRcjoPEFOMEQBXSyOT3Bh
	 w3D9Cev8VSiVBb8UzJ1LF/Ea8ZrRruVNu6q+seuJUaYE83OUITftc9KuKHcbanYpTP
	 SD9xcxgAWAmaaF9D3QhxNMrKDAihFMXZuJDD6EMChF46Xbq/K75n4tfA74QpRLT12i
	 EPckOe8QJtlTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E7D6CFA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910563358.1815.2242147996830440565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50f20dba446e6c8c382fe83e23cb59022428bfea400bfa1d20601b5ee593680
Date: Thu, 22 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769105633
