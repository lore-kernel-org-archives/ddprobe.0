Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9384523782
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788866435; cv=none; b=ZnVLg+XIFQ3HK3EY/rZhiLhN8nwBJaW6x87KpJo9Aopewe6BO+dkrY1ibH52Y7AiYm/7wl1JZpKOTBizIcl+FGL5YYh37FM6pDObvOYDTcIo3rMZgV1D8cmvHA/uAjpX+w0gP7+DHjfJ09sed3/k6v7OXYjBHySsmyx3sz+5NyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788866435; c=relaxed/simple;
	bh=3c2NSEEllDFSMH1wH3nhyu/Hc93JGwodXJXHi6IGRjs=;
	h=To:Subject:From:Message-Id:Date; b=LImkf9FlgERdLMzISJwmtkEbYVPEjTOsgdZ73bLrovVGTvsQXyhEUqEcUr6S55Ub+oIO6u0jFBP3CPhBJFJgBvfg6AKYJ66wAjkczY+fQ27jgStV1k3GVaPYVCATGzFffp8KunGSJZsZl/YOnE1uTu0gp5vD0zfj+Etk0+VCugg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKBsEXm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKBsEXm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6D5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788866433;
	bh=3c2NSEEllDFSMH1wH3nhyu/Hc93JGwodXJXHi6IGRjs=;
	h=To:Subject:From:Date:From;
	b=iKBsEXm+RJl7sDRiOlveSF+fHI2CsddiF0Oz20klOWnrtIbnpcEQweCajkQki501L
	 ivIyeG2Brghi0wNJ0WsyVcnJV72XnrZn0Q8Oy/lwxcg2qdOeyZUnYZcfPLWgPllNI4
	 SHvQ1itvHMQGR7mXXzWRlmAEA/235pqgyjrrwfbvBILIGUyd24xTMpf8MzBtRnmVDj
	 Rbsb63OW9M6QBVMbxrBMnkdKssaUaLuN08jkFcjQjj9dosMLYs7vhpVwHVOvbQhB6B
	 seRx/ygJwsfc8kLgk2hZVfEfvOYn8WqX/ZsrBe+kDpQFgw+8G5GIqBa7oeYSzh+Mme
	 qn39ZAa8VGRqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF9C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886643369.5670.13576816288391974018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71d1d34f7d1e4f875447a4cb8c131d9f8e227e7ee8f493871295a4257ad1622
Date: Tue, 08 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788866433
