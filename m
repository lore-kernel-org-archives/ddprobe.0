Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F98DF4D
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717847243; cv=none; b=PlWkmqNzd8ql2FNdrTYYmN/FiI27kJjsJTQ51zxfaHiIjaolp05O/lVAAjwjSq4kXn0RyqXyHlvrI6Mx+fIAGHoQNVGGf3X84z3rOCcofW3Tr0pLdk9bR3mR6C/r/zzJ0Mf9JnWess6i3S3jV66CkSfC8k9rzgYT7dF8eRoRs8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717847243; c=relaxed/simple;
	bh=5D/vKvER3EVQVxxzwuibTZZGnAjvfOp0zAIk+xFgtfY=;
	h=To:Subject:From:Message-Id:Date; b=Z4NFVwAiNJPhq365eK5D/mFRwrKKXMLqptkDC7lqxQqDSyMtYdZv7KRMmLNHG09B+J1/610KUkc8b4VmHeAPb3m0c7RdxQdbY1wNHWEOOhJqhXi/eEmBn3WzTnawnfNENcYG6ieJo4x9tadJ+Z9t4bogJz9DXgfNjsUa78wPQpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9vDf3w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9vDf3w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE499C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717847242;
	bh=5D/vKvER3EVQVxxzwuibTZZGnAjvfOp0zAIk+xFgtfY=;
	h=To:Subject:From:Date:From;
	b=G9vDf3w5dBz3pBJZ7JdXc/4D5lMnrb54rV6u8XgxWZaQG4SZ2VPx04Lv1QYsqaOpW
	 /8SC5gSr1fwvTt6oiuKi0x9zlfBzq+xDSePoIojJZVlfeY7zvCSuyRfKSm0oVNgIDi
	 aRhTF12ivFxVxHCegtlFJrePvAJr6k89t/fl9kSQXqKxvj9zWIKQ6OmD9v+7f7tLkl
	 U4tARQwERufo6WGN/Ce3tY8+6O7XsLybSTyDZxwU7lMMn+eb4hEX7EUxBV2+qnUgIt
	 OwQUfr2YOCchcMFhRNuUZupyiGXFA/WsNmZXGAKfSJv1yVrJghwFJXZjvk7hdJ6Gi4
	 a9on6z6Qn+dEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA1CC27C55
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 11:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171784724276.27489.13109837028128990735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8cc076a4a9e18667f4963cfe15b8e3edf40fe5fee4ac73dcde778242e413aa7
Date: Sat, 08 Jun 2024 11:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717847242
