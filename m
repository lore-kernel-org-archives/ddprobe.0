Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30BB3EDE6A
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778613633; cv=none; b=D9wUBoidrsSmzNwiN6Ca8WKOqTwf52bNJlf1p1TcZhe/wuo+ZujGw3nBbZW7sKm7d6/CkqKPdaYyEEh9WWamPQnRKSvw4NIpsT9QNY4+Nx81dbPx7eFxWbtsJTAm7VjDsPcpBeb5wBfVYr5rBy8etDc6ESM1bYp/DpgqRTJR0ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778613633; c=relaxed/simple;
	bh=uozxC4obbWLwv+PVxJJhunIYLV6EUeankWsa/6+LXHM=;
	h=To:Subject:From:Message-Id:Date; b=Mt5/7FOVMUMAH7Sr0/d6pVrTyslbVWSKZxS2K88Mg9VQ138jCjI82KSwSP98jB+UoUoaEic/b4N+aVAeEQ0LpkJbcX/CUGiMjXx7ncJOMhkKfgfM9P/KpOBsfWaH+Fb07CW5E5JsnC7INF3nYudo/kf6ekD1Z+jjYPeShUpjPdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZZ5fF2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZZ5fF2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9312C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778613633;
	bh=uozxC4obbWLwv+PVxJJhunIYLV6EUeankWsa/6+LXHM=;
	h=To:Subject:From:Date:From;
	b=AZZ5fF2WZSdDDBdfu3WLN9eCPD2AJbxNXYHnI85u3H5OiJoWYA7ZnQ7mZZGZx94sm
	 oXDgfgMHpkRBsFJmo54HJGIMfs5RjC0Eqa6zuS1Bx70BewwaHOYPuubs/dRelbpPU9
	 fIv6i1Q8US9w4msHV1eg6Q4wsDGOWwDQXqrDXeQraQWbG1FNDmxZWQfPcOpl004UiI
	 iS+3ddeuKawPPfjT2CmD+3BYu8zdt5vAReQgC/dZd0IOlozQIbtWQ0azZ+1AH3GPex
	 NGTT27a+V6ZYozXvh5jmL40rFCj+dnCZ4pxJOkZEz1jcKWiza5PibencCOgILixVmY
	 3pzlDG8RYW/+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA77FCD4F39
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177861363369.24036.14182967710408522215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742571a490686df71c8ec3091321690e683e314448a2ff1897703acad6eadd5d
Date: Tue, 12 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778613633
