Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31835215F48
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745406594; cv=none; b=jMBsNI7lJmyUHK0N7PQ+2BYlvL5bFZGn7bYNhTyQg9uC7VY5M2x65A6Fo+93whS9BN+ZDP4ERmvlbdmUrxQeIaeTRWICqixpUJ/fpsLbmyqTcBdbkKv1DojYnSwfqBA3tJfdKJYsmlE/j349aF7mEPGgdT40dvNCohyK/8rfnMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745406594; c=relaxed/simple;
	bh=gshMqQ6bzQVr4clhZ3gcO4MqiDsiU8eLZMvHCJPt/n0=;
	h=To:Subject:From:Message-Id:Date; b=hZ1/yVGF2RDVZoUkwIzJJ846ujeRx7c5aODNEKsd8/XmC1PNoMIm1xWMw8btkttsBiWREYaq0E7mhixcyFVgvhkJo55Uh1vQRZffKgczuZ+fqmD+82dcCbnBnFUz4DXcC8bx12rWdZpZuY/IzDMntyQB4zcE6Jti+r5Vb8A4+sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/V4pa0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/V4pa0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6BBC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745406593;
	bh=gshMqQ6bzQVr4clhZ3gcO4MqiDsiU8eLZMvHCJPt/n0=;
	h=To:Subject:From:Date:From;
	b=P/V4pa0e/aDFnGJZP7DTolwAIdAI2zocU+Jic0ySWC0mAK6DSINLs2BTkzXN3nxmg
	 wNEoGT8SHnaY1ctAhdYZgmmar4L2CFlw+DMdICt3bwb4m81iOTz2nbUKScrdTy2ScN
	 y94nk/WugGqyeC0HFQTe5AJpu3zAggk1uXnh6M7ldVFA7yT4/+38pO2lLnCEGQuZOR
	 vKRGCYGgEt3IVm0Y4IlaaFylaWnk3DN/wddPJy9uNbdbg3XL38xlqsYPgRq+qO6Rje
	 cSauHMfHhbMlv3OXe6aonxlWGwVwGUip6baGeHc26Od+Up7LOaA34aqO1p7znfkN3m
	 e/rjyYtU1enCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC42C369D3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540659357.16397.8529098492650053359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d98fa42f0f5f59e6b4320d4412a7eb947762ba58c059484129e3a64be5df90d
Date: Wed, 23 Apr 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745406593
