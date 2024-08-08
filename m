Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529CA18A6DD
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 13:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723122954; cv=none; b=fGreLsfJGDXOcUNl77J7jMor7D1G7myhRRcZx4gP0zMkjNhSBGYdpuy8+kl7cOBakzcwD+WyuRZdY6kC3f17kbNiXT30fEvWYV6hySrx8CwFHC+ScU0BGzT/9S+3pIJXEyjtWDDIpfkw06teExB1Xli4vAZw0wj3C02+qRxsyDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723122954; c=relaxed/simple;
	bh=Szr5Ah34tXR2D+MYB5h6/uYp8kHyoMaK61IN8zCke54=;
	h=To:Subject:From:Message-Id:Date; b=s2YmZwsD2X09YjaVRmyOvBe1j68OwcCKAg6p/sNdpMZxrfQkhxEcEph1ST/M6pbF/3DpzCjyEnfBt3skocjRdwGBY4wrBbLGMLmj6JuJPzRszO1l+obftWlhfriZ5FvtNR+BYpG+9oH7NFegYeCIvBtiQc1wKICOTSkhnRKAhyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfNSH6z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfNSH6z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1399C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723122953;
	bh=Szr5Ah34tXR2D+MYB5h6/uYp8kHyoMaK61IN8zCke54=;
	h=To:Subject:From:Date:From;
	b=QfNSH6z3KYfMooZRbgxynLKFEGUytzlDrymBVX9+HP9W4N0PXd6KSGFUzcqnFySef
	 Dmg1vemv8SysoT2zxec9tPFVJHFUXVlxJQVdPawPa3Ve2q+ZdpbFEW9jJo+ZoymoC/
	 g6RV+4P2OfHBlNTszLBvADKbTjYy8dAjFH2/7eTuPRF2+pUNz13QMziWFEzqX+U73f
	 tejSf27l/itQ01uhpgfwHH3AgX9DKpOp6x9T4hCg1u+eLVDgaiAjSmzi394mORfDvM
	 Y7QHqTmavQmtAYY8J26IK/+lHnZ4hvkcJVTS3C6MRpvd9MnSOThk06Xidyg3vI5y7m
	 hjTEFljjUYQEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80FFC52D6F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172312295373.24918.17048832834721670257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e717617ef3bddaa3a900ce9061933ccadcdcadbd7fc15056f781ab09d0658d
Date: Thu, 08 Aug 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723122953
