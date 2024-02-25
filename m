Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F9312B71
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708875497; cv=none; b=KeNGyd3m9hrJO67/gF/4EnEfgD2NE96lNDgOdv8IYGSWY92LDxU9x4Oh4G+JtDhIqee57rqubj69rNb36cpvUyvHRsuCK81LXOjMZBwiKY6rqF/Vpwm2vgAcAJaJl2gYFeU9WbYbmhkP7ef3eAmgzznIs5qmscd947eL2h2GEx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708875497; c=relaxed/simple;
	bh=qpFTPID+aWQhv1GEDw6jpby+lJ8I8vOqGbfY8IgtTlc=;
	h=To:Subject:From:Message-Id:Date; b=Jpp2cQ6lENCEsvmiAombkJWB2zB1aN4eVMNHSqt6voIgJlsMDg4mvZ4ujfv24uwE9xF2asQIgIoQpp9NmicInlBavGU/s2t1vd+xB7L4LweUmps6zkdRBlB2Jspp+DRjbydM5aeP+Zaj1XYmrsxMo5YzEzOh1AroHMqH8Rj9zPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai018Rwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai018Rwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DEB3C433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708875496;
	bh=qpFTPID+aWQhv1GEDw6jpby+lJ8I8vOqGbfY8IgtTlc=;
	h=To:Subject:From:Date:From;
	b=Ai018RwnunF4GzYHOIIyq7ZcSL3TDz3AdooNyMxDZs9Zi+iyROH8cXwDYfOrZh77Q
	 Bqv9iS/BFtg7uHjEPfcjFIm7q0VA2ITiEzLzy2EkSndgvMTjcQim9DFlk+zSeJUMrs
	 JFGocYyDK/RQXEr1NjwePvqejh/WVzUOmEYbVchpmcYFtX7v6NOb0/zKRxxKynyAvE
	 Zz8VKx3QA7kmR6Nux0Sh/6Etx5EF2KqaPYbJJhE4smOGlwyw+flA/ry38FutPdxXsM
	 4om2cNEZxjq37ThoTmGRPSFBOGbLga5TCx8zsWUSXM1uJDnU6sipH7QXq97G/26ACn
	 ZJQmblpb5SXMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A71C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170887549636.18189.11384797951567060555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a97af5abcefb97bc984cf0c923cb0dfee896e843f8412817b3a8022b51591f4
Date: Sun, 25 Feb 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708875496
