Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF554302143
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764679974; cv=none; b=b1ClErHyIirTdaOHC7RzDvhylPXWKT4fzDEIAm9S/3nWL+HWsnDqPWTFcz4YUBc6Zq0ynR1GF1dbhtnhrW0tgKFV0bUFgjdWRIN7XEkUByaUZGLRDheIpqEnjxdHQNp7T2q8ZEoxpdKsMNeG8pCmXfxdyJuuJ7Z1jimhxYZKQEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764679974; c=relaxed/simple;
	bh=QEgNC4uK9BhgO7HVjBQmTXkcICwFF5sngejw+cajPWk=;
	h=To:Subject:From:Message-Id:Date; b=Ii6WcRxxHbOLCIrLWEF3f1P0mXQ32rumY1wIw1zQx48AqGhZRUv2OZapXlpvw87Nvci57fiLk/TY0gOLWRPNsQsn92EmCf4QUMcxik1E7PZs3ZTzOpJatb9RDN6Sv4/GHKUuIeOnTyUlDswa3YXyMYiJBdmmdeVtQjktZ8i7MAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGtPAocK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGtPAocK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8DFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764679973;
	bh=QEgNC4uK9BhgO7HVjBQmTXkcICwFF5sngejw+cajPWk=;
	h=To:Subject:From:Date:From;
	b=hGtPAocKrS3f7JRwSH4fPNfGT1+13wIk5wHZc8COd8mu4IcZiQsT+nL1YqO7t50WF
	 ovveGj3fo8n0sW4KuWV7KsnF6AvMTlbnT9K/uEm/VRyhDhreuo6kvKG86bZhAqDLFV
	 2rPY0rPjbweImzS2IZOknSLv5HF94XBsfb3CfB/NbDeZpZ7UHIVroyN1Q7RogOARv2
	 LCdfBxhPOpGfyrpll1BuZa3dTFtyjqGlGy62JCX7YgCr7902/4vGZ0mLPTaC3XFv7G
	 tZmHK0ge8MQCB/JIHT1ANKMQUOY1XVLo0VesDPL/kURdvu+AnrPoKOqC10WAcAYAPK
	 gU2x9+H9eJ4CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98638D116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176467997358.12847.3230251634860999226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a4d3842f7557260a08709ede643ea629a82a185c09a292f8cc339bb41bf116
Date: Tue, 02 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764679973
