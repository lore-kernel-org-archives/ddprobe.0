Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEEB4D599
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736976354; cv=none; b=byYDhRTTFqqpUpc6sqG7WhN+VrM3jUmG1v+Gte52i5nsgXcu0ZZDvRXesqEzQ46Knee+PS3PuDnZJXaYkqTWwUZeB7/4YyOx4HKnjMgLRiGJbtqO6fP53nb8fqs1Az9SN9p7d9qVyhRYAScm1X5FOtQXWUe/zrtp9wrGYUUAeTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736976354; c=relaxed/simple;
	bh=4XGI7ovcY4bcW5USqOaRFwwRAnmwxh3m1Gd8YSdZ56k=;
	h=To:Subject:From:Message-Id:Date; b=HxEzpDaTdq/dHKCEzZHsakOO1e1+fuEKloM5+uf/4zf+dzbWqO7FRdLmNYqZ303QSO+SOVpJzSAzXpBxqS+R20FOEdlonrbzWX/ehPmOmLtfPy8WIZT2fqf3XZfGxEsrPyu3MctSERi5SdiN7CMuVN/HlQtO5F3AI49slW1wgHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq240aq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq240aq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF8EC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736976353;
	bh=4XGI7ovcY4bcW5USqOaRFwwRAnmwxh3m1Gd8YSdZ56k=;
	h=To:Subject:From:Date:From;
	b=Oq240aq4OW+NMDHnWyRAep/SvN+0noGaIvpVgwiXZC3OfFJ09w9rK95Ipd6hUVHTk
	 tKJIu5beCXdje4NqrYFl44O5IG/P2ZE+lUxTXa6wCRUt+Ms+lrBIHel4kR+VlqW2GO
	 Mwf3zzm04yn3e7lsXyuF614W0vbS09O0RkSw32thPer6/+9pCeIYDmXQ5OFzIIvmmz
	 ESmrUuUJoeWyaXCVpY7s54tVd2gKvLBhNbPQUMWnrpDke/k379bBL53QdhjUidI2Gc
	 mGhKM327Z8Y51LasMhfcwXlvpj9ohyNcscYmtUbQ9QA6JpUXUsQnEv3zKHgsXCXnxN
	 6WoFOJsARhbqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D84C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697635361.5096.13640083656399382863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b18745b852692a1d5fc8758d86eae64bfe5aa5945ca6ae16f9c902ac8a1b3a
Date: Wed, 15 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736976353
