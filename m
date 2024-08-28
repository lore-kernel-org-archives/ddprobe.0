Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224F115C12A
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724834754; cv=none; b=L27IzxPRy84p146xoShTS+pAGMBPZpNOx/XN38mdXywRp2E4dJVspp9MSkdL/UNGj1OttYkpfrCdhLHATQh2fndu5FNbGbYfeUi4uxAkZONU0YaoClIcxMbBHRNA23LWHfFRu8G7+e/SE2NUIPi6ECrrAnWYD18joAvOy4P9lTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724834754; c=relaxed/simple;
	bh=ryQjtK/H06xASG8r+IiQ5rsdwDB5NvoOAf4jbaZldyk=;
	h=To:Subject:From:Message-Id:Date; b=scYJ1YBpJHhoqG6Yv+Ryrlm5UnlgNY3i7Nq//NIYiE1esGm7hDiRrSKxMuC2GMPih6DNFrFIKby/7JjH1kAPZyemt5RbwE+V0E82f4G1MntB18y2HtSiacAQyEgJqRotT6iJQAfwB0TU2XHK2TgpKzY6MxkwLvx3P1OXhpXxy+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3udKL/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3udKL/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9357C4FF01
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724834753;
	bh=ryQjtK/H06xASG8r+IiQ5rsdwDB5NvoOAf4jbaZldyk=;
	h=To:Subject:From:Date:From;
	b=p3udKL/IHdRSiNcNmqWecYxr7uMPf5pxaAvwrmdX03vFBkoGYcNakriFvuaJU3LFU
	 dsEBQ0sS8K419nXv+OJBkhFqXEao/obEdAeSq9qfUEV9jsYvpvblGcpnlfAhmlq5Xa
	 w99wGknX7WfQzFp6GIzQJC1fGz7yv3r7dwhCsdCZC61fS/VoOSEtDVDfD+/YX3RyET
	 7Q/wM4+FuzdeZwjTmiH47MkV7vJunq3XkjS4vux11ztCgvHSEjr543H55J6quSptEg
	 3/Ret19lExzkSy3V2aI1+uu2N+xQKcDl87obS3UOalpaFtpjyx9Hsb+f3fAt9XqDFt
	 YwR/CYx7QDXJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FCEC54750
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483475360.25045.6046500784875133545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c512b51db2b576ad4ff466442c0671f34ecbb9e13f92da759951f50a60c92c2
Date: Wed, 28 Aug 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724834753
