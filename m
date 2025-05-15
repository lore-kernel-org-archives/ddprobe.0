Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3787D296705
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747291194; cv=none; b=jx2O+GAAvbm9nWnwzzFfu3bEvQyYFInjvKe6tzQKO/1zXswHlWtF8LbG7Vc7jVXSrNkuWQsHo1k/uXiV1NjoWHQeXlXMPvsAwevHYMxhhfM8v+2aUdj+w8tQCxzP4HFR0uWmfuha2nnjYyulT5JIDYOzrskk4FKJ04ADM7+eQ5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747291194; c=relaxed/simple;
	bh=fo5ii7WFqEV1LHsOhWsdXvK+4b189CnRT5LfvHktYfY=;
	h=To:Subject:From:Message-Id:Date; b=fzpYQ3gKPRrZbE6hFPiidhh8oBp7pMqIYgOg0jo8YHrQZdcYpPTd+JJq3jbhxnRMAZ7tmH5x0CT39aLB+dI9zWr3DsLp35AmpmIrfGUOeRNwBEeEJlpkA0oCzDu8qBUgsChEaD/FKkRBwife+rVKXK3iSFPo/MnqDvdh91Z0NLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccOc3Yzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccOc3Yzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA2EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747291193;
	bh=fo5ii7WFqEV1LHsOhWsdXvK+4b189CnRT5LfvHktYfY=;
	h=To:Subject:From:Date:From;
	b=ccOc3YzzSKPx0OYNZxRSwkkPgd3O/alCloqMQGq2mQIJq0YvJ7Rr8HfqjcV787YPd
	 w6XTeftjJmUrIIGLOleSNav8uDLsCsnBU/bBmMJOLdDUrELfCzqN0BzDs4oFNCCo6O
	 X/5ErzJS1HKjWmQN13dosxFtJ08Wat0yKBe0nMhkokfi5dcg3IWbFhsOidMaKMDsyT
	 VZiXOpkaC/lSGQ8GZwW/jOzJG4mZlqWYJxVXkhxb9AQSFSB1z386eIodyvKfWCZtQy
	 RT/R4fBdLQfn4yb3CHHRpU/w/RZHVO/jL0/7l1yCtj9X/12eRvnfNZQ/NrKOPbDbAw
	 94EdsXpkxuSVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB52C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174729119357.6878.14533210149412929915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b84a7b211b61405c3bf6eff4ad6ff24c8d6f6bb9e0b2cb458a53445dc112c8ed
Date: Thu, 15 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747291193
