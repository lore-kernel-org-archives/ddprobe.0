Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2211E15687D
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780177474; cv=none; b=FaoW/slJFMjRjYqthtienjUhmv2GVeLUqo+S3RUGbDJTlMFbwIZD7sz7gX9NtGHfG2UZOnhX+SJThpqQxxuBBrUA9+qm+b5/3jq4MUNCsTMIMHciV7LgVwzV5QsUFWk3+f9MZhMst+FLaBcWJXYoR8Mcxu3WACn8tIAdxFKI6uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780177474; c=relaxed/simple;
	bh=6an4rVpEAdv99gmoAadwtc81mLbN9lABbNiW3rXoPC4=;
	h=To:Subject:From:Message-Id:Date; b=Ck+AfPbLn8Y/Q0BbWIpMJYCQSA8OZfpgyIQvAzXHve8tAKgCXB+2g+wEfx8M4cxdGLMeK1hHCNy4Gg/1+hjnop11k5UmhvvOcs8WXKjJydbzeKVXzkU2ytjxDfKZP68wb8dU2fKBNs4+gpE8ioRjhVx8WNl7sxz3nQe+NqaAwAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsy6BQ1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsy6BQ1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C35C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780177473;
	bh=6an4rVpEAdv99gmoAadwtc81mLbN9lABbNiW3rXoPC4=;
	h=To:Subject:From:Date:From;
	b=bsy6BQ1bWtFZ73x5AN5Jo4HFgwPB6mOeKIil5e4GCW7T284/akYEaX7rnPuPZApve
	 XUAT4IzdTtehHHj3T4BHDiHdaAb0LX/t9vX9xLDgGIsKRkdkAliavjdyAgJMgRfl9y
	 vv6lhffRnyaIu99wyKoWQi5om2OnqRCWbVeaoCKqNGoqrdL6ZOgEQCvWBtJtQydgTb
	 O7oTBzRfcZnDDg0aE26cD1kTlqpTiY/2FHkOgjGFs5eKSSGJn24oly7ElX//6eTaP/
	 35RHootS3EK9n0XsmJj9YW0pd612koZFckNMO9a9ZQEo0oprVPEygDD15s3fSBKHJo
	 kQCJB1jJAHgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4C8CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017747368.17948.7720361388777692470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a9c777061f2af5b2bdf3e42d8baae6a4383f3b31cf92771ab3378747553d5a
Date: Sat, 30 May 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780177473
