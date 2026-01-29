Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D603446B6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769705034; cv=none; b=SXgJG1A1th5KSWJnGdRc5plXlh8FMEbb7kXxKpFKjmVAsIkRRlclJANtQGVETRVi2HWKUcK+OGN17tpH3W65z+feiiCeTYatfGLzIp1WI0fty6faZdVNyhrJ9Da7JWjEULkgsDYAIPua4uE33RdKp9x6d+09lf9fQGo6OzNjiK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769705034; c=relaxed/simple;
	bh=gdgER/hA5bru4TQRXdRNoWDXbNBNmiM20tl3hhlp7DI=;
	h=To:Subject:From:Message-Id:Date; b=I7woplOk9Gjdne4EdAef8lUwaeVzrHz4Q/PUjEWXOp+L16+OZUrWILFKm17Vc1jtNeLRUOX72FKxTb+PHkgKki0hi2CpsTdBKcso4OydF4qy5Nj7dpNyg1UvIxEc4uVm6HREzH6w2pyWgrW/NC7BK1hXZSojUtIkigg11KSeUeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLnN+14e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLnN+14e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A238DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769705033;
	bh=gdgER/hA5bru4TQRXdRNoWDXbNBNmiM20tl3hhlp7DI=;
	h=To:Subject:From:Date:From;
	b=jLnN+14edDT7AC95N/F+geu56N8h646r132y/mdmUDJQk2tLSOzS0RWv5/7iE3NWF
	 qKQUFdI53qMHHDgQCF4fa2aF2mlauJWaSREKXBoG1d4iHGOr0wAAHqkrU7hfchkCCO
	 Z9aQdoJdf3mij1Xu5zEDwOiv6pHT9B30oMkxg2E/oSyW5o0TylBH1irWuf7rldsYcq
	 ibxG8sW0PY9E4fPKYOYuQQoHxnf5brd4U87c8OfbGXhLtAl8kigkVPb64vRPm/mMXJ
	 htW3E6rlEfw3aAFpFPLEIuLb8RRxYpUjZdwF5udKpIquP+47Ca57TuJQbx0rXqCugI
	 MQDlq/O6b3yQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926A7D358D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970503359.749.3410249674609637372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 995920ed33986988a32c7356a2bffc58b57c7d726f4a8d8227770eb0ce74d53b
Date: Thu, 29 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769705033
