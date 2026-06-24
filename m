Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1111A6810
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782301054; cv=none; b=ZgDUrwskBsF5zVNaNsc5MrVFkFo1T1muvJzmZrqT9xLIXgeyLXLE2hS2bw4B1P7wKlKrRhsPA62Up7u8vGPQlaoPhGt+QiH6+Ja5XPX6vCJXPW3PKb+/lx5ypz9tNVzR2+jG4EKA4fTnWNuIva3n9VmRn51ZyJUrFSUzqipi9yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782301054; c=relaxed/simple;
	bh=Lx2isEc87p+pFn3TmjDo71LvTzVQ5RLV2sjF/Q8gOx8=;
	h=To:Subject:From:Message-Id:Date; b=RMnmvbqC8V3q4HFeK8TEEDL6xnzgqGLSoz0PGb2WTlWZeXfUOZM0La0nS0cpwjFM/6uGhup6T33CXrjwf18WuC682xCaDYuIWgZ0uuvnNyMak+g18RGXikHRDe4H/MlJBpL2vovyMMVNwJv5Vah3UqL4+mjd8NfbeBxavbLdbz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u32irQkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u32irQkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD848C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782301053;
	bh=Lx2isEc87p+pFn3TmjDo71LvTzVQ5RLV2sjF/Q8gOx8=;
	h=To:Subject:From:Date:From;
	b=u32irQkMCCT4oF+Eh51Cg4DC4i5LqSYDr8DjXKiyb4/Up0hvR8B/Wh4bnBPKo/etq
	 JegtvcZAcHJgcti61qfy+m7Iav5bLu8qOElevnDY/ZJQRLS51tyOe7QCYTLiMV8wkU
	 erlSsIJ9pZn3KxIDbT1Sqdel7Be3MaSzeGdgEFitkS8skNqmJdQPn6YxZs+3vJx5XB
	 udyNyZJlwKnpv/pRnBk0PORTmdcQOWLHxcNWo0NndU6z15hPIeZRm380zERaFMKlz7
	 N0MPv0wNfe8AhExJn1DIuDWAzlstspHEq53rm10rjvzppyHTSTJjxBpfCntj0CuUal
	 LD0MfXVCQlKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1BCCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230105370.25098.15596485782687735482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f95404e8b8eb7e03ca7658c4f4fd23171ab84296d874d5663f05b4f0699702
Date: Wed, 24 Jun 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782301053
