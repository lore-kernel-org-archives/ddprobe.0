Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4831C84D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767189234; cv=none; b=lBgpS3GtSeTY8OuAmr7Eu1RMZfGNnZi8dznShW2GmE+R7Wq/YIdvjZ50tohy3ON1bdQ1or6HTMyCHKeRN8+iea4wXWsR60V/mcXDT78Ie1ZNOrL0CzRadwlRq7Xj+UFUVWf8jJaCIM+LeuolbUAmteWLazWPRfvU3lL0lGOicE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767189234; c=relaxed/simple;
	bh=hI+OMhrsyy++Sc1B0y4Z7hi9NPg3rAPKPBKbNPh3W/o=;
	h=To:Subject:From:Message-Id:Date; b=RGSz7fwFS5n0C67s544/Yut2FPsKsmGas9Zhdgda7liBQPBnjhau+uNb1uQA3kMLMFL2qg7G9sSVWRnqsgkAM6Bg+Nmgdq/Gv0MvsaDb/XxuUbQZKyjMDRWNCaOGnxXgkG7Itw6yYFovMz+z19s8y4v72A1MH7pPUSdLGxyYNX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVJjT9+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVJjT9+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5930C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767189233;
	bh=hI+OMhrsyy++Sc1B0y4Z7hi9NPg3rAPKPBKbNPh3W/o=;
	h=To:Subject:From:Date:From;
	b=rVJjT9+xTj8Edxg3TmAx7jQAZcA4mAAyVPXlNOJ4+6GZN+ibz/xv2YFM/veRlybVV
	 OvEg5ZoF2DylX+5NFvrFaQLzGuCHXzdYezYCoIV3ZQVRF1VdFeVcXGa2inIQUwlf+e
	 NmDb4xVHOL1ajsXbiiC+IqUe9lqeO2gLMSI8GQCcqciW2Wpg5Se1vATtiep3y9yf7u
	 jn/MNtzoGST2CyLbIelZazNh9pJaaENhMVDWg5ftqB5JGcBOZL0usuTgSW0jnIO19o
	 195p4dJW0dKe6Be/opIo/YXlkckyaXUniTyWlSTkOL8LCuLMR+ZKUq6QVmx7rYc5fg
	 wy4WFWBTne0Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95273EE642F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718923357.9539.12185637463381001194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f672ea4b2064e4d57ba14ddd2191027733f3228ed0eaaad5a301ce511f30df81
Date: Wed, 31 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767189233
