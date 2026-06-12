Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8302BE051
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781247994; cv=none; b=mkhwVSgiBK+BpDgG6FWjxfRLbqu/VeVXcn7DdV4HphaY+hswyvqjN5OCcL1taW3GlhgspRVDNWq4tXkLV4gLFrsdILg40iQ05o4WgBDWzhVUf74FjQbbyIt5fkMqT011skjLf1ishmQ/YyuWoSO415NX84T5cHVaOzKIcI4c920=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781247994; c=relaxed/simple;
	bh=W1Fcz4gHt+5niDMORePF9xmILa8vmMif1ztfvOp0D+E=;
	h=To:Subject:From:Message-Id:Date; b=JC7FTSjzF3JjWGnLZChhbDRrxWO32LtMvcxStd0Vlhs+NuVM9blcqF1x2XrOdNpRKKrjo1HPpMQbj75Z/e/Rjj3vamWSGj99IFYpy9tyTwtufA9wq1kZoFiwqUUH4haZKbCvhTI7xAXOpLuB/GxjmS/KNAG+malBSv+ZpM4GwEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8ITH/Tz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8ITH/Tz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7846C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781247993;
	bh=W1Fcz4gHt+5niDMORePF9xmILa8vmMif1ztfvOp0D+E=;
	h=To:Subject:From:Date:From;
	b=R8ITH/TzA1l472oNYNCNnVa8vkxaToWm0zzFBiE5Zmmo0Px8G6UubjSBAKdQkfRjp
	 x2SeXeanmpmbKhHkgnrMAEnstzMej7BtpXq1+31ZJrTTPrQBScivxrR9t5h600kwh5
	 8GXpZGMz0HPoDg0G6GtU3hiVnLki+jLMNr/WGicYCijmMcrbal7k9lX4SLNGjUIH+B
	 M5agvXNAFtlqAAQc6hW/k0eNUbpmVhw96iZ1u4kPTeWh15bHG3yX+gTvd+UkP7JluW
	 /FJoXlYUwRBCCJ3DaE69HSIk3vFHmUIGhE5OJdf59c+DCVW6bNzQRhwg60vgRmsk1c
	 +t3z5JsdVxqCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33AFCD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124799369.16297.2278147118718670466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef905cede4e7ff49f63205a3fc25a89753f2d87ed1183fe9a311fe2e548f876
Date: Fri, 12 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781247993
