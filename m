Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB1013FEE
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775301334; cv=none; b=SZiFCyp1MRqExWIZ0oVhAfFTe5U6mrKZOfndFqwt5ksw2JezfEVYASjyS0GtD4YeDVUu9GeGoaufKWVSDFB+v2oeu3p5nIhx5WLJC6o6im0k7x0X/Uffk5NuX0RQZ/M7+SrOnnA4EA55N8UgFWye5R+l6vNPzxD3XteXOxvX6zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775301334; c=relaxed/simple;
	bh=CAqN9bJb361qtPYbrzx3czfei8GwgvxLM/x5L4fA488=;
	h=To:Subject:From:Message-Id:Date; b=CFkafnOeSFg4t5aHUIkHjICgH1Za2J+/jKpTp50YautPGvQOfYlDGx8jYnKbWVf6xszw6NqcjpYxsJ67YwFelBJ9Sgqi0sP4HkcdvzOuODYC/B6jrDDjEnduRiDeo1LnexO6pGkEociANHt5pQj1IstzlWEp6vMZe67umjPkbvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvROS9ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvROS9ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6519C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775301333;
	bh=CAqN9bJb361qtPYbrzx3czfei8GwgvxLM/x5L4fA488=;
	h=To:Subject:From:Date:From;
	b=OvROS9ihQ+McBmu/J+tsgIHU/iTQb3z16KlkDXPx8Itu5pTmfEaKqExEcXSiW3vxt
	 u2yQk6FvyJZn++L+4BCdpovSaz09+l+1+wVqJeF8ii8wY4nZSVtHsZTNTpo4SwO4dA
	 TbW3DGP5k6rjwY4FAs71wunnsXPMbRl1zLqUDpkd8DaBOdB1/LN/GzQXqdUQpIAi16
	 CC52qQ6pH6/yYiBTR2CXtTDjdCEB+AjYAd+MAyF1vHMLzlERmqXz6KTNyQ9Adrl9UL
	 +UmPH7QysFVVuqpoPzYnkgjyy8Pz6UcZVbWEUIOXmhUedrf5tbykyJVxJDxEs0b2wS
	 GCGUk3ahkfO7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE5EE88D66
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530133369.18983.4100023771631183584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92a46f21c65a66e047d9ce502acae01da74bb2fc5d0fb34f0b8198448393a85
Date: Sat, 04 Apr 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775301333
