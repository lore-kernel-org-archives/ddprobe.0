Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415F32B9B7
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730014554; cv=none; b=kIQjTOzeKHwHthRB6U3q6At25rSB0St04V6tWxsxWQsaLN8+cPdI+ka+in6S1vGrWIiXwsAuiQt8nzDOd8UdYurQnURGMV4/lJf+szDm0AnFnmOfWktNYs13j6Vv+eH1NJr7sQDA+XyWhM03S6NIe9KGVVTfE74Daui47NRX68U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730014554; c=relaxed/simple;
	bh=5YrQoQsshJok4C8HP6QCjyqQoVD09+mTaG4yIjfY9lQ=;
	h=To:Subject:From:Message-Id:Date; b=WheI+hbb9v9+ymT543bGE8wZDzcxNGQJ4FZh7ijR0dACVC1hrq+MLpu6PLwmzXC8o6CsrgI9eEUkcJ/RtonQSce1B0LotJqWV9z7MD6DpkSu+LsxMFlHnsL4CByzNiLLqNYySr7eOLLE7/nE/5I2ZpAC04vg1NupBuS1JET/m4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KC+nNBLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KC+nNBLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD479C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730014553;
	bh=5YrQoQsshJok4C8HP6QCjyqQoVD09+mTaG4yIjfY9lQ=;
	h=To:Subject:From:Date:From;
	b=KC+nNBLDNr9H1DsdgptjmjDqLV5YBrUe2LHZLDH6IbUJHfkVmNN4caIy+ududUUvm
	 TidB45E+fRoV0TE2JSU+tfZIzjWleq2AzREIBktlWBBi9cbrtZNuJBz+SQk7v/Gbu5
	 cpCCZRKWDo5v7SsT7J4f7hhBr0XM1gdWVOJRUyU5QfWKivpwzK0BM9hOH8ju30OMqq
	 giqlPQJ3h9TEmnUg97MZjo9JhHKATAuIIGbuc3+SF1NShU9ukUHUUyQXmOjbOcSwge
	 BhrC+Elrzd5m9/AboeDr07gWXU6mR86sZH1RV7r6HScERTkmSI+vy96VpyGE48q9zY
	 z3FjtTsN3uvog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986D0D10C08
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173001455360.16051.6486849525371696576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10ecd997f72f0ad5a31ce290bfed98b9801ace8521556b36b8ab9accb3ff770
Date: Sun, 27 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730014553
