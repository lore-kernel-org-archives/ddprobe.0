Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185752032D
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779781954; cv=none; b=SQp9cPCap2cHdG0p+JKl0uJrs99pSpZqk5kAWcYFPtCxWKkwUyjx8ZK7q7tDPnNlDfcf1nEnJvZEENlVMz7XQRtUulotBtbmARKlDONK67FXdG9JWI2Xbb1YeHqOUcllizPq4HJNzB3x4Zwya5Tb8xsSUjzS9fSeJsTER2egLms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779781954; c=relaxed/simple;
	bh=afQJe0GEojlEPzOD5FkrtNrVuQYuusUDzc7+1RB4V3k=;
	h=To:Subject:From:Message-Id:Date; b=Fw7RlzX9BAmbVC65wkbRQ/CXbtdsJHDTm9j2K6X8eA1rjZARUPk9LwN25yJ6eg3yaCYjo+ggrUllE2YIyTcuK6AEsOjuFR+gPeTPy2mUVlf7u5qLD4ENdk/TJXwtw5n0xAarkdx3tWlde6iBcJoGuI6kVf0mMO/C13lMyWdPDDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5O/UEZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5O/UEZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5127C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779781953;
	bh=afQJe0GEojlEPzOD5FkrtNrVuQYuusUDzc7+1RB4V3k=;
	h=To:Subject:From:Date:From;
	b=j5O/UEZ+wm3+5/5EMsm0dkVf3Tjdq+DrkWWT5xMXq9Td1ulRwEMsFVgSZUMemPdPv
	 MiFXrnMNNgrGqxEsvXVQc5OSCLjsRtdGdYJZN1Bn9kWTuRao6RriEHm7UeSkSBCAK8
	 csIH9FlXQ7Pl78A5OrCn+87SK6m64vOu0PAQ6ro5YXLAm4ycu4Qu8g0ODSUdR5tjhM
	 IIqULRwUeuRNA9W8LluX8gu0gxCMskaK0DhUZpYQaVF0V4DtA1oYACywmavYlnS86m
	 rnv+07wFZUvQBejD0ELK8TmFUUaOVhBg9k+bwrhw3k9Z++N85uidjYsR6LCRBfbs+l
	 98KIgOAjEyXng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D00CD5BB4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 07:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978195368.9908.15840977372062394620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f205e012ac2d2c41b64603f04edb2faaf47c76c619f024dd5a82b9a442832a76
Date: Tue, 26 May 2026 07:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779781953
