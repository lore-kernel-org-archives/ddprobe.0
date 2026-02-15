Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B32D42AA9
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771115094; cv=none; b=TYO/yS7ulSZ5zeGrylG71iovSR5w1sAVZ2arLXdmPfSXEQyRFgk3EXB/fKwMVIwGuqM679ZJJY5rTGQYuzf107ippzD3K7ELO9UHyepl+sjsr9bjyMjRPuR1A0DSsDDxC8d46D+PiGfu7FDl66eB9MnHVsOvtg4ipkBiEKX3k48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771115094; c=relaxed/simple;
	bh=3S51Ls/h8oJZrAxmP3cnOjCPRXhEpgksbQnfrP69D2U=;
	h=To:Subject:From:Message-Id:Date; b=KWboAHfPwLZeS1RcTjmbHkdYOmlBXs8DO+vG4s/TvZR5tR+ejCkX7mlQgUqnsz7CnYd5ZpLQlxHF/DJUxUSUqlUc4ku0LCGB9jXM2XXt1I4m7E2For68xvamMEfZn9p2xddQd85RYy3wMGoocbRpJ6pyQEN6NN6BIgzHIf/nWdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSKG4JfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSKG4JfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA950C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771115093;
	bh=3S51Ls/h8oJZrAxmP3cnOjCPRXhEpgksbQnfrP69D2U=;
	h=To:Subject:From:Date:From;
	b=WSKG4JfOC6It43g/SmPn5Se+GX6SBr0S8f9qAXfE530BaE8E9tz/o82LmxZAnZ+kI
	 FSC6MMsSHkWyBeHN+SUFjoCqDQjwQfzocD4MkdEPUZXhDXvGiStNaYuCQe9K6auTkv
	 5RvR3xYQekaCe7H4zLnSiBA8FicpXDIR8PAcasjPaEWMkO291cXUuKGmvlDC3vNxmm
	 VBejWVUpGqHBAi90ugmtwDcLUEOLbL1OiLdCFnvJHGUbfUDS6DvLeDkvQpIpBzQhjK
	 /CpW3yB1SZVOiR0r37w5TzUcRJXIrbTGgRb+inST4n5aHhAglY60DlaGxLEV0xrpZ9
	 QNGLMx6cAwWXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1375EF584D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111509364.12645.8528029178476799474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fb5ee95b3b378252f42cb02656c70cc75519b53f214a90cd76c964580fa07d
Date: Sun, 15 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771115093
