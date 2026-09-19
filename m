Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649643B71D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789816234; cv=none; b=rKQfEFXGhsJHhiwYlqCy2thEohuqbIOqziyd6ybYLqSDcR01pfpDn5pOS9dPmuewIUAjyr14PObWkbh5Rjbpp1hRGU6FQbglROIiOqjUM652zvxhBErjhMD3nPxur4lQbbH9SQYmYr+/bNPkjasCqfUPpYJdU0DR209sNCMBwy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789816234; c=relaxed/simple;
	bh=JsCWlGCZGsjOAsM9nDh//e6WXg4Y6NMXXLfk5tROY4M=;
	h=To:Subject:From:Message-Id:Date; b=YVsg7AZHiB+LUMo6D0xs8xBw0gc4gRiGeAkF50K+m/dIamDWZq0Vk7lZSUOh7vzAw10T4HIj4TWHMMGaKnIiFuyhstDe+xwK2ITIQTI7b4kxfBar911rY62XFOTuaR3pS4pNL2KiYsol+W5/jlgG3Ktjb0batb3p+bzlkPgQ0js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhoW3G4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhoW3G4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78C0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789816233;
	bh=JsCWlGCZGsjOAsM9nDh//e6WXg4Y6NMXXLfk5tROY4M=;
	h=To:Subject:From:Date:From;
	b=mhoW3G4pswKcBbyeVRV3gYtnSCKYdyNz0bAiyAySnWD5RRhpyoJMW0fFuiIKCbnph
	 Xs+uwKqtxKhfrB+dP68w7hT4yOgZluXR/Np17y+2cJYOvdGsQhpGNhA4vblgZDDvN9
	 7kDlY1WPSfbNLHQnH1HLV4WhQd0aiAk/NcU4QCZMpmMhuzGy5R6n36x1Y9mcs+1R4U
	 gp85BwFB5DS80A18gkQOqvI4CASdAq/ODDkxy7Sy015zRJEtj8ZhMmF3SgeCbk0Cos
	 +pg+pjxwv0cqJHoSiUPkKix5aQwGXBQohm0RZNSvctrBdZOqgKZUUueA9K100IJK3L
	 8Q7Uu8k3WeX9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAABC982DA
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178981623368.13544.11974502741293199312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed3c969cfe6303678b452fc8470c120be0cacd5f9b93a536d02ee7ab405793c0
Date: Sat, 19 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789816233
