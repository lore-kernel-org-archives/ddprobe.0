Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A963002AB
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775625334; cv=none; b=HYjGuJ65W8YphzeBdAX7QO3mre6G/0PkIIeKpoaBHIL+V9pkmry2d9uQ6Y8hKZKGAz7pEt9H1bGK89/YqBR9Q1Pg4FC5flV/HWqsluV6yll8v4suHSN0UNLJNA+9VxwxprdxlUyiQhA82h0eHU5yCpaG8siuuT4bDaDFalEQ6R8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775625334; c=relaxed/simple;
	bh=WBTdcMNvInXwh/usic5r1sI3EuwHC0LELMFC9tHrOO8=;
	h=To:Subject:From:Message-Id:Date; b=P70GjQKYuUjAePE38naNbyeDqpemjeYZSsxePKmgV/oPeD7xK3bsh3FgKA/eXNu+VFFnz3uaTuef5+00yY5JVxYoqbUrp/dmRwrZKdUEM9rh5yrMRNiie6gx8XnY9Za1QnCuy8TYI8OWdQ9wP1JHh6zJUW4OoiJZ0wTMA1crKxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMzQwPnp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMzQwPnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE611C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775625333;
	bh=WBTdcMNvInXwh/usic5r1sI3EuwHC0LELMFC9tHrOO8=;
	h=To:Subject:From:Date:From;
	b=NMzQwPnp3a1PZfN6KyXAlOtUrTDmNRT+0wlO5BX5d+tGGINuxq2CIcmsL0DKOZ71c
	 y1FrBwqpL7si/nh0ScmfhCj0WXuaEHDHWsc72oaUGGMcimkHDqmsqznzvMV5eGU55Q
	 A0gM+RSDlQlwYITunmvtYaVeHgwRoc5KXZj5Bt0PwJuq1HwiQba25y5b9ZMIJAO7A2
	 e0+kDmQFIBOd89OR8DJSyIMUer5iGIho2tEcjlK2tiFItO+FqXdqyc4+PRfCPI9uj6
	 gbXGtHKcn+NHf9BLs5WDZ/Supj4aSWkUoZxGrbe3Dv53nnP708SN8ybfmp1uwOTRdX
	 jtNot4zF/E1gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2678FD5F75
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 05:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562533372.28709.5454836065775013523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 268134aeef73aa65f001170959dc01750ad1b6602cc9287884b453f3fa681128
Date: Wed, 08 Apr 2026 05:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775625333
