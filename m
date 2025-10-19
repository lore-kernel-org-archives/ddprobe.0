Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170F454654
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760877594; cv=none; b=mxWilwMcGtoXSyq6Yak+6lp8DHmHlqFFvmdF3OH+TyP82ikYrYJC/nFxBIctDbMHOl6qz+DffnsgmzYNw21YOMbPv2mcfZ7ryUNmgB2TmUqfh668DDYuIXO7UQa81PIeYHIi3nUHEonIrPogNcE+LivJEtf2rqExKDYDXej1yf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760877594; c=relaxed/simple;
	bh=xk5IRIiK3uCanTco7eeq3WRXYNPd7tKCGZERPNG5N/0=;
	h=To:Subject:From:Message-Id:Date; b=fPNlg8GE15bOaK/PEC4fuqkqGPhb73e0mxPC8PUddEJhDJvnzl6ep0gqp5ueWcUw8PmwIK+XCNR4dHQfkpajR4MwuWVgSKeh2BuIp1r1YbJrVg5qkUCVTyzINgfMX7175FMWqER5SXBf14QrlmLNkYm3tkFFFRNeadqBlr0vdIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2EvNYGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2EvNYGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24CAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760877593;
	bh=xk5IRIiK3uCanTco7eeq3WRXYNPd7tKCGZERPNG5N/0=;
	h=To:Subject:From:Date:From;
	b=P2EvNYGsB/F6NQh9rVeEuofgKlUjIEXwSfRJ4WxZPW1VQE4ET7yVHXeJRTgJ1kwUy
	 6JlICTc6w8CepWzp/0KgP3xuZE1AWenkIBLPkpCY+1IfCEZ0uZ4nViVKkU2bH8h/QA
	 RBOaYtT9otbzm/yWmW8eD9Y4feGo/5CyfvszsGVXsyJLevxTkLi0GUZs3aV8ASsRES
	 J424272SFf9qx71LIIXWNjS1lZso7HGH8DSQD36LhuWzpDTFZa+5jdTBgXeUD2SCya
	 OYl0uvcZWf0fQCYTw2t5TfjDq9LaCia2jZUKe2kF7SQkGI5mlZYMV9/RpPooZLEt6d
	 b87OLxCS4f17g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919B1CCD183
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087759358.12056.7397269156158030554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16c4dbb06e335eb617c9f08094da049d723fdf87e6553119658958c9fbfcf6e
Date: Sun, 19 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760877593
