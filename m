Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2317218D4B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722321954; cv=none; b=iI0unvtjf0r9H8d//33SrqPuKadYld1fdqI0NudA9I8zOdzxg0KO5HNSjXuzHntLUuw6X+cNzEYBYd5caOl1I8HUOCkT/SBvnPox5yPrI6b7/60S/9qCdKzjwM3y+7vbzTCivCrIVfeoH6ulXEkCfxVoamGG/RcVRZSVZ4pahrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722321954; c=relaxed/simple;
	bh=8t6eUxiIA94QVY5B+TFpCz3SWieTUWfDz/tGT3W+eNo=;
	h=To:Subject:From:Message-Id:Date; b=ARjwyLmqQFi6Tw9fIp/GgJUB3NooaEg9p7iQlrftWAEdh485u6xyQNW97AFX969ckRe9Lu0nfGcYtJbmCNjQc+dM3Ld4LtmwNtV8ACR2bUh2anV75tWQLzKbwC6RdiDJtAMZ2QXg5eNDzfGgSU72CB4DS3zoGZC4toJ4xoQVh+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apuFL1cg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apuFL1cg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7E4C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722321953;
	bh=8t6eUxiIA94QVY5B+TFpCz3SWieTUWfDz/tGT3W+eNo=;
	h=To:Subject:From:Date:From;
	b=apuFL1cgmY9YZOkGgx5+JpIiBd95LnNwL5ZDunGFWpnc1N+EjUmOskIqYxU9JLG1b
	 Ans9tsG5VIpZmRmxU/3sEdaWUSXoFXCTnqCVSCQoM0Qcn1QwyCC1VB3P0Vk0Ffo4PY
	 gf8cdmhZ10quVZzuFcDYezV9oavu/6/iMX5rU4S6Qtqd2Hc3rMbZBFiP8JfP623YIE
	 BfEZTcHmCmMEopGg5Yyr5XsuGpJyXeDmKXeZOuFMcojM7dH3TWIYmr6Ywp7hbBsHIR
	 LDNQwPZuRN4oMTtOQNUWh+d4lZoK7/6dizDmEwHLD+SJudQCvO3f0OKy9TwuMwCw3l
	 03A0Ws6krSUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A309C3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172232195362.25673.9089734055252271002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354f3e88fd19cc84edfbf55131797ac7876b685683034c1895a02625e4b85e29
Date: Tue, 30 Jul 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722321953
