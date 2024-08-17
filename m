Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535A27F7CA
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723922154; cv=none; b=KmP81bmk2gqDMLXTat2+jWjWYlxafJBRpCPdorUp7ULqfd53tgWfItn0rm8NpuxkWKfYBzKIDuxRwbjOiqcb9XPBSWdpcaOH5x1pJALb51JZKEseffw5fXz1LW0fiQDOOdE9zOS/UZ4Dy99M/ClF8zT2zHbyl7E2O/4cCyxTcZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723922154; c=relaxed/simple;
	bh=U6Za2+4BvGD0GgAGDJqZRtnLN6fR4leoWPb8qMyKl+I=;
	h=To:Subject:From:Message-Id:Date; b=euNUqNpVQD9ogCh/Z6YiAQeeQ1vCkUcVvoREKwL8vpy1/yCNYuWtag4Rkurer68FH2QMCCucDLT+qPWX+I8oCw9cg2WMCWPh2rk2YtFTUvyOPRzN5DITNGkDsrtPPhYYs6Wt8+EbTP/8bJUHoGFrFIjoPSFHMYsKFBodMR/JUDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCefqSLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCefqSLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC298C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723922153;
	bh=U6Za2+4BvGD0GgAGDJqZRtnLN6fR4leoWPb8qMyKl+I=;
	h=To:Subject:From:Date:From;
	b=tCefqSLD4hqjkBT+EL2elRd9xzNosi5UJJqhCm8WhBjO22rTtyXz+Ys7T1uJmGusl
	 GdlHv8o9rL6Ir9kBD4kU+l/31qVhvJZ3rnnNqLJ99eht7Jth/+671dgDsOcCH94q3W
	 L9sCT0C2nFssYpURUhKJ5Efv8E8VFVK/IY2b1ncCF9ZhG1IeXret+4KkjhmTLTgjEj
	 wlActtV9Z3i8p7KEcIrflFFXCxOzO+09yKq/CS9ZiBstXdKCLx6hpo1S6p3kW737k3
	 3mt65PbyCaPDP0iW4RMOIh+4jbz4+r+Al68NcM2FjI6P7afquTw8kOIp5j7zCbZJre
	 kZYfo1xEh8tUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CBDC5321D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392215359.16829.18419996931682727929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d4fe0fbf27de81981699a67dd761884f4193d34c2bb399ab3155aee2fb4891
Date: Sat, 17 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723922153
