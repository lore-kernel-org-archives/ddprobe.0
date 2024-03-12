Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154F045BFF
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710284297; cv=none; b=Ti+wgFdw+jQsZORtj7VkzapqYR3viinqCwBEwXnLW1vRv3h3rXWZ8ZwQW4FhxgYjWk2dYh1tOHkSjCEWYQcYxxxZJks05Hmnhqvw670deiTURCK1UUXqOENaOjZlRfeUa8Bxgh86HWCeooHKLDyk8AiFVsqTOCRvZg1NoNv/Les=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710284297; c=relaxed/simple;
	bh=tGecOHR3p/AjrWt9UDw4JbHDnN2nhMpKYeD3ZX1eMHw=;
	h=To:Subject:From:Message-Id:Date; b=RehMpnGsaWPVrgmcwyaHBe0BM6xExlRJXKV1atSCAV0FMIC+HANRam6WvuXA7GyR8pwjacEqtr4VAZFSspwXU8AK5FvrYHeM2fM2E8s8wtKqgaPS5qly/Aaq/fpB9q8Ed2eypUMQ6Tt4fCJ7w9wC7yx20YC7Ezgd/PZpTar9cj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7CuPReZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7CuPReZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83F5CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710284296;
	bh=tGecOHR3p/AjrWt9UDw4JbHDnN2nhMpKYeD3ZX1eMHw=;
	h=To:Subject:From:Date:From;
	b=j7CuPReZ7BGe5oU3WIyRYTOYbA2eTHJ3Hn7boPjCjErk2uoTXtjQtKA02FWTqFF+L
	 Gd0DddU33DNe8hZJ2Wr2cFOLVqGnBRvim2XxcNv6NnjmAiqv6Nsn3hMQXtEWxwIX5h
	 43gsVvEkt1CEfFbM/iDn/rnpyfxx4d92OyuEw+O3mBFMnDbXEqXuARqKN7upAVYxhv
	 im2/BhJz7P+oUCLE6I7U9FVxQclKk7IV2BvUUXBWwv6MAcAS3kBUaIKGnDOPARtRET
	 ZtqiCgW2GCyXFRDYvAbWX+xenjsm9ut4myEQJBXsUqt6okQlrNOhWfx25DpHO1hHQJ
	 1xfsflABNWWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6692FC54E5D
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171028429639.11944.5899555395120929066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c7130c3199908418752b780c5bac9f27c0b3bb7fe7180b32f7b40096a4b82e
Date: Tue, 12 Mar 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710284296
