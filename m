Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C694EE85B
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790071234; cv=none; b=DDoQftQBZXXWfUmgXPWDJCyICjaKiU0ociqIPv8q/IchtKzeUW8L13+UYHl8dpqKAoQx1bg+H/v981qVcoqyLqpptXBnut9W6gZ/oNuQXZjV2xHFk+E6P+bUiy7I0r6ORCGyLk9d3X06es/gOqCYnIwGNm2Dp8G7LDOmB3iMmbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790071234; c=relaxed/simple;
	bh=rpp5TgJhXZqmgja8YsD2t9+krqKhLUEUNcNEyII0/BY=;
	h=To:Subject:From:Message-Id:Date; b=PS161qkJxcvS6LljW6Y+wVzhJ/BDH6exuc8IL25RnJSVto67JoW4toSYZ7OeLZDMg1Kt1RHXfrCopK3/PdOpboMqBa2ZTeG/mFP0jonJwFE2OofqLj9eY5uexXYeTghudxz7u0SIOJuL65l+vzNnmUTR8lskZk4iqeCrZLkSLxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncjhcbmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncjhcbmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3764C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790071233;
	bh=rpp5TgJhXZqmgja8YsD2t9+krqKhLUEUNcNEyII0/BY=;
	h=To:Subject:From:Date:From;
	b=ncjhcbmpRYoFcf1xYmXSPX/iowfb/ui/hVGKqJDM08T2shR9uUtbNpbrbsGInqvKP
	 zzQXHyT8Sj6fhbylQe82z1XlhOHZ5tujoj+3deT1+pIoN0Cjkw9PE9eHIpJJJWVeTn
	 V6v+62BGBXb/LwllEqy2QkriLodl8l+hxJ1wVavcMkEumCYiCPtr/bPT3Qe4hICpGO
	 FzRQiK3e+Ic/jFzA1J4/MU2BpfKQsV7PpR5OAgiydW1ZXZNOh/pSjQxtkmD0Y513VR
	 Q1rZpoJUJ9kolqyqgrg9Hfc5pTK9DewDZTej2DUIJKwyCKsPrJSTxytYwlFKQP1GS+
	 ayg0BgehzW+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9FFC982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007123370.23790.18255338587978258901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa5e938122b40eea283a6e253dc778c806c77c0ffbf7cd14ea44f4bbb585047
Date: Tue, 22 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790071233
