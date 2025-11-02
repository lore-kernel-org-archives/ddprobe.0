Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7BF1E260A
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762050593; cv=none; b=X9hkOr1AxSEQ4ygsOBjX24WCjAgQB8KnXzI5dhtsTMZGm65tUUy99Zc+EKWpncvWMNUjVI8RmWxDoBO/5i2HxnZehHQiKq1oQ5LSlytsiJ/5lDAI+MaOudeQhUoMddP2L7pNVAnTFwOAWOY5jMtTo53cHrDq5c57/hIrF6hkq4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762050593; c=relaxed/simple;
	bh=NgFGBSManTu+dPSRun+XsS/MNXrJEjsKo1v9jnOhDfk=;
	h=To:Subject:From:Message-Id:Date; b=hCGjYUx0oycwR19QzDF8lOENNdDcMsCCaBJG1XwyCQhM7tnjO8zC+NYSpdhUE/NI7WQTFErqICXyLW1oDhVsUpq3ZybDMsL+h/+UT81H3Vnqqnl9XRJx9g/4xWCRr6udA38FPhN6FeRyo0ZhFQWjoXC9qrdsgd218oOTDil/lZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrExEZvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrExEZvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB98C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762050593;
	bh=NgFGBSManTu+dPSRun+XsS/MNXrJEjsKo1v9jnOhDfk=;
	h=To:Subject:From:Date:From;
	b=FrExEZvbuLpgKn4a1yp4FLqseQwI/X4W+ot6tbPgRAUa5ur2Z0NkGzBen76Z22XD2
	 iMhfnFu2aal5PW+hHjLSlEN6F5ZEKYGMIwGr1uWritUSpD9TuA2lDqjrn02ndF4ndt
	 GSMQ1FajYt0hzteRX6YyfUIdmdkMkrbR0u5tFTCq6i2ImWobRi8F855gN0dgSC6XWh
	 RWtQWTuoxgrvyaP4fU93DWjqyekGn8G7q+rmm95ewvFUELha00bDmMPio87VP+Z+Em
	 JuahXUbv5QQpfdq+VoITImkBPWSGLiaKT2LyWBvUwATWC+SLT0BugbAhZATBwZ6mfi
	 iJQeRbsJwRv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93396CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205059358.2435.2788116980821833983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433790c4bf8b15a97f67cf368f3f204fb39abe689e01855526dc274ef45be5f1
Date: Sun, 02 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762050593
