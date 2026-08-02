Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982CB242D6C
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785660634; cv=none; b=E4LWWEHcbw6rAGecEfkoxltXLEHfXJbqOMVbJmiv+JyHctiV3liImFAFK5Or3f4m4I0KWyONbsY4rM8FATjofF5ls0Biwt8Nsu/PQ5cQWyyhqi0cuBQZPbhlKv6gxbqynNsq1yj7Ur9XRlHlR0MFhkdhEBJPs3E/zSbJvkTbbZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785660634; c=relaxed/simple;
	bh=u8L0vv5XYhFjN0fi2hm8z1wqynUeYgeGpUPgPXGZgRU=;
	h=To:Subject:From:Message-Id:Date; b=tjLq9vwx/qK0paFnxGEnUY3omg/TFkPU/pMjXCWsLwZRxprRCFUDhvta0wFLSJb0Utc3s43GHB40rVEFA0IoHA0t2nSQezwoGro+j173InWBfoFwJu4TiAbJ+FQaaV1dzyvdsWXiaEo+HOxViPAROTkAfeyn290bTsFu4XmodkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7ZxcBXl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7ZxcBXl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5B0C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785660633;
	bh=u8L0vv5XYhFjN0fi2hm8z1wqynUeYgeGpUPgPXGZgRU=;
	h=To:Subject:From:Date:From;
	b=r7ZxcBXlGrYxGhMKbgdMa/BPz67SG6/8EW/c8pB9wVVtiCmgBv7Fm4EMrMp66dVrX
	 XtbLc0vLMOmmZ34FKEemUI9KLZjww1Z9/Eq+yko6y0sa9NilKV60KcrdyjrrInQnk+
	 DEw5+6lewTX/679N3XR6NX6lEk1jVW9k7qzkkzpBnOF+uAot8d9ALnMi4ITQDeU42S
	 FJCs+p2QMhmc7Sw7f+1cOMYCAmxjW9AGMhVvshq6uJw+MahSRIre9aouNWo/SlaZ7Z
	 Er8SPevWnf14hGiBhsDbw1HfugibjoBMe7Y2/ugBO1dgxC8I+CuJva+MqJUrDogt+V
	 NGyGK4J/h5MsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A938AC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566063368.23603.310958490481204485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cb892eff027fa5205b3b4f721240244da1f303c8e2644462298a6614f9147a
Date: Sun, 02 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785660633
