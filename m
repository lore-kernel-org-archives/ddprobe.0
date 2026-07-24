Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFAE175A95
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784928034; cv=none; b=fPWPS2wIZWYprB7OlcNR+JluVrohoSJ3KSXNh6Rr7E7FZUKNK+04OPO/L6GZctVvr4V+I1UEX8guHCxkZbgSGZF0Qu9doptJ5H57QJTN6R5iA/C6sptr3mpO8jLNFsRsxTcFiWjtMxfrXCWcDJ2n7TY4yDv/5pNZugdzBdOeVuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784928034; c=relaxed/simple;
	bh=Thw7jkH1fPdI4fx3bVrWkSXTRptsMSnDaDBS90NYrLE=;
	h=To:Subject:From:Message-Id:Date; b=AJS+24wNeeZX53u3GwByUxrXIkqZEsErKnCC9RTz/Fwwav/ciXpL4ZgKeI438FId2/ipuTho31jW7oJzTsStnUqiguujJGOavrlQA3omwjV5dDy+Q9YW8uTI+EB3hpzDIZ39d0TL7OSxIw4V2A+LOxlpOopbMb+VOhZF9Gow9Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umbWptWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umbWptWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE78CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784928033;
	bh=Thw7jkH1fPdI4fx3bVrWkSXTRptsMSnDaDBS90NYrLE=;
	h=To:Subject:From:Date:From;
	b=umbWptWqgAQOUiHOEvuTWOpKvG0ue4pdXlscFU5jpke+Aho4JYTa9zeySTegjwPSU
	 c4dVbYSj6B5Gdn/IS0T1j+8R2kxnii++YeQH7xbBYrLf0PgqWYJKj+f+xPq3bj94X9
	 dhlmR4e/bBnp4Yk4V0VMujZJ0bkthN+vUazaCgVy6IHhdfG1r6MdOb2CJJwCXEg686
	 9sEYY7Lj9nDbMEOSk/m3AVm5aGHfNPtZ9UFsI6kVKAR/TT9vGwsnFStNqp8/epEDNy
	 B+BvlEUKkimKNBNHLcg20ii4jjk8X8lKT9QhHdUZEmXZUSh/t/XSXUVfjA8z4w6K4E
	 OjNzGMEywOhHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B6C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492803368.32371.15333842551541280355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb253e5fc8b995df72baf44ffeb39f95f25f19990739fc49279fd912fb026934
Date: Fri, 24 Jul 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784928033
