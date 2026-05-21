Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC3023B61B
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779344434; cv=none; b=Ak8oASY9a4YrMo8GxuYixYaoQIfeXkLNWrVOZSmDbmduG+eL+vw25WgjaudQ6H0iYWiCxMbhNDGuEc23sHPEC/M/Hh8+zUUMjbaZkgVn3EqJzxgb8/qq9veEIajrOQiRKqiTcqylBQYqbXhmJUUwByexSLQupfjj/o13oq1zKzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779344434; c=relaxed/simple;
	bh=3LO0wA3fy1AkBdO3A5quT6ZBWmT9bnNDXzWANiuvf4I=;
	h=To:Subject:From:Message-Id:Date; b=Ukt15yfloeSgI2LEdWM+q9g3JbIlkQ2/KQcvuZ2u8LBgiKSJUvk4+PgsKky1dVWaiqMwi7uzQIXd2i3UVICRljYGipJOsj9aSSQXvzS/YcD6L0yCc9w6R2Z9jPEIINhOy7xuXhoCykjx+yXlc+/S8g3sqPz/e2JKOecWE7yHG2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfkQlAXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfkQlAXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3E1C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779344433;
	bh=3LO0wA3fy1AkBdO3A5quT6ZBWmT9bnNDXzWANiuvf4I=;
	h=To:Subject:From:Date:From;
	b=sfkQlAXiZvIXvHnPlV6EzeUhxbIOu4adKEK7PLxtNLrE+uq879DsavlZRXKCyw6FM
	 OCoZyAhUzJDPD5D3yrRu4R+TRqGOBuxFEvi7OlJr7XwyPr3C+tPkwM0WH++C75dCm2
	 6KAO3XaVw0OCk9D2cU9h1A+OMHuTLNGI4dv2CeHC7Kic5wE4jFP8ve1tBz1tOUfWw6
	 u7wcgyePSOUf9bqRxuV0h9rL1Blh/i0j0bzAW4XlwM2Lyt75fG0LE9OZ+lImTMj6sq
	 TUPKBzsl8IkrwNEMw3FTY8JIFqLQlsNv5wquq+nZRR0cENa8is4+X1+4ibMqhCEmWh
	 yaBKk/x3t2K5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1478CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934443369.20888.7963571820621639302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41dc1d4a06f98adaeb82ce2f6eba806e3ea31f9ee0e72a676f074acd728d1629
Date: Thu, 21 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779344433
