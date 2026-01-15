Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F7130ACFF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768520033; cv=none; b=lCyBuXdvHfdQm7ImbINBs3hvk68Qshu7zl9nuGTSEjnmhjs9RHoW9FczF5J3n0AhLnakToy2bQgAO2FCVFaXbkzu8RNKBDupLfyu2Evz5dgM5VVM0c6XjxKuR9bf4MBUCpjGr6JtXleQXmeCkAur2y9Ozyqh4gfqBER/tLlEFCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768520033; c=relaxed/simple;
	bh=o7/MthsT7pmGg47Jw/Vq7vEiqkNY++vHBIAGeO+CqYQ=;
	h=To:Subject:From:Message-Id:Date; b=sr4B4zr9bN0Hxls+mRbZw92GQ/e8Alo6wklOedwYEyRQZeOse8i4ONeAWMIxFwI6uYxRfgjXMGtOhURRPF6fmKSLBcGTTEBzTOPj0u3oqoRT3NdIoQC340Hdrv3H8UzngYpFcVKin1mupOzL3AAir6hm6qRvDdvWs7gnsD4rh5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5p6kvkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5p6kvkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2193C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768520033;
	bh=o7/MthsT7pmGg47Jw/Vq7vEiqkNY++vHBIAGeO+CqYQ=;
	h=To:Subject:From:Date:From;
	b=f5p6kvkR1EJM5kUdbhQ3Y9PjpIZopbKQIm38T0yGWpm1Td+fM4MbGb7xW9neaN9n2
	 LhRjlAdtOQQGg5EhFyDq9xiofhWPgS28cSYDCsOQGY9oDN6zeFXx2cgZ/575cPf5/X
	 qAt3d+pgHqrRriA5aVS4wUTX8HYkgDpID+OsvU2m8bJRrPJXFMiEJUgR0WfMz9QXEr
	 Ftv7rWLDzHn6UVAs88l2IFxXTyWdKaLH3X1R4WiSjkd6bd4izyQ2HvLiJMxwvkGYSh
	 A8FsUcMYORksevRKi5dainV+oQeNcDy0J0WraiOArv5i6HYBbdOO1XLCPJy/nLGmUs
	 n1PHlJD0ukjmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B47D46638
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176852003357.16735.454320363261360221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f24a94eda7bf5c7e99b9f09b3587a789cd44405b5bc75e3fda47fcc5717f100
Date: Thu, 15 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768520033
