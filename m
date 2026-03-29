Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132FD194AE6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774779294; cv=none; b=hTEUHBC0rPpB+L4XiXwvwcDkBNN24Edku8BIMb7ZHr40bocdR3FbwYQUjFvAOS3MMjigHicHOfA/yH/to3wjdjGMLEBOa8iXgzAWJS3vlvil6c6WBz4UQcyybNKZNAkNYMarPAvbkV6UUw8yPWD4MzqzSHOX0qO1Qlrq2MmkNqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774779294; c=relaxed/simple;
	bh=e30+LCwfziRhz1IaNFBgS7cR/qR58MxP+c5f86lgf5Y=;
	h=To:Subject:From:Message-Id:Date; b=iVxpL1fxlITZWYobb3VTYMa4kP4Q4KfyC+5AuVjE1HoNkYfH2iLnHGhlHEchEs/PBr5oAiJk06VLKdUJkQi2QJVR7/viqbvm28xZzCPOcLrvnhxIQeb0X7counROOcpglPqHVcmfVtLQkzUF32i4M/rYR/d0FK/Sn0x0gwOzBuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CERxdm/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CERxdm/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F5AC19424
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774779293;
	bh=e30+LCwfziRhz1IaNFBgS7cR/qR58MxP+c5f86lgf5Y=;
	h=To:Subject:From:Date:From;
	b=CERxdm/poTCLMXVGEQqX9EFaLI76ceKuSyYjh+b+AzgmaVjN0snkhqilq+u77iok7
	 FH69HQOJFLoPS2N2Ylb4rElouRKf5WoTXeTD91u+jQWy4d1XPcdNi8jw2lu6rF98H0
	 Vno07S+dYIMtOeBeYiLV85eFd21pCYMTBPQhbBiFGTp/3piBQ6qdHa3/dw2AH03Gqb
	 009kFvgOuKnChuMvyUk9XjGBZB3j1jpRpiPwGacBI0/hZWkGVe4nlU0Lrrx7/tgbnr
	 uThlbSxAFKrb09tN1xhu6K7fPZgO8VUZmgnraujbkUF9/iAP4unzo2YCdo4TygrzhR
	 i0vNYreiIpNxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94065F3D5FC
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477929358.5435.17428994723670387385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b5ef176ac19acf182457a6611e9d457750733b1356f8948628d7366eedcd61
Date: Sun, 29 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774779293
