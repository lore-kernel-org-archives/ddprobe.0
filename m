Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A1B29E112
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753951193; cv=none; b=Pqnan/mmk1LkkCNKLw0qbhO9bKio8GOTJPBpTJ94rEydIMD/IsGFHJonHY/3ECh7mnTYk03DrEKAIUgYEKnp5ta0W2iHPng5IGJSljC1zwenqB1E7EffWSwTodsQI3WUwMoOYxvaA67uJcHyoX6t7uIO3iHDjBQDs4krckRcTXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753951193; c=relaxed/simple;
	bh=kM+8LemQ1JWUGvBTAJ7WG2u8jr6y/4F1qaaSsoq3qNk=;
	h=To:Subject:From:Message-Id:Date; b=hx3RxYzZt2WVk2jsexSIe13bqzUr3gfMJaXnH8J5ricFb0i0XoNqduRLJFm+31dEQxej4Iv4ksyB/uItt6El80JyQ+gPPX3VUsqkqnms0u5pWXZbIG7RXCGutk/sNhTYBNoXW6yURfFyFo2ZOGejvxwVQUOpBwbnklKWupZJ094=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQ5irUQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQ5irUQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2777C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753951193;
	bh=kM+8LemQ1JWUGvBTAJ7WG2u8jr6y/4F1qaaSsoq3qNk=;
	h=To:Subject:From:Date:From;
	b=IQ5irUQJyQYTlXS4UdA7Pm6AG+rmbDmwtxcZpoLF08jlhpoFpRN20mlmD9qQa8n7R
	 a8OlXJ2D1/YhXUIgpqrJQY9e4r4aviT3a43SSfH+peH9YqwgMY7FXxKpC5BI8N9wDa
	 rwluJeEUHPxzS26y4JoHFZNKd3IbLWg5IORLiQLP5IqAwtdzZOZ7BRkvjCPvhk5HvH
	 Ddn+oHIGip/iXPzODkERM2afwH7mrNJMTRaXrhs+6qKnz+F0MQFig+ovs7t1ZijNZU
	 GiVbQx9k1jInzP/+1eVF0eA1u8vjRPD3IsyFu/KQq2uvlQ9ZF59jOPK6Ywmn1lGcAA
	 9cFvuZPqCeSSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D2C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395119357.31160.7692156945802014903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e45099a48897b18961d561000ef5b9b313fcbff32891b67637a6072a2b84e3d
Date: Thu, 31 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753951193
