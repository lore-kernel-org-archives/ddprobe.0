Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D8619D065
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733787954; cv=none; b=nB5sa5LHEY66D+30fO+eRLFy65VSWjsYH5JXQH05jgY/3oLUk8AKjC1D9P2/bLT212iyDixUueECWIdQbnvnEiDAfgy0pN+kTT50NzwhjyXkCh0S00ryOWYtEbJil3ONwjVWdQ/OlkFJBh4Ic501uBUKyiq03I3sPKybWRWMcZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733787954; c=relaxed/simple;
	bh=ZSpSSTo3PYekqFmFSu+S2zLmLEWSFK8u+ecLP14HHDY=;
	h=To:Subject:From:Message-Id:Date; b=LRiQgBj2ay8u0OnTSrszrjY0KUnWJoDIL+5hEd3DoUdYNNL2pNl+ITUvXy4ZD1hq2DE3NOiXfN6RB48360rPjcIuA2RX6y9w2NK+db6WuW+YmCNAyM3Tz55bXz8OnvnS+vTpqSVzxM5SjjqRbYpIJUEysTmrRoOO6ZO3rPo1zb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAHAzBtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAHAzBtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8476C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733787953;
	bh=ZSpSSTo3PYekqFmFSu+S2zLmLEWSFK8u+ecLP14HHDY=;
	h=To:Subject:From:Date:From;
	b=iAHAzBtpQ90lOMfD081i+9BPh59xFQf7/+4A0LD2IrHEeHK3bWyMudeYUo3XlL+sM
	 A7nZdwXCaCTAGbDk1QYB655iwPPWz1aN7BstCD0emPtzwJZzWQRGhEUVFn0dgi62Hv
	 HYUCN6E+dsqPeYV3n0NdfoSwBA+c+5mb0mDKDxmjHMU/JzyDU/LAWUAMr4nUBApWS5
	 qKnk5xEcJWRGVxJ6ZgQJFumAVRxvypVwzWXSAr7E/jxbYtlu6EjU3BNhf1o1SAx0Hx
	 bxJ2jJcFQefLe+mXF/Lb9nEPWk8m8RuVwpf1XhrnVal04Lc1T+U0HmZsR4TuZizvP2
	 4peOVGIHrPnjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141BE7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173378795358.18775.17924899296459730098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bec0476cf4fbf66a540b7ea533a6e8f8c5e70141fc77a70caddd07eeb47494d
Date: Mon, 09 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733787953
