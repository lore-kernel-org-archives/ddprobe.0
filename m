Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF6D367
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735781754; cv=none; b=dX8P5TbIPAnmN8gokZ7AjF8CcyNXVMjXA6zI0Uhx+QYi5rgAPmg3hHp/SNGnfK8cmjVeeheYd1kDab80Kc9Y0Bh4C1zBABfO8tki0mEzHaJ3CrUY5y/Gad50ppAO6sEpiAmLwl3Wcy4czjDNAHxxZXS5a48vL/54SXOH8PnKLgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735781754; c=relaxed/simple;
	bh=yWDfrFbpDcpeGj+JuxBRUkx2q7/w+fojzpO1Tis7wBs=;
	h=To:Subject:From:Message-Id:Date; b=f8RK/wRnZ2VJ6n4vnl3dTJAMOxXVaD3GJahCqu0fZn3Q7iwN+L1Ur2OGvoBabT5hBmkhcB+dshGQi9dvqXV88hx5zvtbhrAOvxEb5rb7jkofb0doRjWnoOB0AquGUa/NAXSYuUF5ZIVhPb8l/wd6l/R5Tz/nGP5/jY+Y6S1nio4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGU71Pxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGU71Pxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A94C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735781753;
	bh=yWDfrFbpDcpeGj+JuxBRUkx2q7/w+fojzpO1Tis7wBs=;
	h=To:Subject:From:Date:From;
	b=BGU71PxdfMUeL+qRs0jjrKBvXYyk+GKv+bWPWAWQSFQrxsivQvn+QGGrPk3yym2Ml
	 efdiA9fbIr5mHmL4ksWxn9xgEnN92jw01j1Y4ijThs/Dnrtag7vNTk0MH5OcXEBVSQ
	 4j25CRf6TQDIv7vexAIxMc0zJHC/2BkC0XGNmwcPlQbnQkO3jjEl+801+5wGEtvJ0+
	 RSQKYl2GolwLRGwQi7ijfI0xUecocx4KFPL6TZDCpb+l8IU9CXz+9oXkWf8Qx2Ehkp
	 xJRz8D/+ncN4WPIbHyfJjZ52jo+z+qFHpPy6Z+68nm9iWrAPlf01WnSGgNo47Xmk72
	 +TkEryaSQXt1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9777CE7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578175358.12487.3984891213564208711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74e2ff967fca443142a3f2a9a8aea7f4c753d97a9f2946f6332d6b356d8b78b
Date: Thu, 02 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735781753
