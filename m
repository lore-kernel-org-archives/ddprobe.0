Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340B8145B1D
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731183954; cv=none; b=lnH6lGi+oyNKFpj94gw3+emDqwBQCrQTO+UwoI2nB2lwi5Ja2AvJ3lPQQ8mPfkVJtBbvKvdBG+VoeFxIWokDSRQYZZbthNrg90nwX9oCoo6rt/OEDJWs4wJ37As+CZqJ7BNe4VtLieADl/VOw97Q6sKOvIqZq419bhAPGaPF2nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731183954; c=relaxed/simple;
	bh=fBG6DHXg300OVnKSunq+pH29g2gVnHPp6UGfsOgafxI=;
	h=To:Subject:From:Message-Id:Date; b=JnGgopdeCkifpLVch4BrX8uYPW9ORY0GE280YcIPZ4IxI4wgBvxh2uKlJakujZryuH7HRi8Pykj/TAx8zp//jJl4qLqEArRgMjkpQH2lmC0gZawRXcU/wQzcuTWIiOjNrsUVszZaze+3w4quNx+yKBzJ3GbQ7XLFAJkG3VijRYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGHsULf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGHsULf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE1FC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731183953;
	bh=fBG6DHXg300OVnKSunq+pH29g2gVnHPp6UGfsOgafxI=;
	h=To:Subject:From:Date:From;
	b=lGHsULf4rYw9IHw5+qDUwAI5TBeeXex2qspzUMni7/r1OUWn/pVssOoWBI+FBmT5q
	 RGix3jsBbzRsgBJvFcHSjpAJbKTDT20L7vbrXvfUkRGAopyoa0iAT3zxqdhfNtexpn
	 iZPzG9BeHRCtVtSez+JkE01+s4VfW25Dqfy4Kwar8N8aYQnDfKdrLp2blGmfDyP6kh
	 FkSrVer+PwVlQxS71lKNOy4vP3RbWuph/OYTrZnro9Ngk2nM/RckoR+C24UAQwjwI3
	 R7677SFkL+IWmD5pEuiM50bHOZF7Tdb0PHalZQUksSa20SnrW5IkoRty9/4NwCRwf6
	 WhCd/v7jLm8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B91D5E37F
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173118395359.9776.5020377805696223632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9b34ecb8313edfe2f937811cbd2d0b293c5ec1a39ac9087aa32d003506cdcb
Date: Sat, 09 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731183953
