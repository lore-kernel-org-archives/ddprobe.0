Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119C954758
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756592394; cv=none; b=bYHDdzqCvPu0JTbElJA6ES27rNlA2HpoFaACdLbGEsR+W31OxPFH76jBgHdaM1q9VkX/XzRM4yjMcIYZ2n8jmXV3YwY9NEmgcci+CnHeZvftIqpfxAci75qr1w7vlgB+q57IKbNDzojsO5DhkSb1kQTWwaILHhJbLxpeU5tNjO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756592394; c=relaxed/simple;
	bh=2m9UItUEm/+9V40D3URpmY7XhbNo8QpicEKW4M3esnw=;
	h=To:Subject:From:Message-Id:Date; b=SYPD4V5HoVBI4nFejPvkeOf6pyrkte1G4zCtujr474rlPO7OHEs5fkRFRKMMv1rHFw/Qzlsl0Z9aTx9581Gl7FEinbDICDXR1mtnGlhDDytSgQYKLoEqW12y77SjmcddU5uVQUqSfhQghAjH+4nX6iFJnk6HJUdtJOfefyyiEbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXqwRlQo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXqwRlQo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3101C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756592393;
	bh=2m9UItUEm/+9V40D3URpmY7XhbNo8QpicEKW4M3esnw=;
	h=To:Subject:From:Date:From;
	b=OXqwRlQoiVEAeO72Jo2kW9C80FgXl2qIvMMrHilfCoivy+7jHlXNeG+a9binuZ2I9
	 nbs/jsq47S5V2OgmnHUOzxH0wO/jZh8ltrxRh/wdM+8h6zJ6ONtwJS8QhDrat0VVDr
	 CPUjr/5FICam2uqC4L8hP2BWfnr2bSdTNXMbF9KLmHhkRtFwpK64EFZ4qJmXkO9qvu
	 o2u/q340hd/r8sWa41Whwt8ZH3eikYvaSz55B5D/dyg+WKieaL9OHOSyV3Gx53T3V2
	 UXNuWdQGpxzahOdWAF//a+cdYm5RzzOFBEwihK4vf+gfFjUSXgh9P8paRkHxaWsGKY
	 pCHZ5Fn1qsgVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1FCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659239357.23900.7867897185133374104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010c76766bde1ca568eb7194d7fa150686859f03735d919f00b7e53d60a4c02d
Date: Sat, 30 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756592393
