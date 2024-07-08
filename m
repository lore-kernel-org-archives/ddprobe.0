Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B926146D74
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720466783; cv=none; b=GLrxOWjOXZuXDjhJkF/XIJ/oGhwbSjTieZtGjppdAh6dHcSxpL+rPonSUv8gvXls/LgNbF6xax1NSHlgA8vTCadH+vscZdrPRV4U9wqMvtO50JSaYAQapPtqsL4B4wFYM+91fiQi861pk11on35PPXQbpDK6AFWi/Npo+Gzi0EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720466783; c=relaxed/simple;
	bh=rDXIV/SdOexjUZY0QOEKp4Rn6AeeyyQ2yqnwAnPiyMA=;
	h=To:Subject:From:Message-Id:Date; b=n5nOSMGjt9IV6tL0ZOd5hCZzlWXXuKv18DahMElaUyGKERMaIVwv3KxsP4WZOWC4d96RwpvAcH7ipQ3eq0BPDpis84T7JEDCenhnupUBJ9OjH4e93KFlk3mcK/1DeFGtilrxjuF9SXoL0J7NjmulFNXYW4twa5tFGcV8nFrKEi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELCNbbQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELCNbbQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9478C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720466782;
	bh=rDXIV/SdOexjUZY0QOEKp4Rn6AeeyyQ2yqnwAnPiyMA=;
	h=To:Subject:From:Date:From;
	b=ELCNbbQkQE91SeOti5ejhgx6rx/16w1uYFWXcFEhgdEPSRnzj7Nxl/jI6IFJP3Hj+
	 H09y4hXPnUW2bkQs1Gbg3CFgja05U3dPnTApuyt9KHmQvOrYDccbaZ9QxW+ysBlJtX
	 NQWwYpmSyuEQF/jj3gu0xKpMUVrBmmgEvZ3mzy/PvQe1mkmx+j4kCbsjKx41p7QJmK
	 nD6ghlpdb26PcGzcPbwOSWnZgP1BhhXfi6pbFzUQhqHpFXYAk3qe36Vjnls/f+LODC
	 +ZrPhe8kJEnf5L7mzuc8xvAwYm7+H+K5oXA+6MQRwrFqM2fqz3tpSq6TFYYk9Qz1+b
	 A60BCFzy23jNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5670C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046678278.16121.17985768487318154232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e148f5fef15fa0f6dba41df5d4b49ecab70c792defa19171d46249cd2f6f06c6
Date: Mon, 08 Jul 2024 19:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720466782
