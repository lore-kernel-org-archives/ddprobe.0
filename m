Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2151C5D5E
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770760434; cv=none; b=TgKnvsGLxqDvOwnF5czGXYuULMZj+bEiFFaLHluiDxgkkWJbyneqgBmc8l/sjMW/zAvF7lhctjwIFUKWizjDbPAlNSljTQUXasaB4y+DK4OGVOATL6MLBeAM0jarrA/w+kr5rZoPeQelocAOw8ZlDFIrkuoit7EP4SHpEN2egTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770760434; c=relaxed/simple;
	bh=CTkc1yyMWJXHGLGnmBhP6wUhfoR3d342kfEJHu3YjDY=;
	h=To:Subject:From:Message-Id:Date; b=Qi5ArSOdCgRdNeyYJgyG0J7DtNt0hGn1LLZZDjJFpdhmxNex2AaWbL6F5qnQ/A/pjPJaiZXIvrRru9orFOUxhWl3KRTCDrNWjHP9ck0D3fDOS0FMeyB+9ea3Rgfj7IPpyNCgTlCNem9PL8EY+JETkpI/0fqGD3I8Rqhi+24kMC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKrCYBy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKrCYBy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50E5C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770760433;
	bh=CTkc1yyMWJXHGLGnmBhP6wUhfoR3d342kfEJHu3YjDY=;
	h=To:Subject:From:Date:From;
	b=OKrCYBy1SKQiY6WwH7nJ+k7yDPq17osJjTRAe8tlzlRKJX5wHzY+3YB69I6om+xpk
	 6JFz0mZb5VTrnRjCnRgov1iNtdYzcpmEyohfjx18r2HM+rQxJevqkDWFjwusjcKGhW
	 1so0foDBrjclW/GtqsdNDMvEMU3Z8JbDGvyzV3qaYOqFbwaOSVIMdJgMOKQ3THZeJa
	 TmsRGjc3w9rTajpS3E3af+5GQRU8MJolajV0atIsR/sMl1uCZnHmXbsfc0w2v8iajd
	 7cmdBceepV2pPI2V8PVk6F3Uo+ftGrEGhvkhKj56nGJbN4TpZE7af6mDFt1mPFY/SU
	 6GH61S2akzhDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC164EB2700
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076043365.17914.12213722323441744946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33210e005c12fafca6b9a81d35ed12933b3adb7e63d6fb88b96ebef2cd5465ab
Date: Tue, 10 Feb 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770760433
