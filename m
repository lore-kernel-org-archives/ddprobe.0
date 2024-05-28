Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C058F6B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716857063; cv=none; b=XhbXEewmvZnIAMiZpeA2m+KRulcAMyb46G54BiCTXcTwY8GhVcBhIqrB1yv0wWM1HNFhUc1iLI8noPL6E7XI1ilm+ZNX1O3s0vQ+1MgbB8diU8jW4TObT1Z3kFfd5s0a8qoibK2BUVxEWvE0HkMyyzTUUsXCd1YyDRI0bub7fMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716857063; c=relaxed/simple;
	bh=i22iLypQMEfix80jdITHz3i/fqfWp++H9IagKSwSen4=;
	h=To:Subject:From:Message-Id:Date; b=lzbpzaZTuAyc8qQMueNh6/gK2Z33wkXhtnvSIT9cXgjD1WzYl3gGBdjY7a+GGta7uIMhROX2/Gpdng/+BuJ7HJwPqCnJigso5FUc1TCsG2AumZSrLXylZsbZXAWpR0XbrRrFCUAaF8J9rLDBIjBKYDAkE3t6KppWjh9/G4RYzzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNfVq5l9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNfVq5l9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6774C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716857062;
	bh=i22iLypQMEfix80jdITHz3i/fqfWp++H9IagKSwSen4=;
	h=To:Subject:From:Date:From;
	b=qNfVq5l9pXafifH1VSEYmU8VW8yWhTQp5clSiTCi+QYYPwy7/Jf7WdTqU0AKU+mAC
	 J+0EfGZrPoiRmGA8hHMDszdxZ7udNbbH/q9TENl8wW4Hubhv4JRo4AdhkRhK+lNJWN
	 aifw+/t0d8YfWVMW04o0vXGPkI1M7tbmFgvFE9wMEfI3OzuziDZ0RjlAjD84st70kL
	 pRgV/OKch1WRSxAV7tJOTw/K9d75GFVZrsXTa9VD5c+wpf8An4TPWd0ioNvEIny7+9
	 0fkn7SOzVlEE7By1d4tVDoV28zd7cN//0aPAf6n79EwdJsWa1CE6XAclxi91LGoKeM
	 wpTqPSPnuDB7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF432C25B74
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685706277.23833.3062266401330491196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638de13467e12a2c52b589636ca89639e53f11b5e5259b83986d81e77778081d
Date: Tue, 28 May 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716857062
