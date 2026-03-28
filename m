Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D281C862F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774715094; cv=none; b=L6qF9L7y90kbQw1urNNr15TIKTsyV6jPW7qZgcOENiiMlUA/dd1boJriGy6+04dKJ7EZgseKcCdEDZ0NlQzy2+rS1/zaZXyLecGspK7dA5NENOG6o0jrjgQVLxcLIvUFRjTkGK6ig9FPlKAz9fEl7vStwZXzBarsdbcJTXn03+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774715094; c=relaxed/simple;
	bh=P3D8y70sdfyZ3XFwvecFtEbwweMPuqo3T7s9XOLH7wk=;
	h=To:Subject:From:Message-Id:Date; b=osVd/70nTEou5RsolHyftWe6lSdCom2R0Qe4fIEd3xTe06uFbNNnaga6y+0vFBv0DZIdYhRK8artiuQlmvta7dX6utNucaSey/oPdV0yuGY0WAxDs8CAInEYCixM+p+dhuHp4s6UURQdhbWmCQfnt0c6QuYYLHiYGMUBR3hzn3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCVZmwnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCVZmwnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3854C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774715093;
	bh=P3D8y70sdfyZ3XFwvecFtEbwweMPuqo3T7s9XOLH7wk=;
	h=To:Subject:From:Date:From;
	b=MCVZmwnM11jzQg+o23a53BSlwLRIfnG69a7NH9vCHFTfIxqHdJ5yLcl5z3Zwu1Obx
	 GexpBpvemy+0XZU1iDvVeZpkGbQ4fm6EU/p58NiMmiWUUwvWimV5jW0fNEsS96avNy
	 VVvVvRow55SYysxAAAgCZ0JXPr4bPIU0RtijB6kQOUsUZU8POsvPpG9CL0UBZWlVKb
	 C1IJ3KL6j+VU6RdCrhdcGPs+/FmchcI2Wa1uU5L60xlj8CqGx0AydJatv1ZP0vEVp2
	 oCJAVMUpNJBVlb8fHjVjC++di7VbBQkEaYHWTz9WaNhjqBZpO+QV5SHHVG7R1Kigf5
	 etVbUr7cCafGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A310F3DE9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471509358.11577.542031095903021899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6bc761f897e3bae4704ff12f3ce1c52eacb8d9ed707943ee7254b064ece886
Date: Sat, 28 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774715093
