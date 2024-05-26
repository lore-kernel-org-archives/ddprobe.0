Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7184C633
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716684863; cv=none; b=t4P7ecBtZSi7ICCbWWWZO18kEqEb0A/pyrqyppLRdOb92XKcoH6MjhOJsiF6O/VIdm3uM4tVUuP/y+Nb0HM0ljC9nllRpXPHyJetd1zjCCnjzk+MLo3UjO6T5k7w3SeuepUv4HD6zQqc++xq/LsXFQ18tdY7N/ClTrsbIUJCGP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716684863; c=relaxed/simple;
	bh=+Bk6EJPeQx3OYF2pwmPDfTBuA0W9WoH56rx5aAebP54=;
	h=To:Subject:From:Message-Id:Date; b=M4WPDzzeVB0FUP5RTb0NT33QcLil7hEbq/HsSo+quR8GtrMtees22R8ZKxyK3iAS1VKHxQKOHuBzWI4PAT1KI6pysHgzUFCSQMkRN5T0aJP/uP9XHOLyR4cp3Y4OLLlq2j6+dWslMU6FwVWUIHZ4pa9X1+lIbOpIwDgtzKcv85o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWqPiIlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWqPiIlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60BAC2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716684862;
	bh=+Bk6EJPeQx3OYF2pwmPDfTBuA0W9WoH56rx5aAebP54=;
	h=To:Subject:From:Date:From;
	b=sWqPiIlQPfJjchf2x7Su/pY6fN3rARU3e6/RGPxZODxLXQuj8TUqBE9Kv+L9xzEwB
	 N1mjdWIVqXoF3AWAwOsfU6NUIbldV5q6se14qdOdijSycC2ysBZLP4t6hZsFIeopxP
	 sprRaSihZjIpMlFdMLBOdV19i+OVRsBBc3k0zvz9CN8/sEA+plpS4R9ong2d7QiklK
	 +r91973+i1+MtCiXiwuF8YyHbTkpO8vpK9EnNxzTZiLh+GXgyk2Qb9vHRcmtkCI/h5
	 zDTC75xSfVT+VssF2Kb04L0vtzRlsAIuOmZdnB33mXJ3f68Y1bX+2fxGq4HWNO1oz8
	 V59v2WePA8yDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE907C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 00:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668486276.1557.11533231417621193365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4114a7be818268797fff14ebde399976e542e832533773aefe88a9144819852d
Date: Sun, 26 May 2024 00:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716684862
