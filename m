Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D9D2AEE4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784593114; cv=none; b=GsjhTXO+bKGdEZLGyYAUpy3cz9dQYZf7f3MBJ6caQPxyczDZTGaB/pLrVRi1aLu1ZYTsVIPlFkB8Sv/ho/mA4v9nOEKZdQStbklAOIDmWe/z1Fxf5bZuGnteDFd6wcntOY00yrKw36pqbwVRtWjNPDNo6apYLiL4WlXQ0W/LxgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784593114; c=relaxed/simple;
	bh=1s8r3l62Pb3xRDaZR5tdQn4blk8bBxIJf90HLm5YrIA=;
	h=To:Subject:From:Message-Id:Date; b=tyFb3+WGMV+gqmj9Z9IUsFYaJ8ika9HM7pPoIx1sVJhoG1fuJ4Q43mbYNBHcPG9vaHUhWKC+nNZvcCklVfgNYVllTlNQRdkbDE/+z4J7HiUcS6/QTkyFTqL8PZQ3hF0aoSgUBqgqasZ4oAg35pSk1jL2JY9nqgbI4gwLmzQ6s1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqTbn4lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqTbn4lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E44C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784593113;
	bh=1s8r3l62Pb3xRDaZR5tdQn4blk8bBxIJf90HLm5YrIA=;
	h=To:Subject:From:Date:From;
	b=rqTbn4lf6EWqLSZebiJrQsQEjIxlwns1yRH9P/uduis2478xBGGfs/HsxiqlOVc4W
	 DuaJhYquPKpCvHMCKgNhBafWmcywb7JSzcd3NEl0blnDIheXf3Hr74W+LeLZBzDgEp
	 fBuLFQQKbeE7crsalXfcnVjgAzfqFqJdGSucGEEVuB8s+8+32k1PUsfQznmTqyLjSI
	 vmo4r/Ha45LrA6fbad2RCYuFq6H576cUkNhhP7ExBqXNvvE7yifWH0QyhyNf+GAMm8
	 IbZ96SuHjfUk6ByP6cXlONZPniN7P/E1mqSORqxu1UL/TBRd5UTJJmndl6ad2xvQD6
	 eRZQ5lTUABEQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FF6C44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459311368.17431.17115795957592067315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f8320cad30017e7282bbd1d236432531ddf3263a5095b86d292a796cfd3d62
Date: Tue, 21 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784593113
