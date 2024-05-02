Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FEC152E0D
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714660343; cv=none; b=J6ucVt3Rgx08rFKNrrdS0MRhVy80fyDlDWnVZuUWHKYanbRxzkprJcdCGVlFkMjBTA5yk9VPQQEBXT9PTTbYWJjf/htLccRPfbvy8FUKGRZ7ZrKmD6poU8+PxnsPAT3Alz/o6H0IIlsfsSJHZMbTP3BPajML/DXguqrj5Hvf+7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714660343; c=relaxed/simple;
	bh=E4cPXG8wwfK7Gge9CTeTWUfKCWAqm6yvAssij8tHUZg=;
	h=To:Subject:From:Message-Id:Date; b=lV61dImha7A59OdzA9Eh0IKZ0tpXEpY9IBWs+uoj8Q/PWb/BrsPhFuiTAiXM4DTk1MVbQrvGXNePizV6bJLZWErpBwpZE0eZrFVHYCO0KEWdakBjTsmbBO1z3N5c7frUt4cxlCdDr4AXfeTOFB5scKAOHqRprkSOjC9RsYsxyVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftrT627N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftrT627N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF0CC32789
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714660342;
	bh=E4cPXG8wwfK7Gge9CTeTWUfKCWAqm6yvAssij8tHUZg=;
	h=To:Subject:From:Date:From;
	b=ftrT627NnZ46WlEUhg5zAO8+4UwvDlTDUM/1fvteqb8y2Ye43KOgAvcZusF/cwwf3
	 ckiXZqHIO9EgR3RTaCTZ35XjYqcJ5RQtIcoxsR7QQK2e/RWTuqnnNQ9rbnTXnzl06F
	 3vqp/TXimDO7waLorF33pVoO8RPCK4iZu3wbsSS7wOGAm115tXzejsTlQ+NyTnhVG2
	 xB1tu1u1ezYG9SbffMX4Qcr+pyOeU7DKCraxFC2OykLKbGllnTThnXxCV93uEtvl8J
	 IBvhEe1mKI5dDy6N1dL2vDWHlzqKlNz6pl7jUZp037Ieq3MYTohADleZcVcLbcRC4C
	 bw+iT8v/4FigA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AE2C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171466034281.14354.8937519675096632693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80724142281c9c0f50cc628d71bab245aa4461613927641715fdb61dc3522999
Date: Thu, 02 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714660342
