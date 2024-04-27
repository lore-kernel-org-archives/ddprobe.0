Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CF3A932
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714231943; cv=none; b=D+G+sKXPC95FNtk6JFS0TpWS2gOLkAxhFkpwPzr6FGbWBJkD9hhxnC6QxVFXSS7347036hZKGVVl1HgcIMdxprq6nEZZV4YXNq55dcgkYJPGHCymb332UOrNkKsO5M2rzmeIMHQXl7tgZZwcdGKTtKUTE5t5hrLNx6aBTpEvrEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714231943; c=relaxed/simple;
	bh=Npn5c0qVzkFNqZKK4jj9ohmiqYglI5g3CMlqFbxEilY=;
	h=To:Subject:From:Message-Id:Date; b=TUCRxMmEWywpuwpWziGl8+u3XWJlQTVrkGTWr7j0NGzm9S1A7fyGlzDFfGcOHzvGM6uqYOagEIwbvM3a2KxxR3qR3DIl4jagwRUOYRHcajBJwgbI48ixeymtjfvBKEp2Y50/vtra+osz34pgnF4F7jKOjXFsoaD9KtonZhMYve8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnRYkVr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnRYkVr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0E7C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714231942;
	bh=Npn5c0qVzkFNqZKK4jj9ohmiqYglI5g3CMlqFbxEilY=;
	h=To:Subject:From:Date:From;
	b=cnRYkVr2RYHfCINXxCk0QRI7gF3pxRkhGmib2cNP9+yw3mu2E24ATTV4/KmtrM4eB
	 FtX0Z4xhrVZcX8vvMla2RdE9pYBzTuj8moXfnPAw2/+Dh3pRHqHWtsXvsKcWScd0OS
	 8PyAu5zyLMyEgcQvBwe7UcSuvdbV19pqY3j5FWiXNDpDtSSI3IqhcwP6e2h6l073Hy
	 MIkIPKh3LX7J3OuuDpg/N5MpVi1I4g44LGhHdvYFvnSRi4yxRfBSsvG52Fq2lKWEjA
	 qUWZjocllZuSKYX2pr8OqfRT8du5GMr9hsKmY8wkT307n3WPJR+TCuFeQ8pDEaF1It
	 YjsLGRMUPyHug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5F2C10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423194277.25529.2480885090892617563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d787a42b8a7189deba2b7ea4de096e9b7445e36fe7379b6a5e87ce8efda91c9f
Date: Sat, 27 Apr 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714231942
