Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101E11F5EA
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766641434; cv=none; b=tUvhuPT/xn+Mcai7CNIln0E/3ysmEUOg7d3Pz9tIV+xPytefeegYrlx6QfwM0Q49CppOAvo+OYBCO6s9q93LXDusc9B9aIhwsMDhnze++kpqmqSR4G9oF0CKtJ1KKfUw5PVKPfj+1rm1mcJERolampe89t0LfI1Kq8kL0E1VD/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766641434; c=relaxed/simple;
	bh=NnmfyCjqc6kS32sSGfwnBJB2dsuCCzbl9iFChOCgGN0=;
	h=To:Subject:From:Message-Id:Date; b=tdKR3OSjOs6SeQk/uUoKLJVDWJ7DdOn9XSmR6kolUm6BRd/p10Vi/0tIdEHHWC8BUhRE7aeEDOUWj24rWcLsItlRCOfPhM0UlxK8wj4VNhC4xrGeiXk0Rlyy8953YDLhVwAfh7z7rthib6DNSOTuA54EppW/SNyTmcNqxCPtJoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m09bC6bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m09bC6bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C89C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766641433;
	bh=NnmfyCjqc6kS32sSGfwnBJB2dsuCCzbl9iFChOCgGN0=;
	h=To:Subject:From:Date:From;
	b=m09bC6bh41/fz5jzW5n9ZobDJeSJ5L8VohvTHDGUrsQ77hkbhWmybRUYFoXjGL2zv
	 7VJ3jigk8K52hjHH2bSB+mUrEDig/ug3vmUpZ2x6sh/XgFeY36UvQM5aaYIjCPb3Mx
	 HBSdu3j3njdVqaXzA5IwVyr9FAM1QkS0+gj6ULHdv0dK4lfpljPbMJqq2n3lv+g8a4
	 W1fwpBxew0HX9I/Gc8XsMtxd0qvMLnYozNPtA7F1a/3VqHR66J8+WuLI0PpSw524KT
	 /CdkkWcs42eHdVFc1d2Q6piSlkABbTvqPBx2hBUgGAKLebrP+38Acw+iNX1qlLT7WS
	 OecYuLP7QW7DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB34E7AD41
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664143358.11815.7486391222183149418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc354acc292414a24002b7fbc271c8e20c90ab73a574d31dff1615437a073f55
Date: Thu, 25 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766641433
