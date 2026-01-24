Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD412BD0B
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769231034; cv=none; b=AbP0qL6v51eN4tMsMFk+l0/UG6h7bre73xBJ8rJxLLJyjgbktPCaAuAW4a6FHkr74VrUc00ZtF/aatZbtrPaAYWgP9ozMUoX4P1UnqUdQGzY6IfXGM2GRVmG98vYURhQJB5dcYqVe9CzvtYrQTt5jsRWS6YpQzCA4MOQNXNACB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769231034; c=relaxed/simple;
	bh=2foxnfV0hvQ0dzYIKaYKBLX8qAnH3kEW7Xj591y+jSI=;
	h=To:Subject:From:Message-Id:Date; b=P7ON+B6No5W06Zsi1YTdAnt2F6tE3aRgir8WHjEMO5gKOFEkoQyWGV9M/HAGK5M7tsDdit0HlVWut1VYZs5zi5vwnQ21ndypaZbVr238amIWyhBL81blpeuhJjovI6gaMzeOd+Tkgz3vIsKXTpc+pLwmlSIQh4IVo/oshtRltjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff6HGAZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff6HGAZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAE8C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769231033;
	bh=2foxnfV0hvQ0dzYIKaYKBLX8qAnH3kEW7Xj591y+jSI=;
	h=To:Subject:From:Date:From;
	b=Ff6HGAZgqp+aS6591IBmFyRMVdeRkSl4C/YAIgFICmGS4TClOh5R/3kdxEyw37IjX
	 O/hACOI3I28hobIf9D2sn3DNItQ3ZG88fD4uwNG8jwY4mn12qmq3VRvxog5+5nzIdM
	 aONy1LG/o1lIWOPl9iLAyuZuI+9+Z/vhtFeQ8T//Z7Av9xYKg8/XfNCIRSotlPkPl3
	 HcbcIBp4+j1CHRlLa8E/SACaN1kPk8Jtcyj8h2+JlNZ7uFzpXSisM9acN99GHEX7jp
	 231i/wMj+rSS8SWn/yDOzUtCinxZCmnM8i+64Np/33u+MdPRTswVarWUn8UobfF0Y/
	 SXy97Gk7HmmQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9742BD7237B
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176923103358.32300.4404585803371961121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da417cad81dd0abe57cbaef4faa2115c7b1f48a286354a729afcec202d3122b
Date: Sat, 24 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769231033
