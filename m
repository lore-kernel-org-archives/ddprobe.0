Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0F0335067
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779654754; cv=none; b=HEwzDTcDETIQQQvhxG3WRC2WE4fPm00oDg+rzZKkoREweIi20QRE1tReb6/Da5XPTvH7mYaZMHwPYZWyAPMn4A1UIzu7GFtJEKycz/xgLu7qPCEmsxMp5+OupmdCzlpLBKVBI9kMAPPCvUi6pvJyy1E+9BPzdnpvyO+qPmCw/L8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779654754; c=relaxed/simple;
	bh=gkWbc9172i2ZHTFVsqWK9Flpq+HpyoAo1GqRA8VYgd0=;
	h=To:Subject:From:Message-Id:Date; b=j+rxapnvPa1pjrLarZzGtVizBIRnWE+M1kOUitFZPblsUOJbXx//GLyPiHCND/dyBsa7l+8vCZgYavWQsEXPsP/ussTdVXcCCpmytclp+/AauCM4U8dOVXVYRuylpopTxQkBzcLzV0Hj6dMlAfxBcEAHmD+7mRJDUN4Mn0GMelo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DriT5TOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DriT5TOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC9BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779654753;
	bh=gkWbc9172i2ZHTFVsqWK9Flpq+HpyoAo1GqRA8VYgd0=;
	h=To:Subject:From:Date:From;
	b=DriT5TOFsQD/7VHvrG0frlRpeZZCQUfr6I/l7HjBIRJGdSeti8giFNqaqWTW9jfQU
	 rerg6FYyVEB8r8RRsxnpslnirjdBXYYujj383l73QSmn35f5PnLLffzifmKd/8sTgW
	 udxOY9W+l0TfojxENk35I7nkvIM3QGeyVE740IXXjh1RLhIkhhX0Q+lLSh3p/U3BFp
	 JXgFOC4h7W+UTbrWKQfJQ6VcuOFe+cG5M2QRNuI0bx7QaQDqb/G846Wni0Elpvg+gr
	 npCrupUXmxYJ5ctare0Q2J+d0C327xtjrSA8AzE+GDinr3l2gwY5MqY/81CUq75ihg
	 dQrhHqkVGwlmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ACECD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 20:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965475368.5287.3199876999791603335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80d93b7398c53e0684b3f1b778d936c8b71a356462b57cbabf94d58202c980d
Date: Sun, 24 May 2026 20:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779654753
