Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1003F2FB97B
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762021194; cv=none; b=CzEuJoCgGI5zkWQzvwPS3HLnZTgkCohRvaOcU0n6deneV97MsZCckmLrAGkF2j7hLbcnq8BP3dlYzfJ40m/9i1vnF0mR9B9WJtgGN1WFsmyfT7DuuBLICdrd7di37GT3f56of8l17VuhF9iR1xaJf2FI7kMtVvNzh0DvH3KTvpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762021194; c=relaxed/simple;
	bh=pPplj5enccqI8F8r9hu6lrPzGVODEOO/3kDGEE2Pu/g=;
	h=To:Subject:From:Message-Id:Date; b=l5EAYEi3H9qm5tOiZFlQ7cJW/3AuRpZ7356t2caBUCzo7ceOJNVfDawnklJ5b7ina/Z28zZSOQX0dxeeerpJbpUUZHH7uWeZgNJhIgl3rnRmNznD3uMrM0UFwVYURIzrnKY5AUKd7T7Qoi8aE7WnkoUscLZ6mPgeTg+X0w9iyQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMtzz+eA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMtzz+eA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422BC4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762021193;
	bh=pPplj5enccqI8F8r9hu6lrPzGVODEOO/3kDGEE2Pu/g=;
	h=To:Subject:From:Date:From;
	b=AMtzz+eAcMTyjqhgCNFjkf7ehsXVN3Y4yLS5PvjgGOGHpqe7ZQ2Q1oNCNbAwuBdhy
	 vBeyuphVRBVSuwYJ47AeCRm8vhb3LuodpjVQ5Wpz62yMKsXXVk1bklybIUM02l57DJ
	 u4xt8Bohz+wMU4FgZUr3r9OJ091fs1Lmh5+27Oz3x/Cd/vBhzGPbwIWlLxc4FFnx7V
	 GxqQvU7OQDcLrf38qpT/YkqrHJggzN5Eb0/5dg6KE7ccFVf6RJSPfFUJn3MJ4XV7WW
	 v/AxTHjjdZY1nZMsmCbOgZGHCc5clbCFmrLrK3az5iFfUXY28zQbsh9XI/dbEY1v48
	 5YRhiNIrLrqsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF75CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202119358.10639.1933134525636833588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b21f4e0759a1a1a02ba6651c276ccc044f1dc311eb50ec4c3fcd977b81a1543
Date: Sat, 01 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762021193
