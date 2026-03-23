Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDCE39A803
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774267494; cv=none; b=oSurNo5h9huKs39MPTWtvwQ5hSHAjtmlYYebHeexEYSVnNB5FVsFuHQCpYe8JaplgYVzThWYF8uoxoTORJ1gygyqLBhyNUcC+OPuDuoZtLLOCPctXHq/x/j0NnD5t7j/Tb6qs+VyEnF0sBsdPG2A61SHayD4fLbPqZo6jGklq7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774267494; c=relaxed/simple;
	bh=HUouE4IMSB5jzbLaQxdwVUSbm1Ceqfn9V+Q+ItLLXAE=;
	h=To:Subject:From:Message-Id:Date; b=DVT3J1VmvaTAqzRV2GcR3cBK/1bprpViHIysUqRdevHedhwwFOf5muXfo8KpHZVI3VhljyBag1aHRaVSsQ0h11riTBnL/M1sv6MpzOb0RzFlQABB38KymZx7SLkg5jvCWl7K3hmGjo++eO5fxgIL3NZ7G9j0KOg7g4dEKn+jIII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCHGQayZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCHGQayZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F83CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774267493;
	bh=HUouE4IMSB5jzbLaQxdwVUSbm1Ceqfn9V+Q+ItLLXAE=;
	h=To:Subject:From:Date:From;
	b=gCHGQayZx+Yew0bPsi3nOqYBreGLB+78lfUQNzMEvfquBJ+RNa9IrwJcLtnMbiYLe
	 LA8d7qEMigyq6Pena7SHm+DNh9GU2vt5GCaQygHkRJsbfhSYmlAek0swBjBl4N5qhW
	 88Z7F9rzTsQE3IqP7d8g8FLPJzXwN0EbIVo+es6pFoDDFTjnl3e4xPxwkqsKmV7slx
	 eF9jjpQE8hpVHKD59qjXPFICEZ6P75t9jLolGB71JWGGxrEt97CCfMZ1dr+/5LvSs0
	 Q5YJzDa9EnVE3ioVe6qndFqxkiuSorR5Bl7taWfmd5lq2j3P6MUMpZsjYvuSSQBLO6
	 ZLyMG3Wdkkncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF3EC01D4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426749358.11831.10897144025736264718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605eda5cb52364c01271f484376b8b0d30d545d7d23e9aee5a11a439fba92ce3
Date: Mon, 23 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774267493
