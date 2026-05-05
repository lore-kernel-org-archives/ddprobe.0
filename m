Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C633C4547
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777962454; cv=none; b=eCsxOPGjwOOT1q1/DP5qhPyLzrwHyuzHvcMwFhe1UcgMLZDyd56+/I8SiMUO45Q/NUjcAS9pU+Ur3t5tTCCmkZezkv5UwatE5eK9xhXbwEhaQLp20BEcT9CXV4H+IaJ+Yyz6ygrSFJvOx/oV98mVXpGnfA8DBV263GEqeBUP47I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777962454; c=relaxed/simple;
	bh=X/eaaFfP/c5GgcBtfHWIrMusGEvpYaNr3/hhzrWBv90=;
	h=To:Subject:From:Message-Id:Date; b=nHN8vzQg0gOQo3sL4xQmjCaeDrd4pB0h9/JMUTrtoDVrukNNrRcqzUMnL3mBUepuoSogeiBhe+9mgo1dYo0hmO8WhHATnbYbQ7ryp9j1p0qZaiRNVgLdCmNGxGmVPPhRGmpGtrbz09+kwY2S4XlfOrh0HgjkbAve0El0XPaOnXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohMgqwQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohMgqwQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE357C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777962453;
	bh=X/eaaFfP/c5GgcBtfHWIrMusGEvpYaNr3/hhzrWBv90=;
	h=To:Subject:From:Date:From;
	b=ohMgqwQ8vIyylMHeWPxXcyFD0tdwLGIamUs3FfX96In+ZUlc8cFFE+v3wu7iCywRN
	 H/QsOpdMWbFGBwUtF+klzx/3cI0/xU31PKukobQrxXe0dXMA+IE4w5vWC8HgocT8Zj
	 6eaWWnQPzmAcrLTWWYk6mtipZinnm+nEE4rcVkxj9Rim8atiFsBipPu0Bmhy4q27LP
	 8efFmFV9kKPaQ6WYvgXjU3mMuUU6TKNKvVSZcpyr9lkuIBAUc+oipbFGQt3I6JIDl0
	 POoOzNId1+2XWrkFzdhtx1nliSIP0t6xkZdNsY1oTQSL7xlba5q/Uv93lG5+7w5pgv
	 UINdNNjTEiWcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBAFCD13DA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796245368.19191.9237864481329763823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41362783802b6dbfed463f45a6611e937bdabbdc8eb15064307f90ba74ef0f2
Date: Tue, 05 May 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777962453
