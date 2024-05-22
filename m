Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5542B2E419
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 12:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716379403; cv=none; b=EBv1Vmbo50ZfcSdl70Jrv35exDGp6hBTE/lj3GvZsGrvwoyeQAYvAHkp4yZO2a6On7Wt7sxBdDAAoUWvLEivxMJBa2PkDPqx+XhdnhnZa2/auF4g1TFx4s9KGbNJ9NJdd6kUsoysgnMmxCI6h6yJA9h/U6OrgUWZaorqV++K1l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716379403; c=relaxed/simple;
	bh=ooHCFVWY8mFG1WE14ho5+oiMVzV1Z8PlyP/6IUU6P9g=;
	h=To:Subject:From:Message-Id:Date; b=lSeK1/54zWADlphhynPOPwMWIQfyflAbmbB8XeYz4MeufEciYI8M8iiCCdi2dYI6nBSyfcY/JaxUCgMrT/qLXTzGipovZsHJLqWUQTNRqgcQcUXxcP05T+OKH1gL3FDZRfTZdPQ93oGuKdUslpRNPDLnh2/WrbJofGAk61pSSOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m43oJ5O9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m43oJ5O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE8CC32789
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 12:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716379402;
	bh=ooHCFVWY8mFG1WE14ho5+oiMVzV1Z8PlyP/6IUU6P9g=;
	h=To:Subject:From:Date:From;
	b=m43oJ5O9vJk4+DMroxIarWSDs1BGkmjNULFgIK6bsGB/+vE3Z3W9u4RAal+JonQlU
	 BzhabM4agYpOiDTym18iFYifvhgNRmvM4ILGPgw7vWDmXLlF4++lm8w/OnAPy4qX8X
	 NLk4T5wF6OtyAAM8isPw/DXwShWW5BM+82sqVqUlPpByS6YlKQzrrF3AwD36cACG3P
	 fzInnISrUO175q8oDpMifF+TBqcqzRTiAAhHgfuyBJ7TCriduDNpkritTIaPN+xMWF
	 rzxL3Fbu3Qeyj8cFYv9vydfWk9rrUDD2atq1t04G4DSk9L2vDDVPxU744mO+gfDU5Y
	 YSLGIN1VmyDnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4AAC25B7A
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 12:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171637940283.12605.9662552761926039056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feda28543c8b5c5033eb652e11b4de608c79963c1cffb1e7553cf971ac8ad2b8
Date: Wed, 22 May 2024 12:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716379402
